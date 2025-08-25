<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="base_">
    <div id="vue-mount" style="height: 100%;">
        <common-header :subject="'<tags:message code="ui.title.dbsearch" />'"
                       :manual-link="manualKey">
        </common-header>
        <app :page-type="pageType"
             @update-page="onChangePageType"></app>
    </div>
</aries:layout>
</aries:compress>