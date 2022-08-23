<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link type="text/css" rel="stylesheet" href="${project}/member/style_member.css">
<script src="${project}/member/script.js"></script>

	<h2>${page_main}</h2>

<c:if test="${sessionScope.memId ne null}">
		<table>
			<tr>
				<th style="width:300px;"> <span>${sessionScope.memId}</span>${msg_welcome}
			</tr>
			<tr>
				<th>
					<input class="inputbutton" type="button" value="${btn_modify}"
						onclick="location='modifyForm.do'">
					<input class="inputbutton" type="button" value="${btn_delete}"
						onclick="location='deleteForm.do'">
					<input class="inputbutton" type="button" value="${btn_logout}"
						onclick="location='logout.do'">
				</th>
			</tr>
		</table>
</c:if>
<c:if test="${sessionScope.memId eq null}">
		<form name="mainform" method="post" action="loginPro.do" onsubmit="return maincheck()">
			<table border = "1">
				<tr>
					<th colspan="2">
						${msg_main}
					</th>
				</tr>
				<tr>
					<th>${str_id}</th>
					<td><input class="input" type="text" name="id" maxlength="30"></td>
				</tr>
				<tr>
					<th>${str_passwd}</th>
					<td><input class="input" type="password" name="passwd" maxlength="30"></td>
				</tr>
				<tr>
					<th colspan="2">
						<input class = "inputbutton" type="submit" value="${btn_login}">
						<input class = "inputbutton" type="reset" value="${btn_cancel}">
						<input class = "inputbutton" type="button" value="${btn_input}"
							onclick="location='inputForm.do'">
					</th>
				</tr>
			</table>
		</form>
</c:if>