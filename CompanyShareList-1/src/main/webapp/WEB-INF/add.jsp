<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.example.demo.entity.Company"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding new company</title>
</head>
<body class="container">
<hr/>
<div class="row" align="center">
    <div class="col-6">
        <div class="card">
            <div class="card-header">Adding a company</div>
            <div class="card-body">
                <form:form action="/save" method="post">
                    <div class="form-group">
                        <label class="form-control-label" for="companyId">companyId</label>
                        <input type="text" class="form-control" id="companyId" placeholder="companyId" name="companyId"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="companyName">companyName</label>
                        <input type="text" class="form-control" id="companyName" placeholder="companyName" name="companyName"/>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="sharePrice">sharePrice</label>
                        <input type="text" class="form-control" id="sharePrice" placeholder="sharePrice" name="sharePrice"/>
                    </div>
                    <hr/>
                    <button type="submit" class="btn btn-primary">Add</button>
                </form:form>
            </div>
        </div>
        </div>
    </div>
</body>
</html>
