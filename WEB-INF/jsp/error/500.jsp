<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
	<aries:layout template="empty_">
		<div class="layout-contents">
			<http-error-page
					:code-message="'500 Internal Server Error'"
					:title="'<tags:message code="ui.label.dataServerError" />'"
					:message="'<tags:message code="text.0066" />'"
			/>
		</div>
	</aries:layout>
</aries:compress>