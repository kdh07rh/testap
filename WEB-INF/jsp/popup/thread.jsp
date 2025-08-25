<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="popupContentBody">
    <div id="vue-mount">
        <App
            :domain-id="${param.sid}"
            :instance-oid="${param.agent}"
            :thread-key="${param.key}"
        ></App>
    </div>
</div>
</aries:layout>
</aries:compress>