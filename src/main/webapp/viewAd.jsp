<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- Импортировать JSTL-библиотеки --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- Импортировать собственную библиотеку тегов --%>
<%@taglib prefix="ad" uri="http://lab9.by/tags"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>

<ad:getAds id="${param.id}" var="ad" />
<html>
<head>
<title><c:out value="${ad.subject}" /></title>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
</head>
<body>
	<jsp:include page="/static/header.jsp"></jsp:include>
	<my:layout1Column>
		<h1>
			<c:out value="${ad.subject}" />
		</h1>
		<div style="text-decoration: underline ; font-size: 10px">
			Author:
			<c:out value="${ad.author.name}" />
			, last edited date:
			<fmt:formatDate pattern="hh:mm:ss dd-MM-yyyy"
				value="${ad.lastModifiedDate}" />
		</div>
		<div style="border: 1px solid black; padding: 20px;">
			<c:out value="${ad.body}" />
		</div>
	</my:layout1Column>
	<%@ include file="/static/footer.jsp"%>
</body>
</html>