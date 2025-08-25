<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="base_">
	<div id="vue_app" style="height: 100%;">
		<app
				:subject="'${menuName}'"
				:active-bookmark="${bookmarkStatus == 'active'}"
		>
		</app>
	</div>
    </aries:layout>
</aries:compress>