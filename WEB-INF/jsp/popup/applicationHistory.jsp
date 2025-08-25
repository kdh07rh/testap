<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="popupContentBody">
	<div id="vue-mount">
		<app :list='${param.list}'
			 :stime='${param.stime}'
			 :etime='${param.etime}'></app>
		<form id="pipe"
			  style="display: none;"
			  method="post"
			  action="/popup/codeDiff"
			  target="compareSourceCode"
		>
			<input id="baseText" name="baseText" type='hidden'/>
			<input id="newText" name="newText" type='hidden'/>
			<input id="layout" name="layout" value="iframe" type='hidden's/>
		</form>
	</div>
</div>
</aries:layout>
</aries:compress>