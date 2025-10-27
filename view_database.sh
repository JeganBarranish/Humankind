#!/bin/bash

echo "🗄️ Emergency Medical Services - Database Viewer"
echo "================================================"

while true; do
    echo ""
    echo "Choose an option:"
    echo "1. View Ambulance Drivers"
    echo "2. View Ambulance Bookings"
    echo "3. View Blood Donors"
    echo "4. View Blood Recipients"
    echo "5. View Contact Requests"
    echo "6. View All Data"
    echo "7. Count Records"
    echo "8. Exit"
    echo ""
    read -p "Enter your choice (1-8): " choice

    case $choice in
        1)
            echo "🚑 Ambulance Drivers:"
            mysql -u root -e "USE demo; SELECT * FROM users ORDER BY id DESC;"
            ;;
        2)
            echo "📋 Ambulance Bookings:"
            mysql -u root -e "USE demo; SELECT * FROM avail ORDER BY id DESC;"
            ;;
        3)
            echo "🩸 Blood Donors:"
            mysql -u root -e "USE demo; SELECT * FROM donor ORDER BY id DESC;"
            ;;
        4)
            echo "🏥 Blood Recipients:"
            mysql -u root -e "USE demo; SELECT * FROM patient ORDER BY id DESC;"
            ;;
        5)
            echo "📞 Contact Requests:"
            mysql -u root -e "USE demo; SELECT * FROM contacts ORDER BY id DESC;"
            ;;
        6)
            echo "📊 All Data:"
            mysql -u root -e "USE demo; 
            SELECT 'AMBULANCE DRIVERS' as table_name, COUNT(*) as count FROM users
            UNION ALL
            SELECT 'AMBULANCE BOOKINGS', COUNT(*) FROM avail
            UNION ALL
            SELECT 'BLOOD DONORS', COUNT(*) FROM donor
            UNION ALL
            SELECT 'BLOOD RECIPIENTS', COUNT(*) FROM patient
            UNION ALL
            SELECT 'CONTACT REQUESTS', COUNT(*) FROM contacts;"
            ;;
        7)
            echo "📈 Record Counts:"
            mysql -u root -e "USE demo; 
            SELECT 'AMBULANCE DRIVERS' as table_name, COUNT(*) as count FROM users
            UNION ALL
            SELECT 'AMBULANCE BOOKINGS', COUNT(*) FROM avail
            UNION ALL
            SELECT 'BLOOD DONORS', COUNT(*) FROM donor
            UNION ALL
            SELECT 'BLOOD RECIPIENTS', COUNT(*) FROM patient
            UNION ALL
            SELECT 'CONTACT REQUESTS', COUNT(*) FROM contacts;"
            ;;
        8)
            echo "👋 Goodbye!"
            exit 0
            ;;
        *)
            echo "❌ Invalid choice. Please try again."
            ;;
    esac
done
