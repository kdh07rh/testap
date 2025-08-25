<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <App
        :domain-ids-string="'${param.domainIds}'"
        :instance-keys-string="'${param.instanceKeys}'"
        :heatmap-cell-keys-string="'${param.heatmapCellKeys}'"
        :is-topbar-sync-on-chart="${param.isTopbarSyncOnChart}"
        :is-topbar-multi-select="${param.isTopbarMultiSelect}"
        :topbar-type="'${param.topbarType}'"
    ></App>
</div>
</aries:layout>
</aries:compress>