<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:layout template="base_">
    <link rel="stylesheet" type="text/css" media="all" href="<tags:cacheUrl url="/css2/summernote-lite.css"/>"/>

    <script type="text/javascript" src="<tags:cacheUrl url="/script/jquery.webpack.js"/>" charset="utf-8"></script>
    <script type="text/javascript" src="<tags:cacheUrl url="/script/summernote-lite.js"/>" charset="utf-8"></script>

    <div id="main">
        <top-bar
                :doc-key="'${document.key}'"
                :doc-title="'${document.title}'"
                :dir-key="'${document.directoryKey}'"
                :dir-name="'${document.directoryName}'"
                @print="onClickPrintPreview"
                @save="onClickSaveDocument"
                @delete="showDeleteDocumentConfirm"
        ></top-bar>

        <div class="report-layout" :style="editorStyle">
            <div class="report-title">
                <span ref="title" :contenteditable="editableTitle" @keypress="editingReportTitle">${document.title}</span>
                <i class="icon-edit" @click="showEditableReportTitle"></i>
            </div>
            <section class="report-editor" ref="editor">
                <div id="summernote"></div>
            </section>
        </div>
        <table-of-contents
                :height="editorHeight"
                :contents="editorCode"
                :activity="contentsActivity"
                @sync-contents="syncTableOfContents"
                @toggle-contents="toggleTableOfContents"
                @search-contents="searchTableOfContents"></table-of-contents>

        <!-- 템플릿 메타데이터 및 마크업 데이터 -->
        <textarea ref="markup" style="display: none;">${document.data}</textarea>

        <!-- 차트/테이블 컴포넌트 설정시 값이 계속 바뀔 수 있음 -->
        <textarea ref="lineJson" style="display: none;">${style == null ? "{}" : style.line}</textarea>
        <textarea ref="barJson" style="display: none;">${style == null ? "{}" : style.bar}</textarea>
        <textarea ref="pieJson" style="display: none;">${style == null ? "{}" : style.pie}</textarea>

        <alert-window
                :message="alertMessage"
                @cancel="() => (alertMessage = '')"
                v-if="alertMessage !== ''"
        ></alert-window>
        <fade-down>
            <confirm-window
                    :message="confirmMessage"
                    @cancel="() => (confirmMessage = '')"
                    @apply="applyDeleteDocumentConfirm('${document.directoryKey}', '${document.key}')"
                    v-if="confirmMessage !== ''"
            ></confirm-window>
        </fade-down>
    </div>
</aries:layout>