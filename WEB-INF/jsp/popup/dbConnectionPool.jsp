<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
	<aries:layout template="empty_">
		<div id="app" class="${subClass}">
			<db-connection-pool-component
					:instance-name="'${param.instanceName}'"
					:is-jmx="${param.isJMX}"
					:sid="${param.sid}"
					:oid="${param.oid}"
			/>
		</div>
	</aries:layout>
</aries:compress>