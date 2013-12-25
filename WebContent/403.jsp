<%-- 
  -- @author heguokun
  -- @date 2012-9-10
  -- Usage:
  --	None.
  -- Refer URL:
  --	None.
  -- Model List:
  --	None.
  -- Get/Post Data:
  --	None.
  -- Action URL:
  --	None.
  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/admin/include.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/view/admin/includes/css.jsp"/>
<title>权限不足</title>
	<%-- 公共js脚本 --%>
	<jsp:include page="/WEB-INF/view/admin/includes/js.jsp"/>
	<c:set var="req" value="${pageContext.request}" />
	<!-- <script>var base = '${fn:replace(req.requestURL, fn:substring(req.requestURI, 0, fn:length(req.requestURI)), req.contextPath)}';</script> -->
	<script>var base = '${req.contextPath}';</script>
</head>
<body>
	<%-- 顶部导航 --%>
	<jsp:include page="/WEB-INF/view/admin/includes/top.jsp"/>
	<%-- 主体内容--%>
	<div id="container" class="container">
		<div class="alert alert-error alert-block">
  			<h1>权限不足！</h1>
  			您没有足够的权限访问该功能。
		</div>
	</div>
</body>
</html>