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
<style>
#demo{overflow:hidden;width:120px;text-align:center;padding:10px;}
.erweima{border:3px solid #eeeeee;width:50px;height:50px;}
#enlarge_images{position:absolute;display:none;z-index:2;}
</style>
<div id="enlarge_images" style=""></div>
<div class="footer">
	<!-- 深圳市中级人民法院 &copy;版权 深圳市福田区彩田北路6003号 邮编518036 电话：0755-83535000 www.szcourt.gov.cn ICP备案：<A style="COLOR: #737373" href="http://www.miitbeian.gov.cn/" target=_blank>粤ICP备05027873号</A><br />
	Copyright&nbsp;&copy;2011&nbsp;shenzhen&nbsp;Intermediate&nbsp;People's&nbsp;Court,All&nbsp;Rights&nbsp;Reserved. -->
	<A href="http://12368.szcourt.gov.cn" target=_blank style="color:grey">12368.szcourt.gov.cn</A> 深圳市中级人民法院 ©版权 深圳市福田区彩田北路6003号 邮编518036 电话：0755-12368&nbsp; ICP备案：<A style="COLOR: rgb(115,115,115)" href="http://www.miitbeian.gov.cn/" target=_blank>粤ICP备05027873号</A><br>
	法院链接&nbsp;&nbsp;<A href="http://www.szcourt.gov.cn/first.aspx" target=_blank style="color:grey">深圳市中级人民法院</A>&nbsp;&nbsp;<A href="http://www.ftcourt.gov.cn/" target=_blank style="color:grey">福田区人民法院</A>
	&nbsp;&nbsp;<A href="http://www.szlhfy.gov.cn/" target=_blank style="color:grey">罗湖区人民法院</A>&nbsp;&nbsp;<A href="http://nsqfy.chinacourt.org/" target=_blank style="color:grey">南山区人民法院</A>
	&nbsp;&nbsp;<A href="http://www.shenpan.cn/" target=_blank style="color:grey">盐田区人民法院</A>&nbsp;&nbsp;<A href="http://www.bafy.gov.cn/" target=_blank style="color:grey">宝安区人民法院</A>
	&nbsp;&nbsp;<A href="http://www.fy.lg.gov.cn/" target=_blank style="color:grey">龙岗区人民法院</A>
	<!-- <br /><span style="font-size: 12px;">由<a target="_blank" href="http://www.hc-77.com/"  style="font-size: 12px;">深圳市弘长科技有限公司</a>提供技术支持</span> -->
	<div style="width: 100%;text-align: center;">
	<div style="text-align: center;margin-left: auto;margin-right: auto;" id="enlarge_images"></div>
		<!-- <div id="enlarge_images" ></div> -->
		<div id="demo"></div>  
		<table style="text-align: center;margin-left: auto;margin-right: auto;">
			<tr >
				<td width="80px;"><img src="<spring:url value="/images/guanwang.png"/>" width="60" height="60" id="guanwang" class="erweima"/></td>
				<td width="80px;"><img src="<spring:url value="/images/susongfuwu.png"/>" width="60" height="60" id="ss" class="erweima"/></td>
				<td width="80px;"><img src="<spring:url value="/images/weibo.png"/>" width="60" height="60" id="weibo" class="erweima"/></td>
				<td width="80px;"><img src="<spring:url value="/images/weixin.png"/>" width="60" height="60" id="weixin" class="erweima"/></td>
			</tr>
			<tr>
				<td style="font-size: 12px !important;">
				官网
				</td>
				<td style="font-size: 12px !important;">
				诉讼服务平台
				</td>
				<td style="font-size: 12px !important;">
				微博
				</td>
				<td style="font-size: 12px !important;">
				中院微信
				</td>
			</tr>
		</table>
	</div> 
	</div>
<!--     <div id="enlarge_images"></div> -->
<script type="text/javascript">
$(function(){
	
});
var demo = document.getElementById("demo");
var gg = $(".erweima");
var ei = document.getElementById("enlarge_images");
for(i=0; i<gg.length; i++){
	var ts = gg.get(i);
	ts.onclick = function(event){
//		event = event || window.event;
//        event = ts;

        if(ei.innerHTML==""){
		ei.style.display = "block";
		ei.innerHTML = '<img style="height:300px;width:300px;" src="' + this.src + '" />';
		var top = getTop(ts);
		var left = getLeft(ts);
		var width = document.body.offsetWidth;
		if(window.outHeight==screen.height&&window.outerWidth==screen.width){	
			if(typeof window.addEventListener==="function"){
				ei.style.top  = top -300+ "px";
		        ei.style.left = left -240+ "px"; 
//				 ei.style.left = $("#trid").offsetLeft +"px";
			}
			else{
				
				ei.style.top  =  top-300  + "px";
		        ei.style.left = left +70 + "px";	 
//		        ei.style.left = $("#trid").offsetLeft +"px";
			}
//		ei.style.top  = document.body.scrollTop + 350 + "px";
       /*  ei.style.top  = top - 300 + "px";
        ei.style.left = left-195 + "px"; */
        //offsetHeight
        //offsetWidth
        }
        else{
        	if(typeof window.addEventListener==="function"){//其他浏览器
        		
				ei.style.top  = top -300+ "px";
		        ei.style.left = left -240+ "px"; 
//		        ei.style.left = $("#trid").offsetLeft +"px";
			}
			else{//IE浏览器
				
				ei.style.top  =  top-300  + "px";
		        ei.style.left = left +70 + "px"; 	
//		        ei.style.left = $("#trid").offsetLeft +"px";
			}
        }
        }
        else if(ei.innerHTML !=""){
        	ei.innerHTML = "";
    		ei.style.display = "none";
        } 
	}
	ei.onclick = function(){
		ei.innerHTML = "";
		ei.style.display = "none";
	}
	  /* ts.onmouseout = function(){
		ei.innerHTML = "";
		ei.style.display = "none";
	}   */
	ei.onfocusout = function(){
		ei.innerHTML = "";
		ei.style.display = "none";
	}
	
	   /* document.onclick = function(){
		 if(ei.innerHTML !=""){
			 alert(123); */
		/* ei.innerHTML = "";
		ei.style.display = "none"; */
//		} 
//	}   
}
//获取元素的纵坐标
function getTop(e){ 
	var offset=e.offsetTop; 
	if(e.offsetParent!=null) offset+=getTop(e.offsetParent); 
	return offset; 
	} 
	//获取元素的横坐标 
	function getLeft(e){ 
	var offset=e.offsetLeft; 
	if(e.offsetParent!=null) offset+=getLeft(e.offsetParent); 
	return offset; 
	} 
function makeNewWindow(url){
}
</script>

