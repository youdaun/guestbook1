<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	GuestbookDao gbDao = new GuestbookDao();
	GuestbookVo gvo = new GuestbookVo(name, password, content);
	gbDao.guestInsert(gvo);
	
	response.sendRedirect("./addList.jsp");
%>