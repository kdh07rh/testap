<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="empty_">
        <div id="app" class="${subClass}">
            <chart-popup :chart-json="'${param.chartJson}'"></chart-popup>
        </div>
    </aries:layout>
</aries:compress>