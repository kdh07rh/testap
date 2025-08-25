<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="base_">
	<div id="vue_app" style="height: 100%;">
		<App
				:subject="'${menuName}'"
		>
		</App>
	</div>
</aries:layout>
</aries:compress>