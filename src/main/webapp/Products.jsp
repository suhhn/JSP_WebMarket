<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="repository" class="dao.ProductRepository"
	scope="session"></jsp:useBean>
<%@ page import="java.util.List"%>
<%@ page import="dto.Product"%>
<!-- session은 서버축에 저장 -->
<!-- tomcat위에서 돌고 있는 서버를 의미 -->
<!-- session만들어 놓으면 한번 가져온 데이터를 계속 재활용해서 사용함. 서버에 저장물을 저장한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>

 <div class="p-5 bg-primary text-white">
   
	  <div class="container">
	   
	    <h1 class="display-3">
	       상품목록
	    </h1>
	  </div>
	</div>
	<%
//ProductRepository repository = new ProductRepository();
List<Product> products = repository.getAllproducts();
%>

<div class="container">
<!-- row(행)이 하나 있고 text center로 가운데 정렬-->
    <div class="row text-center"> 
    <!-- col-md-4는 알맹이 하나 -->
    	<%
    	for (Product product: products) {
    	%>
    	<div class="col-md-4">
    	<h3><%= product.getName() %></h3>
    	<p><%= product.getDescription() %></p>
    	<p><%= product.getUnitPrice() %>원</p>
    	</div>
    	<%
    	}
    	%>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>