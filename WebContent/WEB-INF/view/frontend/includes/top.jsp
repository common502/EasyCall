<%-- 
  -- @author heguokun
  -- @date 2012-5-20
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
<%@ include file="/WEB-INF/view/frontend/include.jsp"%>
<div class="neiye">
<div class="head">
	<div class="logo">
		<img src="<spring:url value="/images/szcourt.png"/>"/>
	</div>
	<div class="identify" style="padding-top: 65px;">
		<%-- <table>
			<tr>
				<td width="500px"></td>
				<td>
					<form action="" method="get" id="query">
					<!-- <input class="search_box" type=text name=word  onfocus="if (this.value=='输入查询关键字') this.value='';" value="输入查询关键字" title='输入查询关键字' placeholder="输入查询关键字"> -->
					<input class="search_box" type=text name='key' value="${key }" title='输入查询关键字' placeholder="输入查询关键字">
					<input class="search_btn" type="submit" value="">
					<input name=tn type=hidden value="bds">
					<input name=cl type=hidden value="3">
					<input name=ct type=hidden value="2097152">
					<input name=si type=hidden value="v.hc-77.com/szcourt">
					<input type="hidden" name="page" value="0"/>
					<!-- 隐藏表单，用于搜索时传递法院信息 -->
					<input type="hidden" value="${court }" name="court">
					<!-- 案件编号 -->
					<input type="hidden" value="${currentLawCase.id }" name="caseId">
					</form>
				</td>
			</tr>
		</table>	 --%>
		<div class="lead">
			<table>
			<c:set var="check" value="${check}"></c:set>
			<tr>
			
				<td class="sanjiao"><img src="<spring:url value="/images/sanjiao.jpg"/>"/></td>
				<td><a <c:if test="${rootColumn eq 'susongyindao' || requestUrl == 'judgeName'}">class="actived"</c:if> href="<spring:url value="/frontend/susongyindao/workInfo/1/"/>"><span class="text" style="font-family: 微软雅黑,黑体,宋体;">诉讼引导</span></a></td>
				<td class="sanjiao"><img src="<spring:url value="/images/sanjiao.jpg"/>"/></td>
				<td><a <c:if test="${rootColumn eq 'woyaolian'}">class="actived"</c:if> href="<spring:url value="/frontend/woyaolian/register/Belong/"/>"><span class="text" style="font-family: 微软雅黑,黑体,宋体;">立案服务</span></a></td>
				<td class="sanjiao"><img src="<spring:url value="/images/sanjiao.jpg"/>"/></td>
				<td><a <c:if test="${(rootMenu eq '/frontend/wodeanjian' ||  requestUrl == 'caseOpen' || requestUrl == 'live' || column.id == 42 || column.id == 57 || requestUrl=='session' || loginStyle==2) && check != 8}">class="actived"</c:if> href="<spring:url value="/frontend/anjiangongkai/caseOpen"/>"><span class="text" style="font-family: 微软雅黑,黑体,宋体;">审判流程公开</span></a></td>
				<td class="sanjiao"><img src="<spring:url value="/images/sanjiao.jpg"/>"/></td>

				<%-- <td><a <c:if test="${(fatherColumn.id eq 20  || requestUrl=='judgeDocument')}">class="actived"</c:if> href="<spring:url value="/frontend/anjiangongkai/JudgeDocument/21?ajlb=2"/>"><span class="text" style="font-family: 微软雅黑,黑体,宋体;">裁判文书公开</span></a></td> --%>

				<td><a <c:if test="${(fatherColumn.id eq 20 || requestUrl=='judgeDocument')}">class="actived"</c:if> href="<spring:url value="/frontend/anjiangongkai/JudgeDocument/21?ajlb=2&fydm=440300"/>"><span class="text" style="font-family: 微软雅黑,黑体,宋体;">裁判文书公开</span></a></td>

				<td class="sanjiao"><img src="<spring:url value="/images/sanjiao.jpg"/>"/></td>
				<td><a <c:if test="${rootColumn eq 'zhixinggongkai' || requestUrl=='caseOpenZxaj' || requestUrl == '/frontend/zhixinggongkai/rizhiList' || (loginStyle == 1 && requestUrl == '/frontend/wodeanjian/mycase')}"> class="actived"</c:if>   href="<spring:url value="/frontend/anjiangongkai/caseOpen/zxaj?check=8"/>" ><span class="text" style="font-family: 微软雅黑,黑体,宋体;">执行信息公开</span></a></td>
				<td class="sanjiao"><img src="<spring:url value="/images/sanjiao.jpg"/>"/></td>
				<td class="last"><a <c:if test="${rootColumn eq 'zixunbangzhu'}">class="actived"</c:if> href="<spring:url value="/frontend/zixunbangzhu/QandA/"/>"><span class="text" style="font-family: 微软雅黑,黑体,宋体;">咨询帮助</span></a></td>
			</tr>
		</table>
		</div>
	</div>
</div>
</div>
<script>
$(document).ready(function(){
	$('.logo').click(function(){
		window.location.href=base;
	});
});

var fobj=null;
function setColor(obj){
	if(fobj!=null){
		fobj.css({background:'#FFFFFF'});
	}
	$(obj).css({background:'#62A820'});
	fobj = $(obj);
}
function getValue(obj){
	$("input[name='key']").val($(obj).text());
}

