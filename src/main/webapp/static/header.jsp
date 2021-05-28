<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>

<c:if test="${param.sort!=null}">
	<c:set var="sort" scope="session" value="${param.sort}" />
</c:if>

<c:if test="${param.dir!=null}">
	<c:set var="dir" scope="session" value="${param.dir}" />
</c:if>

<div style="background-color: red; padding: 10px;">
	<div
		style="font-family: 'Trebuchet'; font-size: 30px; height: 53px;">
		Advertisements</div>
</div>

<c:if test="${sessionScope.authUser!=null}">
	<div style="background-color: #ccc; padding: 5px">
		<div style="float: right; margin-right: 5px">
			[ <a href="<c:url value="/doLogout.jsp" />">Log out</a> ]
		</div>
		You are logged in as:
		<c:out value="${sessionScope.authUser.name}" />
		(
		<c:out value="${sessionScope.authUser.login}" />
		)
	</div>
</c:if>