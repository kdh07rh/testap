<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
	<aries:layout template="empty_">
		<div class="layout-contents">
			<http-error-page
					:code-message="'401 Unauthorized'"
					:title="'<tags:message code="M0095" />'"
					:message="'<tags:message code="M0658" />'"
			/>
		</div>
	</aries:layout>
</aries:compress>