var url = null;
$("input[name='key']").focus(function(e){
	var obj = $("input[name='key']").offset();
	var xx = obj.top + 26;
	var yy = obj.left+1;
	$("#query").append("<div id='qdiv'></div>");
	$("#qdiv").css({background:'#FFFFFF',border:'1px solid #62A820',position:'absolute',width:157+"px",top:xx+'px',left:yy+'px'});
	var title = $("a.actived").first().text();
	if(title=="诉讼引导"){
		
		if($("li.actived").attr("id")=="sszn"){
			$("#qdiv").append("<li style='list-style:none;' onmousemove='setColor(this)'  onmousedown='getValue(this)'>交通事故</li>"
				+"<li style='list-style:none;' onmousemove='setColor(this)' onmousedown='getValue(this)'>合同纠纷</li>");
			url = "<spring:url value="/frontend/${rootColumn}/column/9"/>";
		}else if($("li.actived").attr("id")=="gsws"){
			$("#qdiv").append("<li style='list-style:none;' onmousemove='setColor(this)' onmousedown='getValue(this)'>身份证明书</li>"
					+"<li style='list-style:none;' onmousemove='setColor(this)' onmousedown='getValue(this)'>财产</li>"
					+"<li style='list-style:none;' onmousemove='setColor(this)' onmousedown='getValue(this)'>民事起诉状</li>"
					+"<li style='list-style:none;' onmousemove='setColor(this)' onmousedown='getValue(this)'>授权委托书</li>");
			url = "<spring:url value="/frontend/${rootColumn}/column/10"/>";
		}else if($("li.actived").attr("id")=="lazy"){
			$("#qdiv").append("<li style='list-style:none;' onmousemove='setColor(this)'  onmousedown='getValue(this)'>合同</li>"
					+"<li style='list-style:none;' onmousemove='setColor(this)' onmousedown='getValue(this)'>离婚</li>"
					+"<li style='list-style:none;' onmousemove='setColor(this)' onmousedown='getValue(this)'>财产</li>");
			url = "<spring:url value="/frontend/${rootColumn}/column/15"/>";
		}else{
			url = null;
		}
	}else if(title=="咨询帮助"){
		if($("li.actived").attr("id")=="bwbd"){
			url = "<spring:url value="/frontend/${rootColumn }/QandA/"/>";
		}
	}else if(title=="我的案件"){
		//判断我的案件的div是否存在，如果存在可以进行关键字模糊查询
		if($("#wdaj").html()!=null){
			url = "<spring:url value="/frontend/wodeanjian/mycase/validate"/>";
		} 
		//如果当前是“材料收转”
		if($("li.actived").attr("id")=="clsz"){
			//使用当前页面的url
			url= "<spring:url value="/frontend/wodeanjian/testimony/list" />";
		}
	}else if(title=="司法公开"){
		//如果当前的是“公告专栏”的“送达公告”
		<c:if test="${column != null}">
		if(${column.id} == 42){
			url = "<spring:url value="/frontend/anjiangongkai/column/42/information/"/>";
		}
		//如果当前是“公告专栏”的“执行公告”
		if(${column.id} == 43){
			url = "<spring:url value="/frontend/anjiangongkai/column/43/information/"/>";
		}
		</c:if>
		//如果当前是“裁判文书”
		if($("li.actived").attr("id")=="cpws"){
			//使用当前页面的url
			url= "";
		}
		//如果当前是“司法公开的案件流程公开滚动信息的关键字查询”
		if($("a.active").attr("id")=="ajgk"){
			url= "<spring:url value="/frontend/anjiangongkai/caseOpen/key"/>";
		}
	}else if(title=="立案服务"){
		//如果当前是"立案指引"
		if($("li.actived").attr("id")=="lazy"){
			$("#qdiv").append("<li style='list-style:none;' onmousemove='setColor(this)'  onmousedown='getValue(this)'>合同</li>"
					+"<li style='list-style:none;' onmousemove='setColor(this)' onmousedown='getValue(this)'>离婚</li>"
					+"<li style='list-style:none;' onmousemove='setColor(this)' onmousedown='getValue(this)'>财产</li>");
			url = "<spring:url value="/frontend/${rootColumn}/column/15"/>";
		}
	}else if(title=="审判流程公开"){
		//如果当前是案件流程公开的社会公众查询滚动信息的关键字查询”
		if($("li.actived").attr("id")=="ajgk"){
			url= "<spring:url value="/frontend/anjiangongkai/caseOpen/key"/>";
		}
		if($("li.actived").attr("id")!="ajgk"){
			url = "<spring:url value="/frontend/wodeanjian/mycase/validate"/>";
		}
	}else if(title=="裁判文书公开"){
		url= "";
	}
	$("#qdiv").hide();
	$("#qdiv").slideDown(800);
	
});

$("input[name='key']").blur(function(e){
	$("#qdiv").remove();
});

$("#query").submit(function(){
	
	if (url!=null){
		$("#query").attr("action",url);
		return true;
	}else if(url==""){
		return true;
	}else{
		return false;
	}
});

$(window).resize(function(){
	if ($("#qdiv")!=null){
		var obj = $("input[name='key']").offset();
		var xx = obj.top + 26;
		var yy = obj.left+1;
		$("#qdiv").css("top",xx);
		$("#qdiv").css("left",yy);
	}
});

</script>