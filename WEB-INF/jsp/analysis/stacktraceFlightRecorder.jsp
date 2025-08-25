<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="base_">
        <div id="vue_app">
            <app :domain-id-string="'${param.domainId}'"
                 :instance-ids-string="'${param.instanceIds}'"
                 :start-range-string="'${param.startRange}'"
                 :end-range-string="'${param.endRange}'"></app>
        </div>
    </aries:layout>
</aries:compress>