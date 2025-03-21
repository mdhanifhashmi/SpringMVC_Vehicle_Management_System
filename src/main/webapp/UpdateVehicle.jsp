<%@page import="com.jsp.spring.vms.entity.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%Vehicle vehicle = (Vehicle) request.getAttribute("vehicleObject");%>
  <h1>Enter Updated Values:-</h1>
  <form action="save-updated-vehicle" method="post">
   <input type="number" value="<%=vehicle.getVehicleId()%>" name="vehicleId" readonly="readonly"> <br>
   <input type="text" value="<%=vehicle.getModel()%>" name="model"> <br>
   <input type="text" value="<%=vehicle.getBrand()%>" name="brand"> <br>
   <input type="text" value="<%=vehicle.getType()%>" name="type"> <br>
   <input type="number" value="<%=vehicle.getPrice()%>" name="price"> <br>
   <input type="submit" value="UPDATE">
  </form>
</body>
</html>