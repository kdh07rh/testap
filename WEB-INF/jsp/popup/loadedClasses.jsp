<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="empty_">
	<div id="vue_app">
	   <div class="popup-header">
			<div class="header-text">${param.clazz}</div>
		</div>
		<div class="popup-body">
            <App
                    :domain-id="${param.sid}"
                    :instance-oid="${param.agent}"
                    :class-name="'${param.clazz}'"
                    />
		</div>
	</div>
</aries:layout>
</aries:compress>