<%@ page import="com.aries.view.config.ConfigValue" %>
<%@ page import="com.aries.view.websocket.command.ViewServerUnofficialOption" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Locale" %>

<!-- domain 관련 데이터 -->
<textarea name="domainJson" style="display: none;">${domainJson}</textarea>
<textarea name="domainListJson" style="display: none;">${domainListJson}</textarea>
<textarea name="domainGroupJson" style="display: none;">${domainGroupListJson}</textarea>

<!-- server 데이터 -->
<textarea name="domainWithCacheLimit" style="display: none;">${domainWithCacheLimit}</textarea>
<input type="hidden" name="isDomainGroupUsage" value="${isDomainGroupUsage}" />
<input type="hidden" name="utcOffset" value="<%= Calendar.getInstance().getTimeZone().getRawOffset() / 60 / 1000 %>" />
<input type="hidden" name="serverLocale" value="<%= Locale.getDefault() %>" />
<input type="hidden" name="serverPlatform" value="${platform}" />
<input type="hidden" name="serverPermission" value="${permission}" />
<input type="hidden" name="xviewRangeTimeOnDashboard" value="<%= ConfigValue.getXViewRangeMSOnCache() %>" />
<input type="hidden" name="useAgentTimeForXAxisOnXView" value="<%= ViewServerUnofficialOption.INSTANCE.getUseAgentTimeForXView() %>" />
<input type="hidden" name="tokenWhenUseJenniferFront" value="<%= ConfigValue.token_when_use_jennifer_front %>" />
<input type="hidden" name="jenniferChat" value="${chatConfig}" />
<input type="hidden" name="jenniferK8s" value="<%= ConfigValue.jennifer_k8s %>" />
<input type="hidden" name="defaultRuntimelineMerge" value="<%= ConfigValue.default_runtimeline_merge %>" />
<input type="hidden" name="reportTalkOnlyAllowPost" value="<%= ConfigValue.report_talk_edit_only_allow_post %>" />
<input type="hidden" name="enableAi" value="<%= ConfigValue.enable_ai %>" />

<!-- ariesuser 데이터 -->
<input type="hidden" name="userLanguage" value="${ariesuser.language}" />
<input type="hidden" name="userId" value="${ariesuser.id}" />
<input type="hidden" name="userGroupId" value="${ariesuser.group.id}" />
<input type="hidden" name="userTheme" value="${themeName}" />
<input type="hidden" name="userUniqueAccessUrl" value="${ariesuser.uniqueAccessUrl}" />
<input type="hidden" name="userCustomDashboardCount" value="${ariesuser.expandedDashboardTargetCount}" />

<!-- TODO: 불필요하면 정리해야 하는 기타 데이터 -->
<input type="hidden" name="currentTimeMillis" value="<%= System.currentTimeMillis() %>" />
<input type="hidden" name="renderingLevelDashboard" value="<%= ConfigValue.rendering_level_dashboard %>" />
<input type="hidden" name="domainCount" value="${domainCount}" />
<input type="hidden" name="menuName" value="${menuName}" />
<input type="hidden" name="activeServiceRange" value="${activeServiceRange}" />
<input type="hidden" name="namingAlign" value="${namingAlign}" />
