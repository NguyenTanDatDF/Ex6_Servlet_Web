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
    <h1 style="margin-bottom: 50px;">Your cart</h1>

    <table>
      <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th>Action</th>
      </tr>

      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <c:forEach var="item" items="${cart.items}">
        <tr>
          <td>
            <form class="qty_form" action="" method="post">
              <input type="hidden" name="productCode"
                     value="<c:out value='${item.product.code}'/>">
              <input class="input_textbox" type=text name="quantity"
                     value="<c:out value='${item.quantity}'/>" id="quantity">
              <input class="add_btn" type="submit" value="Update">
            </form>
          </td>
          <td><div class="mr_20px"><c:out value='${item.product.description}'/></div></td>
          <td><div class="mr_20px">${item.product.priceCurrencyFormat}</div></td>
          <td><div class="mr_20px">${item.totalCurrencyFormat}</div></td>
          <td>
            <form class="ml_20" action="" method="post">
              <input type="hidden" name="productCode"
                     value="<c:out value='${item.product.code}'/>">
              <input type="hidden" name="quantity"
                     value="0">
              <input class="add_btn" type="submit" value="Remove Item">
            </form>
          </td>
        </tr>
      </c:forEach>
    </table>

    <p class="mt_20"><b>To change the quantity</b>, enter the new quantity
      and click on the Update button.</p>

    <div class="mt_20 cont_form">
      <form action="" method="post" class="pad_top]">
        <input type="hidden" name="action" value="shop">
        <input class="add_btn" type="submit" value="Continue Shopping">
      </form>
      <div style="width: 50px"></div>
      <form action="" method="post">
        <input type="hidden" name="action" value="checkout">
        <input class="add_btn" type="submit" value="Checkout">
      </form>
    </div>
  </div>
</body>
</html>