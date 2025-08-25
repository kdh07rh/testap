<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="popupContentBody">
	<div id="vue-mount">
		<app :data-oids-by-sid='${param.oidsBySid}'
			 :data-otype='${param.otype}'
			 :data-error-type='${param.errorType}'
			 :data-hash='${param.hash}'
			 :data-stime='${param.stime}'
			 :data-etime='${param.etime}'
			 :data-name="`${fn:replace(param.name, '"', '')}`">
		</app>
	</div>
</div>
</aries:layout>
</aries:compress>