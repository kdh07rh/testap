<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<%@ page import="com.aries.view.config.ConfigValue" %>
<aries:compress>
	<aries:layout template="base_">
<div class="dashboardEdit">
	<user-define-edit-template
			:param-key="'${param.key}'"
			:param-group-id="'${param.groupId}'"
			:config-limit-chart-count="<%= ConfigValue.limit_chart_count_userdefine_dashboard %>"
			:use-jennifer-front-on-dashboard="<%= ConfigValue.use_jennifer_front_on_dashboard%>"
	>

	</user-define-edit-template>
</div>

<div id="notifySaveMsg" class="notify info" style="display: none; position: absolute; z-index: 100000;">
	<div class="message"><tags:message code="M0411" /></div>
</div>
<div id="notifyNoSupportMsg" class="notify info" style="display: none; position: absolute; z-index: 100000;">
	<div class="message"><tags:message code="M0412" /></div>
	<div class="message"></div>
</div>
<div id="notifyOnlySupportInstanceSingleTopBar" class="notify info" style="display: none; position: absolute; z-index: 100000;">
	<div class="message"><tags:message code="M0423" /></div>
	<div class="message"></div>
</div>

<div id="notifyAlarm"class="notify success" style="position: absolute; z-index: 1000; display: none;">
	<div class="title"><i class="icon-check" style="color: #30c30a;"></i><span></span></div>
</div>
<div id="server-values"
	 data-param-key="${param.key}"
	 data-param-group-id="${param.groupId}"
	 data-config-limit-chart-count="<%= ConfigValue.limit_chart_count_userdefine_dashboard %>"
	 data-use-jennifer-front-on-dashboard="<%= ConfigValue.use_jennifer_front_on_dashboard%>"
	 style="display: none;">

</div>
	</aries:layout>
</aries:compress>