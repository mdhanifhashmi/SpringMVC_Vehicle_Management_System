<%@page import="com.jsp.spring.vms.entity.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update Vehicle</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }
        .container {
            max-width: 500px;
            margin-top: 100px;
            background: #1e1e1e;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
            text-align: center;
        }
        .form-control {
            margin-bottom: 15px;
            background: #2c2c2c;
            border: 1px solid #ffffff;
            color: #ffffff;
            padding: 10px;
            transition: all 0.3s ease-in-out;
        }
        .form-control::placeholder {
            color: #bbbbbb;
        }
        .form-control:hover, .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
            outline: none;
        }
        .btn-custom {
            width: 100%;
            margin-top: 10px;
            color: #ffffff;
            transition: all 0.3s ease-in-out;
        }
        .btn-custom:hover {
            transform: scale(1.05);
            box-shadow: 0 0 15px rgba(255, 255, 255, 0.2);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mb-4">Enter Updated Values</h1>
        <% Vehicle vehicle = (Vehicle) request.getAttribute("vehicleObject"); %>
        <form action="save-updated-vehicle" method="post">
            <input type="number" class="form-control" value="<%=vehicle.getVehicleId()%>" name="vehicleId" readonly>
            <input type="text" class="form-control" value="<%=vehicle.getModel()%>" name="model" required>
            <input type="text" class="form-control" value="<%=vehicle.getBrand()%>" name="brand" required>
            <input type="text" class="form-control" value="<%=vehicle.getType()%>" name="type" required>
            <input type="number" class="form-control" value="<%=vehicle.getPrice()%>" name="price" required>
            <input type="submit" class="btn btn-warning btn-custom" value="UPDATE">
        </form>
    </div>
</body>
</html>
