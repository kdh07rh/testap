<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
    <div id="app" class="classic">
        <App
                :logo-url="'${logoUrl}'"
                :message-key="'${msg}'">
        </App>
    </div>
</aries:layout>
</aries:compress>