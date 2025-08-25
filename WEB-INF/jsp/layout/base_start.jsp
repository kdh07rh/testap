<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<%@ include file="/WEB-INF/jsp/layout/common/header.jsp" %>

<body class="jui ${mainClass} ${themeName}">
<%@ include file="/WEB-INF/jsp/layout/common/webpack_css.jsp" %>

<div class="layout-root">
<c:choose>
    <c:when test="${param.layout eq 'iframe' || param.layout eq 'iframe-no-header'}">
        <div class="layout-contents layout-iframe">
    </c:when>
    <c:otherwise>
        <div class="layout-toolbar">
            <app
                :logo-path="'${logoUrl}'"
                :use-dashboard="${permissionMenu.dashboard || false}"
                :use-analysis="${permissionMenu.analysis || false}"
                :use-statistics="${permissionMenu.statistics || false}"
                :use-userdefine="${permissionMenu.userdefine || false}"
                :use-template="${permissionMenu.template || false}"
                :use-document="${permissionMenu.document || false}"
                :use-board="${permissionMenu.board || false}"
                :use-management="${permissionMenu.management || false}"
                :use-notification="${(empty uniqueAccessUrl and param.layout ne 'iframe') || false}"
                :menu-name="'${menuName}'"
            ></app>
        </div>
        <div class="layout-contents">
    </c:otherwise>
</c:choose>
