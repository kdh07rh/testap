<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:layout template="base_">
    <div id="app">
        <search-bar
                @active-form="onClickFormShow"
                @change-favorite="onChangeFavorite"
        ></search-bar>

        <div class="main-bottom">
            <loading-indicator v-if="isLoading"></loading-indicator>

            <talk-list v-if="articles.length > 0"></talk-list>
            <talk-contents v-if="articles.length > 0"
                    @active-form="onClickFormShow"
                   @comment-error="() => alertMessage = '<tags:message code="M0616" />'"
            ></talk-contents>
            <div class="no-data" v-if="!isLoading && articles.length === 0"><tags:message code="M0004" /></div>
        </div>

        <talk-window
                :draggable="false"
                :messages="messages"
                @cancel="onCancelFormLayer"
                @apply="onApplyFormLayer"
                :style="formStyles">
            <template v-slot:subject>
                <input v-model="formSubject" type="text" placeholder="<tags:message code="M0273" />" maxlength="40" />
            </template>
            <div ref="dragUploader" class="main" style="opacity: 0;">
                <textarea v-model="formContent" :readonly="contentReadOnly"></textarea>
                <div class="files" :title="filesTitle">
                    <div class="file" v-for="file in formFiles" :key="file.id">
                        <div>{{ file.originalName }} <small>({{ Math.round(file.size / 1024) }}KB)</small></div>
                        <span @click="onDeleteUploadFile(file.fileKey)"><svg-icon :icon="'close'" :width="14" :height="14" /></span>
                    </div>
                </div>
                <div class="message"><tags:message code="M0086" /></div>
            </div>
            <template v-slot:tools>
                <input ref="uploader" type="file" class="file-input" multiple="multiple" />
                <div class="file-icon">
                    <svg-icon :icon="'clip'" :width="18" :height="18" />
                </div>
                <div class="file-text"><tags:message code="M0367" /></div>
            </template>
        </talk-window>

        <alert-window
                :message="alertMessage"
                @cancel="() => (alertMessage = '')"
                v-if="alertMessage !== ''"
        ></alert-window>
    </div>
</aries:layout>
