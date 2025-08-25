<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:layout template="base_">
    <div id="app">
        <report-header
                :template="'${templateMenuClass}'"
                :document="'${documentMenuClass}'"></report-header>
        <App
                :is-admin="${isAdmin}"
                :directory-key="'${param.directoryKey}'"
        ></App>
    </div>
</aries:layout>