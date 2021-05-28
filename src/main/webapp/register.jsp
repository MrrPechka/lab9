<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="ad" uri="http://lab9.by/tags"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>

<html>
<head>
<title>New user registration</title>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
</head>
<body>
	<jsp:include page="/static/header.jsp"></jsp:include>
	<my:layout1Column>
		<h1>New user registration</h1>
		<my:errorMessage />
		<form action="/Lab_9/doRegister.jsp" method="post">
			<table body="0" cellspacing="0" cellpadding="10">
				<tr>
					<td>Login:</td>
					<td><input type="text" name="login"
						value="${sessionScope.userData.login}"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password"
						value="${sessionScope.userData.password}"></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="name"
						value="${sessionScope.userData.name}"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email"
						value="${sessionScope.userData.email}"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Sign in">
						<input type="button" value="Cancel"
						onclick="window.location='<c:url value="/index.jsp" />';"></td>
				</tr>
			</table>
		</form>
	</my:layout1Column>
	<%@ include file="/static/footer.jsp"%>
</body>
</html>