<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="base_">
    <div id="vue_app">
        <common-header
                :subject="'${menuName}'"
        ></common-header>
        <app
            :param-domain-id="'${param.sid}'"
            :param-instance-oid="'${param.oid}'"
        ></app>
    </div>
</aries:layout>
</aries:compress>