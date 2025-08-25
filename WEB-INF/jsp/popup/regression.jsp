<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="popupContentBody">
    <div id="app">
        <regression
            :x-index="${param.xIndex}"
            :y-index="${param.yIndex}"
            :x-label="'${param.xLabel}'"
            :y-label="'${param.yLabel}'"
            :x-min="${param.xMin}"
            :y-min="${param.yMin}"
            :x-max="${param.xMax}"
            :y-max="${param.yMax}"
            :interval="${param.interval}"
            :regression="regression"
            :points="points"
        ></regression>

        <span ref="title" style="display: none;">${param.yLabel} / ${param.xLabel}</span>
        <span ref="regression" style="display: none;">${param.regression}</span>
        <span ref="points" style="display: none;">${param.points}</span>
    </div>
</div>
</aries:layout>
</aries:compress>