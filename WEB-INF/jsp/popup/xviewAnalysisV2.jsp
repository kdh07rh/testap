<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="empty_">
        <div id="app" class="${subClass}">
            <c:set var="data" value="${!empty payload ? payload : param}" />
            <c:choose>
                <c:when test="${!empty data.domainId and !empty data.transactionId and !empty data.searchTime}">
                    <c:set var="startTime" value="${data.searchTime - 30000}" />
                    <c:set var="endTime" value="${data.searchTime + 30000}" />
                    <c:set var="domainId" value="${empty data.domainId ? -1 : data.domainId}" />
                    <page-loader
                            :start-time="${startTime}"
                            :end-time="${endTime}"
                            :group-type="``"
                            :group-rows="escapedStringToArray(`[]`)"
                            :transaction-ids="escapedStringToJson(`{&quot;${domainId}&quot;:[&quot;${data.transactionId}&quot;]}`)"
                            :guid="``"
                            :search-mode="``"
                            :options="escapedStringToJson(`{}`)"
                    >
                    </page-loader>
                </c:when>
                <c:when test="${!empty data.guid and !empty data.searchTime}">
                    <c:set var="startTime" value="${data.searchTime - 60000}" />
                    <c:set var="endTime" value="${data.searchTime}" />
                    <page-loader
                            :start-time="${startTime}"
                            :end-time="${endTime}"
                            :group-type="``"
                            :group-rows="escapedStringToArray(`[]`)"
                            :transaction-ids="escapedStringToJson(`{}`)"
                            :guid="`${data.guid}`"
                            :search-mode="`${data.searchMode}`"
                            :options="escapedStringToJson(`{}`)"
                    >
                    </page-loader>
                </c:when>
                <c:otherwise>
                    <page-loader
                            :start-time="${data.startTime}"
                            :end-time="${data.endTime}"
                            :group-type="`${data.groupType}`"
                            :group-rows="escapedStringToArray(`${data.groupRows}`)"
                            :transaction-ids="escapedStringToJson(`${data.transactionIds}`)"
                            :guid="``"
                            :search-mode="``"
                            :options="escapedStringToJson(`${data.options}`)"
                    >
                    </page-loader>
                </c:otherwise>
            </c:choose>
        </div>
    </aries:layout>
</aries:compress>
