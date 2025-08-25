<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>

<c:forEach items="${bundleFiles}" var="file">
    <c:choose>
        <c:when test="${fn:endsWith(file, '.css') || fn:indexOf(file, '.css?s=') != -1}">
            <link rel="stylesheet" type="text/css" media="all" href="/bundles${file}"/>
        </c:when>
    </c:choose>
</c:forEach>