<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <App
            :page-type="'${param.pageType}'"
            :domain-id="'${param.domainId}'"
            :instance-id="'${param.instanceId}'"
            :file-name="'${param.fileName}'"
            :names="escapedStringToArray(`${param.names}`)"
    ></App>
</div>
</aries:layout>
</aries:compress>