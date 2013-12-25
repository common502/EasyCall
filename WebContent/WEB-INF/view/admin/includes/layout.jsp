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
<%@ include file="/WEB-INF/view/admin/include.jsp"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<!-- <tiles:getAsString name="body"/> -->
<c:if test="${param.mode=='engineering' }">
<!-- <tiles:getAsString name="body"/> -->
</c:if>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/view/admin/includes/css.jsp"/>
<title>深圳法院网上诉讼服务平台-<tiles:getAsString name="title"/></title>
	<%-- 公共js脚本 --%>
	<jsp:include page="/WEB-INF/view/admin/includes/js.jsp"/>
	<c:set var="req" value="${pageContext.request}" />
	<!-- <script>var base = '${fn:replace(req.requestURL, fn:substring(req.requestURI, 0, fn:length(req.requestURI)), req.contextPath)}';</script> -->
	<script>var base = '${req.contextPath}';</script>
	<style type="text/css">
	* {
			font-size: 14px;
			font-family: 微软雅黑,黑体,宋体 !important;
		}
	</style>
</head>
<body style="margin: 0;padding: 0;">
	<%-- 顶部导航 --%>
	<tiles:insertAttribute name="top" />
	
	<%-- 中部内容 --%>
	<div id="container" class="container-fluid">
		<%-- 侧边菜单 --%>
		<tiles:insertAttribute name="sidebar" />
		
		<%-- 主体内容 --%>
		<div id="mainContent" class="fluid-content" style="margin-top: 4px;">
			<div class="row-fluid">
    			<div class="span12">
	    			<%-- 面包屑路径 --%>
		    		<ul class="breadcrumb">
			    		<li><a href="<c:url value="/"/>"><i class="icon-home"></i> 主页</a></li>
			    		<c:forEach var="uri" items="${breadcrumb }" varStatus="status">
			    			
			    				<spring:url value="${uri.link}" var="link"/>
			    				<li>
			    				<c:if test="${!status.last }">
			    				 <span class="divider"> > </span> 
			    				 <c:if test="${!empty uri.link }">
			    				 	<!-- <a href='${link }'>${uri.item }</a> -->
			    				 	<a href='#'>${uri.item }</a>
			    				 </c:if>
			    				 <c:if test="${empty uri.link }">
			    				 	<a href='#'>${uri.item }</a>
			    				 </c:if>
			    				</c:if>
			    				<c:if test="${status.last }">
			    				 <span class="divider"> > </span> ${uri.item }
			    				</c:if>
			    				</li>
			    		</c:forEach>
					</ul>
					
					<!-- Message -->
					<c:if test="${!empty message }">
						<c:choose>
							<c:when test="${messageType=='error' }">
								<div class="alert alert-error">
									<button class="close" data-dismiss="alert">×</button>
									<strong>操作失败!</strong>
									${message}
									<c:if test="${!empty detailLink}"><a href="<spring:url value="${detailLink }"/>" target="_blank">点击查看</a></c:if>
								</div>
							</c:when>
							<c:when test="${messageType=='warning' }">
								<div class="alert alert-warning">
									<button class="close" data-dismiss="alert">×</button>
									<strong>注意!</strong>
									${message}
									<c:if test="${!empty detailLink}"><a href="<spring:url value="${detailLink }"/>" target="_blank">点击查看</a></c:if>
								</div>
							</c:when>
							<c:when test="${messageType=='info' }">
								<div class="alert alert-info">
									<button class="close" data-dismiss="alert">×</button>
									${message}
									<c:if test="${!empty detailLink}"><a href="<spring:url value="${detailLink }"/>" target="_blank">点击查看</a></c:if>
								</div>
							</c:when>
							<c:when test="${messageType=='success' }">
								<div class="alert alert-success">
									<button class="close" data-dismiss="alert">×</button>
									<strong>操作成功!</strong>
									${message}
									<c:if test="${!empty detailLink}"><a href="<spring:url value="${detailLink }"/>" target="_blank">点击查看</a></c:if>
								</div>
							</c:when>
							<c:otherwise>
								<div class="alert alert-success">
									<button class="close" data-dismiss="alert">×</button>
									<strong>操作成功!</strong>
									${message}
									<c:if test="${!empty detailLink}"><a href="<spring:url value="${detailLink }"/>" target="_blank">点击查看</a></c:if>
								</div>
							</c:otherwise>
						</c:choose>
					</c:if>
					
					<!-- All page contents GO HERE -->
			    	<tiles:insertAttribute name="body" />
					<!-- All page contents END HERE -->
				</div><!-- /.span12 -->
    		</div><!-- /.row-fluid -->
		</div><!--/#mainContent -->
	</div><!--/#container -->
	
	<%-- 底部页脚 --%>
	<tiles:insertAttribute name="bottom" />
	
	<%-- 其他js脚本 --%>
	<script>
	$(document).ready(function(){
		$('.date-picker').datepicker({language:'zh-CN',format:'yyyy-mm-dd',autoclose:true});
		
		$('.time-picker').click(function(){
			if($(this).val()=='00:00'){
				var today=new Date();
				$(this).timepicker('setTime', today.getHours()+":"+today.getMinutes());
			}
		});
		$('.time-picker').parent().addClass('bootstrap-timepicker');
		$('.time-picker').timepicker({showSeconds:false, showMeridian:false, minuteStep:1, defaultTime:false });
		$('.datetime-picker').datetimepicker();
	});
	</script>
</body>
</html>