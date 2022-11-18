<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.example.demo.entity.Company"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>Editing</title>
<body>
	    
	<div align="center">
		        
		
		<form:form action="/save" method="post" modelAttribute="addCompany">                   
              <div class="row">
				<div class="col">
					<div class="form-group">

						<form:label path="companyId">CompanyId</form:label>

						 <form:input path="companyId" readonly="readonly" name="companyId" value = "${addCompany.companyId}" id="companyId" />
					</div>
				</div>
			</div>
              <div class="col">
					<div class="form-group">

						<form:label path="companyName">companyName</form:label>

						<form:input path="companyName" name="companyName" value = "${addCompany.companyName}" id="companyName" />
					</div>
				</div>
			<div class="row">

				<div class="col">
					<div class="form-group">

						<form:label path="sharePrice">sharePrice</form:label>

						<form:input path="sharePrice" name="sharePrice" value = "${addCompany.sharePrice}" id="sharePrice" />
					</div>
				</div>
			</div>

			<form:button type="submit" class="btn btn-primary">Submit</form:button>
		</form:form>

	</div>


</body>
</html>
