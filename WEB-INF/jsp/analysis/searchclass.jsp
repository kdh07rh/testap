<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="base_">
	<div id="vue-mount">
		<common-header :subject="'<tags:message code="ui.title.searchClass" />'">
		</common-header>
		<app></app>
	</div>
    </aries:layout>
</aries:compress>