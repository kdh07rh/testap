<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
	<aries:layout template="base_">
		<div id="vue_app">
		<common-header
				:subject="'${menuName}'"
				:is-domain-group-page="true"></common-header>

		<div class="contents">
			<top-bar
					:type="domainBar.type"
					:use-multi-domain="domainBar.multidomain"
					:use-multi-instance="domainBar.multiinstance"
					:batchjob-mode="domainBar.batchjobMode"
			></top-bar>
			<div class="chart">
				<dashboard-content-area>
					<template v-slot:footer >
						<x-view-window v-show="showXView"
									   @close="toggleXView">
							<div class="no-data" v-show="!xviewDataExists">
								<span><tags:message code="M0303" /></span>
							</div>
							<div v-show="xviewDataExists" id="xviewChart" type="realtime" class="chart chartDiv " style="box-shadow: none; display: block; height: 360px; width: 570px;" fastview="" includetopology="true" disabledrangechange="true" hosttype="" fixedmax="" defaultmax="" timeunit="" realtimeview="" optimized="" charttype="xview.topology" autorender="" viewfields="" viewpoint="" mxid="0" mxidmax="0" otype="0" oid="" ptype="0" pkey="" datatype="domain" domainbarsync="true" data-key="1e60ujrem.dtg">
								<canvas id="xviewChartCanvas" ctitle="" class="chartCanvas"  style="width: 570px; height: 360px; position: absolute; z-index: 10;"></canvas>
								<canvas id="xviewChartCanvasInteraction" tabindex="1000" class="chartInteractionCanvas"  style="width: 570px; height: 360px; cursor: default; position: absolute; z-index: 11;"></canvas>
								<div style="position: relative; z-index: 100; margin: 10px 0 0 auto;">
								</div>
								<div class="chart-label" style="right: 65px; display: none;"></div>
							</div>

						</x-view-window>
						<window id="group_edit"
								v-show="showGroupNameField"
								hide-footer
								close-btn-type="none"
								:draggable="false"
								@cancel="onRemoveGroupNode">
							<div>
								<input-field v-model:value="groupName"
											 :width="160"
											 small>
								</input-field>
								<btn :items="[{ iconType: closeIcon }]"
									 class="transparent"
									 @click="onRemoveGroupNode">
								</btn>
							</div>
						</window>
					</template>
				</dashboard-content-area>

			</div>
		</div>

	</div>
	</aries:layout>
</aries:compress>