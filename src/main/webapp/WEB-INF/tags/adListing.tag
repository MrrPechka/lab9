<%@ tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="ad" uri="http://lab9.by/tags"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>

<%@attribute name="adListing" required="true" rtexprvalue="true" type="java.util.AbstractCollection"%>
<%@attribute name="editMode" required="false" rtexprvalue="false" type="java.lang.Boolean"%>

<c:if test="${adListing!=null}">
	<table border="0" cellpadding="5" cellspacing="1">
		<tr bgcolor="#cccccc" align="center">
			<td>Advertisement subject<br> <a
				href="<c:url value="${pageContext.request.requestURL}">
<c:param name="sort" value="subject"/>
<c:param name="dir" value="asc"/>
</c:url>"></a>
				<a
				href="<c:url value="${pageContext.request.requestURL}">
<c:param name="sort" value="subject"/>
<c:param name="dir" value="desc"/>
</c:url>"></a>
			</td>
			<td>Author<br> <a
				href="<c:url value="${pageContext.request.requestURL}">
<c:param name="sort" value="author"/>
<c:param name="dir" value="asc"/>
</c:url>"></a>
				<a
				href="<c:url value="${pageContext.request.requestURL}">
<c:param name="sort" value="author"/>
<c:param name="dir" value="desc"/>
</c:url>"></a>
			</td>
			<td>Last modified date<br> <a
				href="<c:url value="${pageContext.request.requestURL}">
<c:param name="sort" value="date"/>
<c:param name="dir" value="asc"/>
</c:url>"></a>
				<a
				href="<c:url value="${pageContext.request.requestURL}">
<c:param name="type" value="date"/>
<c:param name="dir" value="desc"/>
</c:url>"></a>
			</td>

			<c:forEach items="${adListing}" var="ad">
				<tr valign="top">
					<td>
						<a
						href="<c:url value="/viewAd.jsp"><c:param name="id" value="${ad.id}" /></c:url>"><c:out
								value="${ad.subject}" /></a>
						<c:if test="${editMode==true}">
							<my:editButton ad="${ad}" />
							<my:deleteButton ad="${ad}" />
						</c:if>
					</td>
					<td><c:out value="${ad.author.name}" /></td>
					<td><fmt:formatDate pattern="hh:mm:ss dd-MM-yyyy" value="${ad.lastModifiedDate}" /></td>
				</tr>
			</c:forEach>
	</table>
</c:if>