<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Vehicle Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }
        .container {
            max-width: 600px;
            margin-top: 100px;
            background: #1e1e1e;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
            text-align: center;
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
        <h1 class="mb-4">Welcome to Vehicle Dashboard</h1>
        <a href="AddVehicle.jsp" class="btn btn-primary btn-custom">Add Vehicle</a>
        <a href="display-all-vehicles" class="btn btn-success btn-custom">Display All Vehicles</a>
    </div>
</body>
</html>
