<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation Page</title>
</head>
<body>

<c:forEach items="${personalinfo}" var="info">
${info.userName}&emsp;&emsp;&emsp;&emsp;${info.email}
</c:forEach>
<table width=50% border=1>
<caption>Ordered Item List:</caption>
    <c:forEach items="${orders}" var="row">
        <tr>
            <td>${row.itemName}</td>
            <td>${row.quantity}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>