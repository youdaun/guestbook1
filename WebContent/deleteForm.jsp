<%@page import="com.javaex.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	
	GuestbookDao gDao = new GuestbookDao();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="./delete.jsp">
		비밀번호
		<input type="password" name="password" value="">
		<input type="hidden" name="no" value="<%=gDao.getGuest(no).getNo()%>">
		<button type="submit">확인</button>
	</form>
	
	<a href="./addList.jsp">메인으로 돌아가기</a>

</body>
</html>
