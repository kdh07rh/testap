<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <App
            :domain-id="${param.domainId}"
            :domain-name="'${param.domainName}'"
            :instance-oid="${param.instanceOid}"
            :instance-name="'${param.instanceName}'"
            :mxid-name="'${param.mxidName}'"
            :time="${param.time}"
            :message="'${param.message}'"
    ></App>
</div>
</aries:layout>
</aries:compress>