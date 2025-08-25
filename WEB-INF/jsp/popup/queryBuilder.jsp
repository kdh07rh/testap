<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <qb-title
            :active-tab="activeSqlTab"
            :active-schema="activeSchema"
            :disable-schema="disableSchema"
            :is-loading="isRunScript"
            :limit-count="limitCount"
            :limit-timeout="limitTimeout"
            @run-script="onRunScript"
            @reset-script="onResetScript"
            @toggle-schema="onToggleSchema"
            @change-tab="onChangeSqlTab"
            @delete-tab="onDeleteSqlTab"
            @add-tab="onAddSqlTab"
            @change-limit-count="onChangeLimitCount"
            @change-limit-timeout="onChangeLimitTimeout"
    ></qb-title>
    <qb-contents
            :active-output="activeOutput"
            :active-schema="activeSchema"
            :csv-name="activeSqlTab"
            :editor-code="storedCode"
            @change-output="onChangeOutput"
            @add-tab="onAddSqlTab"
            @run-script="onRunScript"
            @update-code="onUpdateEditorCode"
            @ready-editor="onReadyEditor"
    ></qb-contents>

    <alert-window
            :message="alertMessage"
            @cancel="() => (alertMessage = '')"
            v-if="alertMessage !== ''"
    ></alert-window>
</div>
</aries:layout>
</aries:compress>