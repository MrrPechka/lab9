<%@ tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="ad" required="true" rtexprvalue="true" type="bsu.rfact.java.lab9.entity.Ad"%>

<c:if
	test="${sessionScope.authUser!=null && ad!=null &&
ad.authorId==sessionScope.authUser.id}">
	<div
		style="float: left; margin: 10px; margin-top: 20px; padding: 5px 0px; border: 1px solid black; background-color: #ccc; width: 150px; text-align: center">
		<a
			href="<c:url value="/updateAd.jsp">
<c:param name="id" value="${ad.id}" />
</c:url>">Edit</a>
	</div>
</c:if>