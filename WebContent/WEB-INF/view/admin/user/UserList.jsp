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
<%@ include file="/WEB-INF/view/admin/include.jsp"%>
<div>
	用户信息列表
	<!-- 用户存在 对应的案件信息-->
	<c:if test="${(! empty userList) && (fn:length(userList)>0)}">
		<table>
			<thead>
				<tr>
					<td>ID</td>
					<td>电话号码</td>
					<td>密码</td>
					<td>电子邮箱</td>
					<td>注册时间</td>
					<td>最后一次登录时间</td>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${userList }" var="item" varStatus="status">
				<tr>
					<td>${item.pkId }</td>
					<td>${item.phoneNumber }</td>
					<td>${item.passwd }</td>
					<td>${item.email }</td>
					<td>${item.registerTime }</td>
					<td>${item.lastLoginTime }</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</c:if>
</div>