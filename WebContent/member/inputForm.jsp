<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link type="text/css" rel="stylesheet" href="${project}/member/style_member.css">
<script src="${project}/member/script.js"></script>
    
    <h2>${page_input}</h2>

    <form name="inputform" method="post" action="inputPro.do" onsubmit="return inputcheck()">
    	<input type="hidden" name="check" value="0">
    	<table border="1">
    		<tr>
    			<th colspan="2">${msg_input}</th>
    		</tr>
    		<tr>
				<th>${str_id}</th>
				<td>
					<input class="input" type="text" name="id" maxlength="30" autofocus>
					<input class="inputbutton" type="button" value="${btn_confirm}"
						onclick="confirm()">
				</td>
			</tr>
			<tr>
				<th rowspan="2">${str_passwd}</th>
				<td><input class="input" type="password" name="passwd" maxlength="30"></td>
			</tr>
			<tr>
				<td><input class="input" type="password" name="repasswd" maxlength="30"></td>
			</tr>
			<tr>
				<th>${str_name}</th>
				<td><input class="input" type="text" name="name" maxlength="30"></td>
			</tr>
			<tr>
				<th>${str_jumin}</th>
				<td><input class="input" type="text" name="jumin1" maxlength="6" style="width:50px;"
						onkeyup="nextjumin1()">
					- <input class="input" type="text" name="jumin2" maxlength="7" style="width:60px;"
						onkeyup="nextjumin2()">
				</td>
			</tr>
			<tr>
				<th>${str_tel}</th>
				<td><input class="input" type="text" name="tel1" maxlength="3"  style="width:30px;"
						onkeyup="nexttel1()">
					-<input class="input" type="text" name="tel2" maxlength="4" style="width:40px;"
						onkeyup="nexttel2()">
					-<input class="input" type="text" name="tel3" maxlength="4" style="width:40px;"
						onkeyup="nexttel3()">
				</td>
			</tr>
			<tr>
				<th>${str_email}</th>
				<td>
					<input class="input" type="text" name="email1" maxlength="15" style="width:100px;">
					@
					<select name="email2">
						<option value="0">직접입력</option>
						<option value="daum.net">다음</option>
						<option value="naver.com">네이버</option>
						<option value="gmail.com">구글</option>
						<option value="nate">네이트</option>
					</select>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="submit" value="${btn_input}">
					<input class="inputbutton" type="reset" value="${btn_cancel}">
					<input class="inputbutton" type="button" value="${btn_input_cancel}"
					onclick="location='main.do'">
			</tr>
    	</table>
    </form>