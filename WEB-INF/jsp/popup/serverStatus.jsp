<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
    <div id="app">
        <App :type="'${param.type}'"></App>
    </div>
</aries:layout>
</aries:compress>