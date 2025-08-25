<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="base_">
        <script id="dashboardData" type="application/javascript">
            var dashboardDataJSON = (function () {
                return <jsp:include page="/script/data${requestScope['javax.servlet.forward.servlet_path']}.json" flush="true"/>;
            })();
        </script>
        <div id="vue_app">
            <dashboard-template :bookmark-status="'${bookmarkStatus}' === 'active' ? true : false" />
        </div>
    </aries:layout>
</aries:compress>