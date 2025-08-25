<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="empty_">
        <div id="app" class="${subClass}">
            <c:set var="data" value="${!empty payload ? payload : param}" />
            <c:choose>
                <c:when test="${!empty data.transactionId and !empty data.searchTime}">
                    <c:set var="startTime" value="${data.searchTime - 30000}" />
                    <c:set var="endTime" value="${data.searchTime + 30000}" />
                    <c:set var="domainId" value="${empty data.domainId ? -1 : data.domainId}" />
                    <App
                            :start-time="${startTime}"
                            :end-time="${endTime}"
                            :data-mode="`${data.dataMode}`"
                            :group-type="`${data.groupType}`"
                            :group-rows-string="`[]`"
                            :transaction-rows-string="`[]`"
                            :transaction-ids-string="`{&quot;${domainId}&quot;:[&quot;${data.transactionId}&quot;]}`"
                            :chart-key="`${data.chartKey}`"
                            :chart-filter="`${data.chartFilter}`"
                            :instance-oids-string="`{}`"
                            :transaction-count="`1`"
                            :search-type="`${data.searchType}`"
                            :search-name="`${data.searchName}`"
                            :is-failed="`${data.isFailed}`"
                            :guid="`${data.guid}`"
                            :search-mode="`${data.searchMode}`"
                    >
                    </App>
                </c:when>
                <c:when test="${!empty data.guid and !empty data.searchTime}">
                    <c:set var="startTime" value="${data.searchTime - 30000}" />
                    <c:set var="endTime" value="${data.searchTime + 30000}" />
                    <App
                            :start-time="${startTime}"
                            :end-time="${endTime}"
                            :data-mode="`${data.dataMode}`"
                            :group-type="`${data.groupType}`"
                            :group-rows-string="`[]`"
                            :transaction-rows-string="`[]`"
                            :transaction-ids-string="`{}`"
                            :chart-key="`${data.chartKey}`"
                            :chart-filter="`${data.chartFilter}`"
                            :instance-oids-string="`{}`"
                            :transaction-count="`1`"
                            :search-type="`${data.searchType}`"
                            :search-name="`${data.searchName}`"
                            :is-failed="`${data.isFailed}`"
                            :guid="`${data.guid}`"
                            :search-mode="`${data.searchMode}`"
                    >
                    </App>
                </c:when>
                <c:otherwise>
                    <App
                            :start-time="${data.startTime}"
                            :end-time="${data.endTime}"
                            :data-mode="`${data.dataMode}`"
                            :group-type="`${data.groupType}`"
                            :group-rows-string="`${data.groupRows}`"
                            :transaction-rows-string="`${data.transactionRows}`"
                            :transaction-ids-string="`${data.transactionIds}`"
                            :chart-key="`${data.chartKey}`"
                            :chart-filter="`${data.chartFilter}`"
                            :instance-oids-string="`${data.instanceOids}`"
                            :transaction-count="`${data.transactionCount}`"
                            :search-type="`${data.searchType}`"
                            :search-name="`${data.searchName}`"
                            :is-failed="`${data.isFailed}`"
                            :guid="`${data.guid}`"
                            :search-mode="`${data.searchMode}`"
                    >
                    </App>
                </c:otherwise>
            </c:choose>
        </div>
    </aries:layout>
</aries:compress>
