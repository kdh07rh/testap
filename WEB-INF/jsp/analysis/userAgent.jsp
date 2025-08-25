<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="base_">
	<div id="vue-mount" class="userAgent">
        <common-header
                :subject="'${menuName}'"
                :is-domain-group-page="false"
                :loading="progress < 1"
        ></common-header>
        <app :content-height="contentHeight"></app>
	</div>
</aries:layout>
</aries:compress>