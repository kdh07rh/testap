<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="popupContentBody">
	<div id="vue-mount">
		<app :title="`${param.name}`"
			 :data-domain-json="`${param.domainJson}`"
			 :data-sid="`${param.sid}`"
			 :data-oid="`${param.oid}`"
			 :data-otype="`${param.otype}`"
			 :data-start-time="`${param.startTime}`"
			 :data-end-time="`${param.endTime}`"
		></app>
	</div>
</div>
</aries:layout>
</aries:compress>