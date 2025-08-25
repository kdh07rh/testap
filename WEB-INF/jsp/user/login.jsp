<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
    <div id="app" class="classic">
        <App
                :logo-url="'${logoUrl}'"
                :use-sign-in="${useSignIn}"
                :use-sign-up="${useSignUp}"
                :use-auto-login="${useAutoLogin}"
                :redirect-url="'${param.redirect}'"
                :message-key="'${msg}'"
        ></App>
    </div>
</aries:layout>
</aries:compress>