<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>

<c:forEach items="${bundleFiles}" var="file">
    <c:choose>
        <c:when test="${fn:endsWith(file, '.js') || fn:indexOf(file, '.js?s=') != -1}">
            <script type="text/javascript" src="/bundles${file}" charset="utf-8"></script>
        </c:when>
    </c:choose>
</c:forEach>