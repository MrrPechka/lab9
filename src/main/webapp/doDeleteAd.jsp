<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="ad" uri="http://lab9.by/tags"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>

<ad:getAds id="${param.id}" var="ad" />
<ad:deleteAd ad="${ad}" />
<c:redirect url="/cabinet.jsp" />