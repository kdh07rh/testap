<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
    <div id="app">
        <div class="title"><tags:message code="ui.label.compareCode" /></div>
        <code-diff
                :base-text="`${param.baseText}`"
                :new-text="`${param.newText}`"
                :pretty-text="`${param.prettyText}`"
                :use-escaping="${param.useEscaping == '' ? false : true}"
        ></code-diff>
    </div>
</aries:layout>
</aries:compress>