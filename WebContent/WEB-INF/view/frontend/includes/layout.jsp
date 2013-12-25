<%-- 
  -- @author heguokun
  -- @date 2012-5-22
  -- Usage:
  --	页面框架布局。由Tiles通过/WEB-INF/tiles/tiles.xml定义并引用。
  --	提供了页面总的css和script引用。
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
<%@ include file="/WEB-INF/view/frontend/include.jsp"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<!-- <tiles:getAsString name="body"/> -->
<c:if test="${param.mode=='engineering' }">
<!-- <tiles:getAsString name="body"/> -->
</c:if>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta property="wb:webmaster" content="6cb82472f8803320" />
<meta name="keywords" content="深圳,法院,诉讼,服务,平台,法律,免费法律宣传,深圳市中级人民法院,深圳法院,深圳市福田区人民法院,福田法院,深圳市南山区人民法院，南山法院,深圳市盐田区人民法院,盐田法院,深圳市宝安区人民法院，宝安法院,深圳市龙岗区人民法院，龙岗法院,司法为民,司法公开,社会主义法治理念,执行公开,执行曝光,阳光审判,裁判文书,网上立案,现代化法院" />
<meta name="description" content="为了进一步推动深圳两级法院在更广范围、更宽领域、更深层次推广司法公开以及司法为民服务，深圳法院网上诉讼服务平台，提供给公众一个涵盖全市各级法院的、高效的、便捷的司法公开服务平台。" />
<jsp:include page="/WEB-INF/view/frontend/includes/css.jsp"/>
<title>深圳法院网上诉讼服务平台</title>
	<%-- 公共js脚本 --%>
	<jsp:include page="/WEB-INF/view/frontend/includes/js.jsp"/>
	<c:set var="req" value="${pageContext.request}" />
	<!-- <script>var base = '${fn:replace(req.requestURL, fn:substring(req.requestURI, 0, fn:length(req.requestURI)), req.contextPath)}';</script> -->
	<script>
	    var base = '${req.contextPath}';
	    if (base == null || base == '')
	        base = '/';
	</script>
	<style type="text/css">
		.top * , .content *  , .bottom * {
			font-size: 12px;
			font-family: 微软雅黑,黑体,宋体;
		}
				
		.nav_siderbar * {
			font-family: 微软雅黑,黑体,宋体 !important;
		}
	</style>
</head>
<body class="neiye">
	<%-- 顶部导航 --%>
	<tiles:insertAttribute name="top" />
	
	<%-- 中部内容 --%>
	<div class="main">
		<%-- 侧边菜单 --%>
		<tiles:insertAttribute name="sidebar" />
		
		<%-- 主体内容 --%>
		<div class="content">
			<tiles:insertAttribute name="body" />
		</div><!--/#mainContent -->
	</div><!--/#container -->
	
	<%-- 底部页脚 --%>
	<tiles:insertAttribute name="bottom" />
	
	<%-- 其他js脚本 --%>
</body>
</html>