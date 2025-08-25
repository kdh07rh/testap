<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
	<aries:layout template="empty_">
		<div class="layout-contents">
			<http-error-page
					:lock-svg="true"
					:code-message="'403 Forbidden'"
					:title="'<tags:message code="M0095" />'"
					:message="'<tags:message code="M0658" />'"
			/>
		</div>
	</aries:layout>
</aries:compress>