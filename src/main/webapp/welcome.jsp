<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />
    <%!
    // 변수, 메서드 선언
    String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
    String tagline = "Welcome to Web Market!";
    %>
    <%
    // 그냥 java 코드
    //out.println("<h1>Hello World !!!!!111</h1>");
    %>
    <!-- p-5 :전체 패딩 5 (굉장히 많이) (3 : 보통) -->
    <!-- bg-primary : 기본 색상 -->
    <!-- text-white : 글자 하얗게 -->
    <div class="p-5 bg-primary text-white">
      <!-- container : 좌우 가운데 정렬 -->
	  <div class="container">
	    <!-- display-3 : 큰 글자중에 보통 크기 -->
	    <h1 class="display-3">
	       <%= greeting %>
	    </h1>
	  </div>
	</div>
	
	<div class="container">
	  <div class="text-center">
	    <h3>
	       <%= tagline %>
	    </h3>
	    <%
	    // 1초에 한번씩 새로고침
	    response.setIntHeader("Refresh", 5); // 5초 마다 새로고침
	    
	    Date today = new Date();
	    
	    SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
	    
	    out.println("현재 접속 시간: " + format.format(today));
	    
	    session.setAttribute("name", "오수현"); // 세션 사용
	    session.setAttribute("age", 23); // 2번째 인자가 object이므로 조상님에게 물려받은거 다 들어간다. = 모든 객체는 다 들어간다.
	    
	    List<String> foods = new ArrayList<>();
	    foods.add("짜장면");
	    foods.add("라면");
	    foods.add("탕수육");
	    
	    session.setAttribute("food", foods);
	    session.setMaxInactiveInterval(5); // 5초 후에 세션 날라가게 하기
	    
	    %>
	  </div>
	</div>
	
	<jsp:include page="footer.jsp" />
	
</body>
</html>
