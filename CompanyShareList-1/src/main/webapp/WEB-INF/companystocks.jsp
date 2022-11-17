<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="com.example.demo.entity.Company" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<h2>CompanySharelist</h2>

	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">
			<form action="/new-company" method="post">
				<div class="alert alert-info">
					<div class="d-flex justify-content-center align-items-center">
						<input name="companyName"/>&nbsp;
						<input name="sharePrice"/>&nbsp;
						<button class="btn btn-dark">Submit</button>
					</div>
				</div>
			</form>
	<table border="1">
	<tr>
		<th>ComanyId</th>
		<th>CompanyName</th>
		<th>SharePrice</th>
		<th>Actions</th>
	</tr>

		<c:forEach var="stock" items="${companystocks}">
			<tr ${Company}>
				<td>${stock.getCompanyId()}</td>
				<td>${stock.getCompanyName()}</td>
				<td>${stock.getSharePrice()}</td>
				<td><a href="delete-company?id=${stock.getCompanyId()}" class="btn btn-sm btn-danger">delete a company</a></td>
				
			</tr>
		</c:forEach>
	</table>

</body>
</body>
</html>