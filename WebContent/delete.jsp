<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");

	GuestbookDao gbDao = new GuestbookDao();
	GuestbookVo gvo = gbDao.getGuest(no);

	gbDao.guestDelete(no, password);
	response.sendRedirect("./addList.jsp");
	
%>