<%@page import="com.jsp.spring.vms.entity.Vehicle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Vehicle List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }
        .container {
            max-width: 900px;
            margin-top: 50px;
            background: #1e1e1e;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ffffff;
        }
        th {
            background: #2c2c2c;
        }
        a {
            text-decoration: none;
            color: #ffffff;
            transition: all 0.3s ease-in-out;
        }
        a:hover {
            color: #00bcd4;
            text-decoration: underline;
        }
        .btn-custom {
            padding: 5px 10px;
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
        }
        .btn-update:hover {
            background: #ffc107;
            color: #121212;
        }
        .btn-delete:hover {
            background: #dc3545;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mb-4">Vehicle List</h1>
        <% List<Vehicle> vehicles = (List) request.getAttribute("vehicleList"); %>
        <table class="table table-dark table-hover">
            <tr>
                <th>VehicleId</th>
                <th>Model</th>
                <th>Brand</th>
                <th>Type</th>
                <th>Price</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            <% for(Vehicle vehicle: vehicles) { %>
            <tr>
                <td><%= vehicle.getVehicleId() %></td>
                <td><%= vehicle.getModel() %></td>
                <td><%= vehicle.getBrand() %></td>
                <td><%= vehicle.getType() %></td>
                <td><%= vehicle.getPrice() %></td>
                <td><a href="find-vehicle-by-id?vehicleId=<%= vehicle.getVehicleId() %>" class="btn btn-warning btn-custom btn-update">Update</a></td>
                <td><a href="delete-vehicle?vehicleId=<%= vehicle.getVehicleId() %>" class="btn btn-danger btn-custom btn-delete">Delete</a></td>
            </tr>
            <% } %>
        </table>
        <div class="text-center mt-3">
            <a href="index.jsp" class="btn btn-primary">Go Back To Dashboard</a>
        </div>
    </div>
</body>
</html>
