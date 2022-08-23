<%@page import="member.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<script src="${project}/member/script.js"></script>

<h2>${page_delete}</h2>

<c:if test="${resultCheck eq 0}">
	<script type="text/javascript">
	<!--
	erroralert(passwderror);
	//-->
	</script>
</c:if>
<c:if test="${resultCheck ne 0}">
	<c:if test="${result eq 0}">
		<script type="text/javascript">
		<!--
		 alert(deleteerror);
		//-->
		</script>
		<meta http-equiv="refresh" content="0; url=main.do"/>
	</c:if>
	<c:if test="${result ne 0}">
		<!-- ${sessionScope.memId=null}  -->
		<c:remove var="memId" scope="session"/> 
		<c:redirect url="main.do"/>
	</c:if>
</c:if>
