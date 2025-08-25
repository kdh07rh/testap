<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:layout template="base_">
    <div id="app">
        <monthly-template :menu-name="'${menuName}'"></monthly-template>
    </div>
</aries:layout>