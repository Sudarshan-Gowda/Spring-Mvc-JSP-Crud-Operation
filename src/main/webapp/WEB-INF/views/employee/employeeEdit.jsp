<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC with JSP Crud Example</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="icon"
	href="<c:url value="/resources/images/sudarshan-logo.png"/>" />
<link rel="shortcut icon"
	href="<c:url value="/resources/images/ico/favicon.ico"/>"
	type="image/x-icon">

<style type="text/css">
.page-title {
	font-family: 'Open Sans', sans-serif;
	font-style: normal;
	font-weight: 600;
	font-size: 24px;
	color: #4C4C4C;
}

.mt-1 {
	margin-top: 1rem !important;
}

.mb-2, .my-2 {
	margin-bottom: 0.5rem !important;
}
</style>

</head>

<body>
	<div id="fullpage">
		<div class="header">

			<%@include file="../../views/common/welcome-header.jspf"%>

		</div>

		<div class="container">
			<%@include file="../../views/common/message.jspf"%>
		</div>


		<div class="container">
			<div class="row">
				<div class="col-6 mt-4">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">

							<li class="breadcrumb-item" style="color: blue;">Employee
								Details</li>
						</ol>
					</nav>
				</div>

				<div class="col-1"></div>
			</div>
		</div>

		<div class="container">
			<div class="row">

				<div class="col-7">
					<div class="page-title">Enter the details below</div>
				</div>

			</div>
		</div>

		<div class="container">
			<div class="row">

				<form:form action="${pageContext.request.contextPath}${actionUrl}"
					method="post" modelAttribute="employee">

					<div id="fileDnDiv" class="col-12 row" style="margin-top: 25px;">

						<div class="col-12">
							<div class="border-bottom mt-1 mb-2"></div>
						</div>

						<div class="col-sm-6">
							<c:choose>

								<c:when test="${record!=null && record == 'VIEW' }">
									<label for="empName">Employee Name</label>
									<input id="empName" name="empName"
										class="form-control required" required="required"
										value="${employee.empName}" disabled="disabled"></input>
									<label for="empDesign">Employee Designation</label>
									<input id="empDesign" name="empDesign"
										class="form-control required" required="required"
										disabled="disabled" value="${employee.empDesign}"></input>
									<label for="empDept">Employee Department</label>
									<input id="empDept" name="empDept"
										class="form-control required" required="required"
										disabled="disabled" value="${employee.empDept}"></input>
									<label for="empAddress">Employee Address</label>
									<textarea id="empAddress" name="empAddress"
										class="form-control required" required="required"
										disabled="disabled">${employee.empAddress}</textarea>

								</c:when>
								<c:otherwise>

									<label for="empName">Employee Name</label>
									<input type="hidden" name="empId" id="empId"
										value="${employee.empId}">
									<input id="empName" name="empName"
										class="form-control required" required="required"
										value="${employee.empName}"></input>
									<label for="empDesign">Employee Designation</label>
									<input id="empDesign" name="empDesign"
										class="form-control required" required="required"
										value="${employee.empDesign}"></input>
									<label for="empDept">Employee Department</label>
									<input id="empDept" name="empDept"
										class="form-control required" required="required"
										value="${employee.empDept}"></input>
									<label for="empAddress">Employee Address</label>
									<textarea id="empAddress" name="empAddress"
										class="form-control required" required="required">${employee.empAddress}</textarea>

								</c:otherwise>
							</c:choose>
						</div>

						<div class="col-sm-1"></div>
						<div class="col-sm-5">
							<div class="auto_image">
								<img
									src="${pageContext.request.contextPath}/resources/images/emp.jpg"
									alt="" style="width:410px;">
							</div>
						</div>

						<div class="col-sm-12">
							<div class="border-bottom mt-1 mb-2"></div>
						</div>

						<div class="col-sm-12">
							<c:choose>
								<c:when test="${record!=null && record == 'VIEW' }">
									<a href="${pageContext.request.contextPath}/"
										class="btn btn-info">Go Back</a>
								</c:when>
								<c:otherwise>
									<button type="submit" class="btn btn-info">Submit</button>
									<c:if test="${record!=null && record == 'NEW' }">
										<button type="reset" class="btn btn-danger">Cancel</button>
									</c:if>
									<a href="${pageContext.request.contextPath}/employee/list"
										class="btn btn-info">Go Back</a>
								</c:otherwise>
							</c:choose>

						</div>

					</div>

				</form:form>


			</div>

		</div>

	</div>


	<div class="footer">
		<%@include file="../../views/login-footer.jsp"%>
	</div>
</body>
</html>