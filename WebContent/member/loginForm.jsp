<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp" %>
<link type="text/css" rel="stylesheet" href="${project}/member/style_member.css">
<script src="${project}/member/scirpt.js"> </script>

<h2> ${page_login} </h2>

<form name ="mainform" method ="post" action="loginPro.do" onsubmit="return maincheck()">
   <table>
      <tr>
         <th colspan="2">${msg_login}</th>
      </tr>
      <tr>
         <th> ${str_id}</th>
         <td> <input class = "input" type= "text" name ="id" maxlength="30" autofocus></td>
      </tr>
      <tr>
         <th>${str_passwd} </th>
         <td> <input class ="input" type="password" name = "passwd" maxlength="30"></td>   
      </tr>
      <tr>
         <th colspan="2">
            <input class="inputbutton" type ="submit" value="${btn_login}">
            <input class="inputbutton" type ="reset" value="${btn_cancel}">
         </th>
      </tr>
   </table>
</form>