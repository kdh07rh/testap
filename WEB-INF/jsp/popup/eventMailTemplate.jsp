<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <div class="row-new">
        <div class="left">
            <tab
                    :border-position="'none'"
                    :tabs="[
                        { value: '<tags:message code="ui.label.defaultValue" />', key: 'default' },
                        { value: '<tags:message code="ui.label.custom" />', key: 'custom' },
                    ]"
                    :active-tab="activeTab"
                    @change="onChangeEditorTab"
            ></tab>
        </div>
        <div class="right" align="right">
            <btn :class="['size-small', 'primary']"
                 :items="[{ text: '<tags:message code="ui.label.saveTemp" />' }]"
                 @click="saveEditorCode"></btn>
        </div>
    </div>

    <monaco-editor
            :language="`${param.contentsType}`"
            :theme="editorTheme"
            :width="editorWidth"
            :height="editorHeight"
            :code="editorCode"
            :read-only="editorReadOnly"
            @ready="onReadyMonacoEditor"
            @change="onChangeEditorCode"></monaco-editor>

    <div class="row-new splitter">
        <div>
            <span class="title"><tags:message code="ui.label.preview" /></span>
            <span class="description"><tags:message code="M0605" /></span>
        </div>
        <div align="right"><i @mousedown="onStartResizing" class="icon-grip1 resizer"></i></div>
    </div>

    <template-output
            :content-type="`${param.contentsType}`"
            :height="outputHeight"
            :code="outputCode"
            :subject="`${param.sampleSubject}`"
            :json="`${param.sampleData}`"
            @ready="onReadyTemplateOutput"
    ></template-output>

    <confirm-window
            :message="alertMessage"
            @cancel="() => (alertMessage = '')"
            @apply="applyConfirm"
            v-if="alertMessage !== ''"
    ></confirm-window>

    <!-- 에디터 내용 임시 저장를 위해서 사용함 -->
    <textarea ref="defTpl" style="display: none;">${param.defaultContentsTemplate}</textarea>
    <textarea ref="newTpl" style="display: none;">${param.contentsTemplate}</textarea>
</div>
</aries:layout>
</aries:compress>