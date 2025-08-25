<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="base_">
    <div id="vue_app">
        <common-header
                :subject="'${menuName}'"
                :is-domain-group-page="false"
        ></common-header>
        <app></app>
    </div>
</aries:layout>
</aries:compress>