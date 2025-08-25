<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
	<aries:layout template="empty_">
		<div class="layout-contents">
			<http-error-page
					:code-message="'400 Bad Request'"
					:title="'<tags:message code="M0094" />'"
					:message="'<tags:message code="M0657" />'"
			/>
		</div>
	</aries:layout>
</aries:compress>