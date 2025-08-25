<%@ tag pageEncoding="UTF-8" body-content="empty" %><%@
 tag import="com.aries.view.domain.LoginUser" %><%@
 tag import="com.aries.view.util.I18nManager" %><%@
 tag import="com.aries.view.util.RequestUtils" %><%@
 attribute name="code" required="true" %><%
 	LoginUser user = (LoginUser) session.getAttribute(RequestUtils.ARIES_SESSION_USER);
%><%= I18nManager.get(user, code).trim() %>