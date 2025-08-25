<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <App
        :domain-id="${param.sid}"
        :instance-oid="${param.oid}"
        :file-name="'${param.fname}'"
    ></App>
</div>
</aries:layout>
</aries:compress>