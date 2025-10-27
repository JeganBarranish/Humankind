#!/bin/bash

echo "🔄 Restarting Emergency Medical Services Project..."

# Step 1: Stop Tomcat
echo "⏹️  Stopping Tomcat..."
brew services stop tomcat

# Step 2: Clean up
echo "🧹 Cleaning up previous deployment..."
rm -rf /opt/homebrew/opt/tomcat/libexec/webapps/Emergency_Medical_Services
rm -f /opt/homebrew/opt/tomcat/libexec/webapps/Emergency_Medical_Services.war

# Step 3: Reset database (optional)
read -p "🗄️  Do you want to reset the database? (y/n): " reset_db
if [[ $reset_db == "y" || $reset_db == "Y" ]]; then
    echo "🔄 Resetting database..."
    mysql -u root -e "DROP DATABASE IF EXISTS demo;"
    mysql -u root -e "CREATE DATABASE demo;"
    mysql -u root demo < DataBase_Code.sql
    echo "✅ Database reset complete"
fi

# Step 4: Clean project
echo "🧹 Cleaning project build..."
cd Emergency_Medical_Services
rm -rf build/
rm -rf WebContent/WEB-INF/classes/
rm -f Emergency_Medical_Services.war

# Step 5: Rebuild
echo "🔨 Rebuilding project..."
mkdir -p build/classes
mkdir -p WebContent/WEB-INF/classes

# Compile in order
echo "📦 Compiling Java classes..."
javac -cp "WebContent/WEB-INF/lib/*" -d build/classes src/net/ems/utils/JDBCUtils.java
javac -cp "WebContent/WEB-INF/lib/*:build/classes" -d build/classes src/net/ems/model/*.java
javac -cp "WebContent/WEB-INF/lib/*:build/classes" -d build/classes src/net/ems/dao/*.java
javac -cp "WebContent/WEB-INF/lib/*:build/classes" -d build/classes src/net/ems/web/*.java
javac -cp "WebContent/WEB-INF/lib/*:build/classes" -d build/classes src/HumanKind.java

# Copy classes
cp -r build/classes/* WebContent/WEB-INF/classes/

# Step 6: Create WAR
echo "📦 Creating WAR file..."
jar -cf Emergency_Medical_Services.war -C WebContent .

# Step 7: Deploy
echo "🚀 Deploying to Tomcat..."
cp Emergency_Medical_Services.war /opt/homebrew/opt/tomcat/libexec/webapps/

# Step 8: Start Tomcat
echo "▶️  Starting Tomcat..."
brew services start tomcat

# Step 9: Wait and test
echo "⏳ Waiting for Tomcat to start..."
sleep 10

echo "🧪 Testing application..."
if curl -s -o /dev/null -w "%{http_code}" http://localhost:8080/Emergency_Medical_Services/ | grep -q "200"; then
    echo "✅ Application is running successfully!"
    echo "🌐 Opening browser..."
    open http://localhost:8080/Emergency_Medical_Services/
else
    echo "❌ Application failed to start. Check Tomcat logs."
fi

echo "🎉 Restart complete!"
