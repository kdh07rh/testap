<!DOCTYPE html>
<html lang="${ariesuser.language}">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ include file="/WEB-INF/jsp/layout/common/title.jsp" %>
    <%@ include file="/WEB-INF/jsp/layout/common/default_css.jsp" %>
    <%@ include file="/WEB-INF/jsp/layout/common/default_js.jsp" %>

    <!-- URL 로그인시 인증 거부 메시지 출력 -->
    <c:if test="${!empty uniqueAccessUrl}">
        <c:if test="${!empty messageCode}">
            <script>
                if(confirm(i18n.get("${messageCode}"))) {
                    location.href = "/logout";
                }
            </script>
        </c:if>
    </c:if>
</head>
