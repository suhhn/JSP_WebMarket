<%@page import="dao.TodoRepository"%>
<%@page import="dto.Todo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 한글 안 깨지게
// request.setCharacterEncoding("UTF-8");

long id = Long.parseLong(request.getParameter("id"));

TodoRepository repository = TodoRepository.getInstance();
repository.remove(id);

response.sendRedirect("todolist.jsp");
%>