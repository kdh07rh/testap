<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:layout template="base_">
    <div id="app">
        <daily-template :menu-name="'${menuName}'"></daily-template>
    </div>
</aries:layout>