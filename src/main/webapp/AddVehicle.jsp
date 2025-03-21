<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>Enter Vehicle Details:-</h1>
  <form action="add-vehicle" method="post">
   <input type="number" placeholder="Enter Vehicle Id" name="vehicleId"> <br>
   <input type="text"placeholder="Enter Model" name="model"> <br>
   <input type="text" placeholder="Enter Brand" name="brand"> <br>
   <input type="text" placeholder="Enter Type" name="type"> <br>
   <input type="number" placeholder="Enter Price" name="price"> <br>
   <input type="submit" value="ADD">
  </form>
</body>
</html>