<%@ page pageEncoding="UTF-8" extends="com.aries.view.jsp.JspPage" trimDirectiveWhitespaces="false" errorPage="/WEB-INF/jsp/error/error.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.aries.com/taglib" prefix="aries" %>
<%@ taglib uri="http://www.aries.com/taglib/ariesFunctions" prefix="j" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="curl" value="${sessionScope['curl']}"/>