<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="app">
    <tool-title></tool-title>
    <div class="side-view">
        <tool-side
            :width="sideWidth"
            :height="sideViewHeight"
            :code-type="'${param.codeType}'"
        ></tool-side>
        <tool-view
            :width="viewWidth"
            :height="sideViewHeight"
            :code-type="'${param.codeType}'"
        ></tool-view>

        <textarea ref="lineJson" style="display: none;">${param.lineJson}</textarea>
        <textarea ref="barJson" style="display: none;">${param.barJson}</textarea>
        <textarea ref="pieJson" style="display: none;">${param.pieJson}</textarea>
    </div>
<%--   <button id="submit" class="btn small">Submit</button>--%>
</div>
</aries:layout>
</aries:compress>