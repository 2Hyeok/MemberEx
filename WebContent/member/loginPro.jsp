<%@page import="member.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<script src="${project}/member/script.js"></script>

<h2>${page_login}</h2>

<c:if test="${result eq -1}">
     <script type="text/javascript">
        <!--
        erroralert( iderror )
        //-->
     </script>
</c:if>
<c:if test="${result eq 0}">
	<script type="text/javascript">
	<!--
	erroralert( passwderror )
	//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	${sessionScope.memId = id}
	<c:redirect url="main.do"/>
</c:if>