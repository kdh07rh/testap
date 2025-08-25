<%@ tag pageEncoding="UTF-8" %><%@ tag import="aries.version.VersionFromRunningJar" %><%@
        attribute name="url" required="true" %><%@
        taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="version" value="<%= VersionFromRunningJar.getVersionNumberOrNull() %>" />
<c:choose>
    <c:when test="${version == null}">
        <c:url value="${url}" />
    </c:when>
    <c:otherwise>
        <c:url value="${url}?v=${version}" />
    </c:otherwise>
</c:choose>