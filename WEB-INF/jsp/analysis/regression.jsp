<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="base_">
    <div id="vue_app">
        <common-header
                :subject="'${menuName}'"
                :loading="fetching"
        ></common-header>

        <div class="head" v-show="!toolbarFold">
            <tool-bar></tool-bar>
            <search-option
                    :resources="resources"
                    :is-loading="searching"
                    :current-metrics="metrics"
                    @submit="analysisRegression"
            ></search-option>
        </div>

        <div class="body">
            <folder></folder>
            <div class="scroll" :style="scrollStyle">
                <contents
                        :heatmap-names="names.heatmap"
                        :heatmap-values="values.heatmap"
                ></contents>
            </div>
        </div>
    </div>
</aries:layout>
</aries:compress>