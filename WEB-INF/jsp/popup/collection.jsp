<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="popupContentBody">
	<div id="vue-mount"
		 data-sid="${param.sid}"
		 data-agent="${param.agent}"
		 data-key="${param.key}"
	>
		<div class="popup-header">
			<div class="header-text">
					${param.name}
			</div>
		</div>
		<div class="popup-body">
			<div class="body-title"></div>
			<div class="snippet"
				 v-html="codes.join('')">
			</div>
		</div>
	</div>
</div>
</aries:layout>
</aries:compress>