<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <c:choose>
        <c:when test="${param.mode eq 'problem'}">
            <aries:layout template="empty_">
                <div id="vue-mount">
                    <problem-popup-app
                        :problem-name="'${param.problemName}'"
                        :domain-id="${param.domainId}"
                        :instance-ids="[${param.instanceId}]"
                        :start-time="${param.startTime}"
                        :end-time="${param.endTime}"
                        :transaction-id="'${param.transactionId}'">
                        <template #context>${param.context}</template>
                        <template #profile-text>${param.profileText}</template>
                    </problem-popup-app>
                </div>
            </aries:layout>
        </c:when>
        <c:when test="${param.mode eq 'capture'}">
            <aries:layout template="empty_">
                <div id="vue-mount">
                    <capture-popup-app
                        :question="'${param.question}'"
                        :domain-id="${empty param.domainId ? -1 : param.domainId}"
                        :instance-ids="[${param.instanceIds}]"
                        :chart-index="${param.chartIndex}"
                        :domain-bar-type="'${param.domainBarType}'">
                    </capture-popup-app>
                </div>
            </aries:layout>
        </c:when>
        <c:otherwise>
            <aries:layout template="base_">
                <div id="vue-mount">
                    <app></app>
                </div>
            </aries:layout>
        </c:otherwise>
    </c:choose>
</aries:compress>