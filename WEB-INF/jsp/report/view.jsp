<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <App :subject="'${document.title}'">
        <template #markup>${document.data}</template>
        <template #style-line><textarea>${style == null ? "{}" : style.line}</textarea></template>
        <template #style-bar><textarea>${style == null ? "{}" : style.bar}</textarea></template>
        <template #style-pie><textarea>${style == null ? "{}" : style.pie}</textarea></template>
    </App>
</div>
</aries:layout>
</aries:compress>