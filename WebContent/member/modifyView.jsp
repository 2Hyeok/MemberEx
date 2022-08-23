<%@page import="java.text.SimpleDateFormat"%>
<%@page import="member.LogonDataBean"%>
<%@page import="member.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link type="text/css" rel="stylesheet" href="${project}/member/style_member.css">
<script src="${project}/member/script.js"></script>

<h2>${page_modify}</h2>

<c:if test="${result eq 0}">
	<script type="text/javascript">
		<!--
		erroralert(passwderror);
		//-->>
	</script>
</c:if>
<c:if test="${result ne 0}">
		<form name="modifyform" method="post" action="modifyPro.do" onsubmit="return modifycheck()">
			<table>
				<tr>
					<th colspan="2"> ${msg_modify} </th>
				</tr>
				<tr>
					<th> ${str_id} </th>
					<td> &nbsp; ${dto.id} </td> <!-- get을 빼는 이유는 바로 가져올 수 있어서 request.dto.getId(), or dto.getId() 이런식 작성도 가능-->
				</tr>
				<tr>
					<th rowspan="2">${str_passwd}</th>
					<td>
						<input class="input" type="password" name="passwd" maxlength="30" value="${dto.passwd}">
					</td>		
				</tr>
				<tr>
					<td>
						<input class="input" type="password" name="repasswd" maxlength="30" value="${dto.passwd}">
					</td>
				</tr>
				<tr>
					<th>${str_name}</th>
					<td>&nbsp;${dto.name}</td>
				</tr>
				<tr>
					<th>${str_jumin}</th>
					<td>&nbsp;${dto.jumin1} - ${dto.jumin2}</td>
				</tr>
				<tr>
					<th>${str_tel}
					<td>
						<c:if test="${dto.tel == null or dto.tel == '' }">
							<input class="input" type="text" name="tel1" maxlength="3" style="width:30px">
							- <input class="input" type="text" name="tel2" maxlength="4" style="width:40px">
							- <input class="input" type="text" name="tel3" maxlength="4" style="width:40px">
						</c:if>
						<c:if test="${dto.tel != null and dto.tel != ''}">
							<c:set var="t" value="${fn:split(dto.tel, '-')}"/> <!-- t라는 이름의 배열 생성, -로 잘라라 추가 -->
								<input class="input" type="text" name="tel1" maxlength="3" style="width:30px" value="${t[0]}">
								- 	<input class="input" type="text" name="tel2" maxlength="4" style="width:40px" value="${t[1]}">
								- 	<input class="input" type="text" name="tel3" maxlength="4" style="width:40px" value="${t[2]}">
						</c:if>
					</td>
				</tr>
				<tr>
					<th>${str_email}</th>
					<td>
						<c:if test="${dto.email == null or dto.email == ''}">
							<input class="input" type="text" name="email1" maxlength="15" style="width:100px">
							@
							<input class="input" type="text" name="email2" maxlength="15" style="width:100px">
						</c:if>
						<c:if test="${dto.email != null and dto.email != ''}">
							<c:set var="e" value="${fn.split(dto.email, '@')}"/>
								<input class="input" type="text" name="email1" maxlength="15" style="width:100px" value="${e[0]}">
								@
								<input class="input" type="text" name="email2" maxlength="15" style="width:100px" value="${e[1]}">
						</c:if>
					</td>
				</tr>
				<tr>
					<th>${str_reg_date}</th>
					<td>
						&nbsp;<fmt:formatDate value="${dto.reg_date}" pattern="yyyy-MM-dd HH:mm"/>
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<input class="inputbutton" type="submit" value="${btn_mod}">
						<input class="inputbutton" type="reset" value="${btn_cancel}">
						<input class="inputbutton" type="button" value="${btn_mod_cancel}"
							onclick="location='main.do'">
					</th>
				</tr>
			</table>
		</form>
</c:if>