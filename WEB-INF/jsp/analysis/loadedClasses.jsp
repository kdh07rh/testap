<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="base_">
    <div id="vue_app">
        <common-header
                :subject="'${menuName}'"
        ></common-header>
        <app
                :class-name="'${param.clazz}'"
        ></app>
    </div>
</aries:layout>
</aries:compress>