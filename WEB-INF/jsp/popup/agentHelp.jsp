<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="popupContentBody">
	<div id="vue-mount">
		<app :param-key="'${param.key}'"
			 :param-type="'${param.type}'"></app>
	</div>
</div>
</aries:layout>
</aries:compress>