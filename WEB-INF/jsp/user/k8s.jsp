<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
    <div id="app" class="classic">
        <App
            :is-real-login="${isRealLogin}"
            :valid-k8s-sso="${validK8sSso}"
            :return-path="`${param.returnPath}`"
            :payload="`${param.payload}`">
        </App>
    </div>
</aries:layout>
</aries:compress>