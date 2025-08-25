<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
	<aries:layout template="base_">
		<div id="vue_app">
			<dashboard-template :need-business-select="true" :bookmark-status="'${bookmarkStatus}' === 'active' ? true : false" />
		</div>
	</aries:layout>
</aries:compress>

