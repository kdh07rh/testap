<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <App
            :domain-id="${param.sid}"
            :instance-oid="${param.agent}"
            :socket-key="${param.key}"
            :time="'${param.time}'"
            :local-port="${param.localport}"
            :host="'${param.host}'"
            :port="${param.port}"
    ></App>
</div>
</aries:layout>
</aries:compress>