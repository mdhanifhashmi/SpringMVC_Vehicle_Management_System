<%@page import="com.jsp.spring.vms.entity.Vehicle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <% List<Vehicle> vehicles = (List) request.getAttribute("vehicleList"); %>
  
  <table border="">
    <tr>
       <th>VehicleId</th>
       <th>Model</th>
       <th>Brand</th>
       <th>Type</th>
       <th>Price</th>
       <th>Update</th>
       <th>Delete</th>
    </tr>
    <%for(Vehicle vehicle: vehicles){ %>
    <tr>
       <td><%=vehicle.getVehicleId()%></td>
       <td><%=vehicle.getModel()%></td>
       <td><%=vehicle.getBrand()%></td>
       <td><%=vehicle.getType()%></td>
       <td><%=vehicle.getPrice()%></td>
       <td><a href="find-vehicle-by-id?vehicleId=<%=vehicle.getVehicleId()%>">Update</a></td>
       <td><a href="delete-vehicle?vehicleId=<%=vehicle.getVehicleId() %>">Delete</a></td>
    </tr>
    <%}%>
  </table>
  
  <h1><a href="index.jsp">Go Back To DashBoard</a></h1>
</body>
</html>