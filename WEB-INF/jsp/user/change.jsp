<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
    <div id="app" class="classic">
        <App
                :logo-url="'${logoUrl}'"
                :user-id="'${id}'"
                :delay="${delay == null ? false : delay}">
        </App>
    </div>
</aries:layout>
</aries:compress>