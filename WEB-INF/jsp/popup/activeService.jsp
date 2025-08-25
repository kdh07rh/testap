<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="empty_">
    <div id="app" class="${subClass}">
        <App
                :default-tab="'${param.defaultTab}'"
                :domain-ids-string="'${param.sid}'"
                :instance-oids-string="'${param.agent}'"
                :otype-string="'${param.otype}'"
                :source-domain-id-string="'${param.sourceSid}'"
                :source-instance-oid-string="'${param.sourceOid}'"
                :target-domain-id-string="'${param.targetSid}'"
                :target-instance-oid-string="'${param.targetOid}'"
                :exist-reverse-string="'${param.existReverse}'"
                :target-remote-call-type-string="'${param.targetRemoteCallType}'"
                :target-custom-method-desc-hash-string="'${param.targetCustomMethodDescHashOrZero}'"
                :target-port-string="'${param.targetPortOrZero}'"
                :source-info-list-string="'${param.sourceInfoList}'"
                :target-info-list-string="'${param.targetInfoList}'"
                :is-incoming-string="'${param.isIncoming}'"
                :is-outgoing-string="'${param.isOutgoing}'"
                :is-group-node-string="'${param.isGroupNode}'"
                :is-from-batch-job-domain-string="'${param.isFromBatchjobDomain}'"
                :is-topbar-sync-on-chart-string="'${param.isTopbarSyncOnChart}'"
                :data-source-name="'${param.dataSourceName}'"
                :target-ip-address="'${param.targetIpAddressOrEmpty}'"
                :k8s-cluster-id-string="'${param.k8sClusterId}'"
                :k8s-raw-kind-string="'${param.k8sRawKind}'"
                :k8s-namespaces-string="'${param.k8sNamespaces}'"
                :k8s-resources-string="'${param.k8sResources}'"
                :application-names-string="'${param.applicationNames}'"
                :domain-group-index="`${param.domainGroupIndex}`"
        >
        </App>
    </div>
</aries:layout>
</aries:compress>
