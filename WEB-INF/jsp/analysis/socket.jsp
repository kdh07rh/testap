<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="base_">
	<div id="vue-mount">
		<common-header :subject="'${menuName}'">
		</common-header>
		<app @open-stacktrace="openStacktrace">
		</app>
		<form ref="frm">
			<input type="hidden" name="key" />
			<input type="hidden" name="localport" />
			<input type="hidden" name="host" />
			<input type="hidden" name="port" />
			<input type="hidden" name="time" />
		</form>
	</div>
</aries:layout>
</aries:compress>