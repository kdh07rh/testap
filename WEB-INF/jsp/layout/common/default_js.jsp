<%@ page import="com.aries.view.config.ConfigValue" %>

<script type="text/javascript" src="<tags:cacheUrl url="/script/i18n/message_${ariesuser.language}.js"/>" charset="utf-8"></script>

<!-- 제니퍼 뷰서버를 데미안 프로젝트를 통해 모니터링하기 위한 옵션 -->
<% if( ConfigValue.demian_access_token != null) { %>
<script>
    (function(j,ennifer) {
        j['dmndata']=[];j['jenniferFront']=function(args){window.dmndata.push(args)};
        j['dmnaid']=ennifer;j['dmnatime']=new Date();j['dmnanocookie']=false;j['dmnajennifer']='JENNIFER_FRONT@INTG';
    }(window, '<%= ConfigValue.demian_access_token %>'));
    jenniferFront({ set: { userId: '${ariesuser.id}' } });
</script>
<script async src="https://d-collect.jennifersoft.com/<%= ConfigValue.demian_access_token %>/demian.js"></script>
<% } %>

<!-- 구글 애널리틱스를 모니터링하기 위한 옵션 -->
<% if(ConfigValue.gtag_id != null) {%>
<script async src="https://www.googletagmanager.com/gtag/js?id=<%= ConfigValue.gtag_id %>"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('set', {'user_id': '${ariesuser.id}'}); // 로그인한 User-ID를 사용하여 User-ID를 설정합니다.
    gtag('config', '<%= ConfigValue.gtag_id%>');
</script>
<% } %>