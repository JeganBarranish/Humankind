<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="net.ems.utils.JDBCUtils" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Database Admin - Emergency Medical Services</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; }
        .table-container { background: white; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        .section-title { color: #2c3e50; font-weight: bold; margin-bottom: 20px; }
    </style>
</head>
<body>
    <div class="container mt-4">
        <h1 class="text-center mb-4">🗄️ Database Admin Panel</h1>
        
        <!-- Ambulance Drivers -->
        <div class="table-container p-4 mb-4">
            <h3 class="section-title">🚑 Ambulance Drivers (users)</h3>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Phone</th>
                            <th>DOB</th>
                            <th>Aadhar</th>
                            <th>DL No</th>
                            <th>Vehicle No</th>
                            <th>Vehicle Type</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        try (Connection conn = JDBCUtils.getConnection();
                             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users ORDER BY id DESC");
                             ResultSet rs = stmt.executeQuery()) {
                            
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("first_name") %></td>
                            <td><%= rs.getString("last_name") %></td>
                            <td><%= rs.getString("phone_no") %></td>
                            <td><%= rs.getDate("dob") %></td>
                            <td><%= rs.getString("aadhar_no") %></td>
                            <td><%= rs.getString("dl_no") %></td>
                            <td><%= rs.getString("vehicle_no") %></td>
                            <td><%= rs.getString("vehicle_type") %></td>
                        </tr>
                        <%
                            }
                        } catch (Exception e) {
                        %>
                        <tr><td colspan="9" class="text-danger">Error: <%= e.getMessage() %></td></tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Ambulance Bookings -->
        <div class="table-container p-4 mb-4">
            <h3 class="section-title">📋 Ambulance Bookings (avail)</h3>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Pickup Location</th>
                            <th>Drop Location</th>
                            <th>Vehicle Type</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        try (Connection conn = JDBCUtils.getConnection();
                             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM avail ORDER BY id DESC");
                             ResultSet rs = stmt.executeQuery()) {
                            
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("phone_no") %></td>
                            <td><%= rs.getString("pick_up") %></td>
                            <td><%= rs.getString("drop_loc") %></td>
                            <td><%= rs.getString("vehicle_type") %></td>
                        </tr>
                        <%
                            }
                        } catch (Exception e) {
                        %>
                        <tr><td colspan="6" class="text-danger">Error: <%= e.getMessage() %></td></tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Blood Donors -->
        <div class="table-container p-4 mb-4">
            <h3 class="section-title">🩸 Blood Donors (donor)</h3>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Gender</th>
                            <th>Age</th>
                            <th>DOB</th>
                            <th>Blood Group</th>
                            <th>Phone</th>
                            <th>State</th>
                            <th>City</th>
                            <th>AIDS</th>
                            <th>Cancer</th>
                            <th>Pierce</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        try (Connection conn = JDBCUtils.getConnection();
                             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM donor ORDER BY id DESC");
                             ResultSet rs = stmt.executeQuery()) {
                            
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("first_name") %></td>
                            <td><%= rs.getString("last_name") %></td>
                            <td><%= rs.getString("gender") %></td>
                            <td><%= rs.getString("age") %></td>
                            <td><%= rs.getDate("dob") %></td>
                            <td><%= rs.getString("blood_grp") %></td>
                            <td><%= rs.getString("phone_no") %></td>
                            <td><%= rs.getString("state") %></td>
                            <td><%= rs.getString("city") %></td>
                            <td><%= rs.getString("aids") %></td>
                            <td><%= rs.getString("cancer") %></td>
                            <td><%= rs.getString("pierce") %></td>
                        </tr>
                        <%
                            }
                        } catch (Exception e) {
                        %>
                        <tr><td colspan="13" class="text-danger">Error: <%= e.getMessage() %></td></tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Blood Recipients -->
        <div class="table-container p-4 mb-4">
            <h3 class="section-title">🏥 Blood Recipients (patient)</h3>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Gender</th>
                            <th>Age</th>
                            <th>DOB</th>
                            <th>Blood Group</th>
                            <th>Phone</th>
                            <th>State</th>
                            <th>City</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        try (Connection conn = JDBCUtils.getConnection();
                             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM patient ORDER BY id DESC");
                             ResultSet rs = stmt.executeQuery()) {
                            
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("first_name") %></td>
                            <td><%= rs.getString("last_name") %></td>
                            <td><%= rs.getString("gender") %></td>
                            <td><%= rs.getString("age") %></td>
                            <td><%= rs.getDate("dob") %></td>
                            <td><%= rs.getString("blood_grp") %></td>
                            <td><%= rs.getString("phone_no") %></td>
                            <td><%= rs.getString("state") %></td>
                            <td><%= rs.getString("city") %></td>
                        </tr>
                        <%
                            }
                        } catch (Exception e) {
                        %>
                        <tr><td colspan="10" class="text-danger">Error: <%= e.getMessage() %></td></tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Contact Requests -->
        <div class="table-container p-4 mb-4">
            <h3 class="section-title">📞 Contact Requests (contacts)</h3>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Contact</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        try (Connection conn = JDBCUtils.getConnection();
                             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM contacts ORDER BY id DESC");
                             ResultSet rs = stmt.executeQuery()) {
                            
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("contact") %></td>
                        </tr>
                        <%
                            }
                        } catch (Exception e) {
                        %>
                        <tr><td colspan="3" class="text-danger">Error: <%= e.getMessage() %></td></tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="text-center mb-4">
            <a href="<%= request.getContextPath() %>/" class="btn btn-primary">🏠 Back to Home</a>
            <button onclick="location.reload()" class="btn btn-success">🔄 Refresh Data</button>
        </div>
    </div>
</body>
</html>
