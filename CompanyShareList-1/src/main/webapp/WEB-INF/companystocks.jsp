<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="com.example.demo.entity.Company" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Company Share List</title>
<style>
table{
border: double black}
</style>
</head>

<body  class="container">
	<div class="display-4"><h1 align="center">Company Share List</h1></div>

<h6 align="center"><a href="/add" class="btn btn-dark">Enlist a New Company</a></h6>

	<table class="table table-bordered" style="border: double black">
	<tr  >
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
				
				<td><a href="/editCompany?id=${stock.getCompanyId()}" class="btn btn-sm btn-danger" >Edit Share Price</a>
				<a href="/delete-company?id=${stock.getCompanyId()}" class="btn btn-sm btn-danger">Delete Company</a></td>
			</tr>
		</c:forEach>
	</table>
	
				

</body>
</body>
</html>