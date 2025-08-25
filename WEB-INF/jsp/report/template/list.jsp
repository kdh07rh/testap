<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:layout template="base_">
    <div id="app">
        <report-header
                :template="'${templateMenuClass}'"
                :document="'${documentMenuClass}'"></report-header>
        <App
                :directory-key="'${param.directoryKey}'"
        />
    </div>
    <form id="chartStyleForm">
        <input type="hidden" name="codeType" value="all" />
        <textarea name="lineJson" style="display: none;">${style == null ? "{}" : style.line}</textarea>
        <textarea name="barJson" style="display: none;">${style == null ? "{}" : style.bar}</textarea>
        <textarea name="pieJson" style="display: none;">${style == null ? "{}" : style.pie}</textarea>
    </form>
</aries:layout>