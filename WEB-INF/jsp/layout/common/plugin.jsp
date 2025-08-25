<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress >
    <aries:layout template="base_">
        <!-- 플러그인 페이지 css 번들파일 -->
        <link rel="stylesheet" type="text/css" media="all" href="<tags:cacheUrl url="/bundles/plugin/app.css"/>"/>

        <!-- 플러그인에서 추가한 css 번들 파일 -->
        <c:if test="${not empty outputCss}">
            <c:forEach var="css" items="${outputCss}">
                <link rel="stylesheet" type="text/css" href="${css}" />
            </c:forEach>
        </c:if>

        <!-- 플러그인 컨텐츠 영역 -->
        <c:choose>
            <c:when test="${layout == 'iframe'}">
                ${contents}
            </c:when>
            <c:otherwise>
                <div class="plugin-header">
                    <common-header
                            :subject="'${title}'"
                            :description="'${description}'"
                            :hide-domain-group-box="true"
                    ></common-header>
                </div>
                ${contents}
            </c:otherwise>
        </c:choose>

        <!-- 플러그인 페이지 js 번들파일 -->
        <script type="text/javascript" src="<tags:cacheUrl url="/bundles/plugin/app.js"/>" charset="utf-8"></script>

        <!-- 플러그인에서 추가한 js 번들 파일 -->
        <c:if test="${not empty outputJs}">
            <c:forEach var="js" items="${outputJs}">
                <script type="text/javascript" src="${js}"></script>
            </c:forEach>
        </c:if>

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
    </aries:layout>
</aries:compress>