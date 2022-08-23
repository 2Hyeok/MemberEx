<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link type="text/css" rel="stylesheet" href="${project}/member/style_member.css">
<script src="${project}/member/script.js"></script>

<h2>${page_delete}</h2>
    
<form method="post" name="passwdform" action="deletePro.do" onsubmit="return passwdcheck()">
	<table>
		<tr>
			<th colspan="2">${msg_passwd}</th>
		</tr>
		<tr>
			<th>${str_passwd}</th>
			<td><input class="input" type="password" name="passwd" maxlength="30" autofocus></td>
		</tr>
		<tr>
			<th colspan="2">
				<input class = "inputbutton" type="submit" value="${btn_del}">
				<input class = "inputbutton" type="button" value="${btn_del_cancel}"
				onclick="location='main.do'">
			</th>
		</tr>
	</table>
</form>