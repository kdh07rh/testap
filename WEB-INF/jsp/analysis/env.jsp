<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="base_">
        <div id="vue-app">
            <common-header
                    :subject="'${menuName}'"
            ></common-header>
            <div class="layout-head">
                <top-bar
                        :type="'agent'"
                        :use-multi-domain="true"
                        :use-multi-instance="false"
                        @change="onDomainBarClick"
                ></top-bar>
            </div>
            <div class="layout-line"></div>
            <div class="layout-body">
                <basic-table
                        v-for="el in tableData"
                        :table-data="el.map(e => ({
                    key: e.key,
                    value: e.value && e.value[0] || ''
                }))"
                        :title="el[0].type"
                        :field="tableHeader"
                        :sort-compare="sortCompare"
                        :width-ratio="[1, 2]"
                ></basic-table>
            </div>
        </div>
    </aries:layout>
</aries:compress>
