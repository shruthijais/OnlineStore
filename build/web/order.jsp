<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Page</title>
</head>
<body>
<form action="order" method="get">

Item Name : <input type="text" name="itemName"><br><br>
Quantity  : <input type="text" name="quantity"><br><br>

<h3>Ordered Items</h3>
<c:forEach items="${orders}" var="it">
Item <c:out value="${it.itemName}"/>
&emsp;&emsp;&emsp;&emsp;Quantity <c:out value="${it.quantity}"/>
</c:forEach>

<h3>List of Items</h3>
<ul>   
  <li>Chocolate</li>
  <li>Books</li>
  <li>Novels</li>
  <li>Laptop</li>
</ul>
<br><br>
<input type="submit" name="act" value="ADD TO CART"/>&emsp;&emsp;&emsp;&emsp;
<input type="submit" name="act" value="CHECKOUT"/>
</form>
</body>
</html>
