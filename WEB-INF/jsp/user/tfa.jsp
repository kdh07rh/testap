<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
    <div id="app">
        <App :logo-url="'${logoUrl}'" :redirect-url="'${param.redirect}'"></App>
    </div>
</aries:layout>
</aries:compress>