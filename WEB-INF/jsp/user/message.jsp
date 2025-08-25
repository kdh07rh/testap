<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
    <div id="app" class="classic">
        <App
            :message-key="'${msg}'"
            :logo-url="'${logoUrl}'">
        </App>
    </div>
</aries:layout>
</aries:compress>