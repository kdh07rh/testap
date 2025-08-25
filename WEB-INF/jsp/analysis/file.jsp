<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="base_">
	<div id="vue-app">
        <common-header
                :subject="'${menuName}'"
        ></common-header>
        <div class="head">
            <top-bar
                    :type="'agent'"
                    :use-multi-domain="true"
                    :use-multi-instance="false"
                    @change="onDomainBarClick"
            ></top-bar>
            <tab
                    :tabs="tabs"
                    :active-tab="activeTab"
                    @change="onChangeActiveTab"
            ></tab>
        </div>
        <div class="body">
            <loading-indicator v-if="loading"></loading-indicator>
            <detail-table v-if="activeTab === 'diskUsage'"
                          :tab="activeTab"
                          :rows="diskUsageData"
                          :height="tableHeight"
                          :key="tableSequence"
            ></detail-table>
            <detail-table v-else
                          :tab="activeTab"
                          :rows="fileData"
                          :height="tableHeight"
                          :key="tableSequence"
            ></detail-table>
        </div>
    </div>
</aries:layout>
</aries:compress>