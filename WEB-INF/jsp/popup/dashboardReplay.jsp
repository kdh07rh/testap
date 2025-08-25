<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
    <div id="app">
        <dashboard-loader
                :type="'${param.isDomainMode ? 'domain' : 'agent'}'"
                :use-multi-domain="${param.useMultiDomain}"
                :use-multi-instance="${param.useMultiInstance}"
                :start-time="${param.startTime}"
                :end-time="${param.endTime}"
                :components="JSON.parse(`${param.components}`)"
                :chart-position="'${param.chartPosition}'"
                :event-time="${param.eventTime}"
                :event-level="'${param.eventLevel}'"
                :event-instance-key="'${param.eventInstanceKey}'"
        >
            <common-header :subject="'${param.menuName}'"
                hide-domain-tree
                hide-more-button>
            </common-header>
        </dashboard-loader>
    </div>
</aries:layout>
</aries:compress>