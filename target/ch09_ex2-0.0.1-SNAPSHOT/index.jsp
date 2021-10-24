<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
    <div class="container">
        <h1 style="margin-bottom: 50px;">CD list</h1>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <table>
            <tr>
                <th class="product_detail">Description</th>
                <th class="right">Price</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td class="product_detail"><c:out value='${product.description}'/></td>
                    <td class="right">${product.priceCurrencyFormat}</td>
                    <td><form class="btn_container" action="cart" method="post">
                        <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                        <input class="add_btn" type="submit" value="Add To Cart">
                    </form></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>