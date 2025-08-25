<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <App
            :domain-id="${sid}"
            :data-key="${key}"
            :start-time="${stime}"
            :end-time="${etime}"
            :use-db-plan="${authPlanFunc}"
    >
        <textarea ref="textarea" readonly>${query}</textarea>
    </App>
</div>
</aries:layout>
</aries:compress>