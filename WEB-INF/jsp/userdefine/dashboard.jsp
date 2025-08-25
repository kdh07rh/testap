<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
	<aries:layout template="base_">
		<div id="vue_app">
			<dashboard-template :userdefine-dashboard="true" />
		</div>
		<div id="server-values" data-param-key="${param.key}" data-param-group-id="${param.groupId}" style="display: none;"></div>
	</aries:layout>
</aries:compress>