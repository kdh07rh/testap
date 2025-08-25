<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="base_">
    <div id="vue_app">
        <common-header
                :subject="'${menuName}'"
                :loading="detailProgress < 1"
        ></common-header>

        <div class="head" v-show="!isHeaderFold">
            <tool-bar
                    :progress="detailProgress"
                    @update#condition="onUpdateSearchCondition"
                    @alert="(msg) => (alertMessage = msg)"
            ></tool-bar><br/>

            <div class="chart-section">
                <div class="left">
                    <div class="prevent-event" v-if="detailProgress < 1"></div>
                    <div class="subject">
                        <div class="left"><tags:message code="ui.label.eventCount" /></div>
                        <div class="right">
                            <div class="item-group" v-for="(item, index) in chartFilterOptions">
                                <toggle-switch
                                    small
                                    v-model:active="item.active"
                                    :switch-button-color="item.buttonColor"
                                    :switch-color="item.color"
                                    @change="onChangeChartFilter"
                                ></toggle-switch>
                                <span v-html="item.text"></span>
                            </div>
                            <div class="item-group">
                                <dropdown
                                        :items="chartShowTypes"
                                        :width="160"
                                        :selected-value="selectedChartType"
                                        @onchange="onChangeChartShowType"
                                ></dropdown>
                            </div>
                        </div>
                    </div>
                    <count-chart :daily-chart-names="dailyChartNames"
                                 :daily-chart-labels="dailyChartLabels"
                                 :daily-chart-values="dailyChartValues"
                                 :daily-chart-max-value="dailyChartMaxValue"
                                 :daily-chart-active-index="dailyChartActiveIndex"
                                 :hourly-chart-names="hourlyChartNames"
                                 :hourly-chart-labels="hourlyChartLabels"
                                 :hourly-chart-values="hourlyChartValues"
                                 :hourly-chart-max-value="hourlyChartMaxValue"
                                 :hourly-chart-active-index="hourlyChartActiveIndex"
                                 :is-active-hourly-chart="isActiveHourlyChart"
                                 @update#table="onClickForDetailTable"
                                 @reset#ratechart="onResetForRateChart"></count-chart>
                </div>
                <div class="right">
                    <div class="subject">
                        <div class="left"><tags:message code="ui.label.eventTypeCount" /> </div>
                        <div class="right"></div>
                    </div>
                    <rate-chart :table-data="detailDataList"
                                :table-filter-mode="isFilterDetailData"
                                @ratefilter#table="onRateFilterForDetailTable"></rate-chart>
                </div>
            </div>
        </div>
        <div class="body">
            <detail-table :search-date-format="searchDateFormat"
                          :header-fold="isHeaderFold"
                          :table-height="mainHeight"
                          :table-progress="detailProgress"
                          :table-data="detailDataList"
                          :otype-string="searchCondition.otypeString"
                          @resize="onChangeHeaderFold"
                          @alert="(msg) => (alertMessage = msg)"
            ></detail-table>
        </div>

        <alert-window
                :message="alertMessage"
                @cancel="() => (alertMessage = '')"
                v-if="alertMessage !== ''"
        ></alert-window>
    </div>
</aries:layout>
</aries:compress>