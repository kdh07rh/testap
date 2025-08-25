<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:layout template="base_">
    <link rel="stylesheet" type="text/css" media="all" href="<tags:cacheUrl url="/css2/summernote-lite.css"/>"/>

    <script type="text/javascript" src="<tags:cacheUrl url="/script/jquery.webpack.js"/>" charset="utf-8"></script>
    <script type="text/javascript" src="<tags:cacheUrl url="/script/summernote-lite.js"/>" charset="utf-8"></script>

    <div id="main">
        <top-bar
                :build-loading="buildLoading"
                :save-loading="saveLoading"
                @build="onClickBuildTemplate"
                @save="onClickSaveTemplate"
                @go-list="onClickTemplateListLink"
                @toggle-setting="toggleTemplateSetting"
        ></top-bar>
        <editor-title></editor-title>

        <div :style="editorStyle" ref="editor">
            <section class="report-editor">
                <div id="summernote"></div>
                <div class="prevent-layer"
                     :style="{ 'height': (editorHeight+5)+'px' }"
                     v-if="layerTarget !== ''"></div>
            </section>
        </div>
        <table-of-contents
                :height="`${editorHeight}px`"
                :contents="docCode"
                :activity="activeTableOfContents"
                :icon-top="120"
                @sync-contents="syncTableOfContents"
                @toggle-contents="toggleTableOfContents"
                @search-contents="searchTableOfContents"></table-of-contents>

        <!-- 템플릿 메타데이터 및 마크업 데이터 -->
        <textarea ref="document" style="display: none;">${document == null ? "{}" : document.json}</textarea>
        <textarea ref="markup" style="display: none;">${markup}</textarea>

        <!-- 차트/테이블 컴포넌트 설정시 값이 계속 바뀔 수 있음 -->
        <form id="chartStyleForm">
            <input type="hidden" name="codeType" value="all" />
            <textarea ref="lineJson" name="lineJson" style="display: none;">${style == null ? "{}" : style.line}</textarea>
            <textarea ref="barJson" name="barJson" style="display: none;">${style == null ? "{}" : style.bar}</textarea>
            <textarea ref="pieJson" name="pieJson" style="display: none;">${style == null ? "{}" : style.pie}</textarea>
        </form>

        <!-- 저장 완료 메시지 출력을 위한 컴포넌트 -->
        <alert-window
                :message="alertMessage"
                @cancel="() => (alertMessage = '')"
                v-if="alertMessage !== ''"
        ></alert-window>

        <!-- 템플릿 빌드 후에 보고서 페이지 이동을 위한 컴포넌트 -->
        <confirm-window
                :message="'<tags:message code="M0577" />'"
                @apply="goToReportPage"
                @cancel="() => (reportPageUrl = '')"
                v-if="reportPageUrl !== ''"
        ></confirm-window>

        <!-- 템플릿 필수 설정 컴포넌트 목록 -->
        <manual-build :directory-list="directoryList" @hide-layer="onHideLayer" @build-template="onBuildTemplate" v-if="layerTarget === 'ManualBuild'"></manual-build>
        <template-setting @hide-layer="onHideLayer" @update-resource-list="onUpdateResourceList" @update-metrics-map="onUpdateMetricsMap" @load-template="onLoadTemplate" @go-list="onClickTemplateListLink" @alert="onAlertMessage" v-else-if="layerTarget === 'TemplateSetting'"></template-setting>
        <table-choice @show-layer="onShowLayer" @hide-layer="onHideLayer" v-else-if="layerTarget === 'TableChoice'"></table-choice>
        <chart-choice @show-layer="onShowLayer" @hide-layer="onHideLayer" v-else-if="layerTarget === 'ChartChoice'"></chart-choice>

        <!-- 테이블 및 차트 관련 컴포넌트 목록 -->
        <line-chart-metrics :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'LineChartMetrics'"></line-chart-metrics>
        <line-chart-metrics-summary :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" :sum-metrics-map="sumMetricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'LineChartMetricsSummary'"></line-chart-metrics-summary>
        <bar-chart-metrics :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'BarChartMetrics'"></bar-chart-metrics>
        <pie-chart-metrics :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'PieChartMetrics'"></pie-chart-metrics>
        <bar-chart-event :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'BarChartEvent'"></bar-chart-event>
        <pie-chart-event :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'PieChartEvent'"></pie-chart-event>
        <bar-chart-error :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'BarChartError'"></bar-chart-error>
        <pie-chart-error :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'PieChartError'"></pie-chart-error>
        <line-chart-metrics-comparison :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'LineChartMetricsComparison'"></line-chart-metrics-comparison>
        <table-metrics :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableMetrics'"></table-metrics>
        <table-metrics-summary :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableMetricsSummary'"></table-metrics-summary>
        <table-metrics-summary-multidomain :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableMetricsSummaryMultidomain'"></table-metrics-summary-multidomain>
        <table-metrics-compare-pivot :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableMetricsComparePivot'"></table-metrics-compare-pivot>
        <table-event :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableEvent'"></table-event>
        <table-event-top-n :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableEventTopN'"></table-event-top-n>
        <table-error :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableError'"></table-error>
        <table-error-top-n :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableErrorTopN'"></table-error-top-n>
        <table-error-count-rate :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableErrorCountRate'"></table-error-count-rate>
        <table-error-application-topn :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableErrorApplicationTopn'"></table-error-application-topn>
        <table-metrics-top-n :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :metrics-map="metricsMap" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableMetricsTopN'"></table-metrics-top-n>
        <table-service-top-n :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableServiceTopN'"></table-service-top-n>
        <table-disk-usage :domain-group-title="docDomainGroupTitle" :build-day="docBuildDay" :build-time="docBuildTime" :resource-list="resourceList" :partition-list="partitionList" @update-partition-list="onUpdatePartitionList" @submit-layer="onSubmitLayer" @show-layer="onShowLayer" @hide-layer="onHideLayer" @alert="onAlertMessage" v-else-if="layerTarget === 'TableDiskUsage'"></table-disk-usage>
    </div>
</aries:layout>