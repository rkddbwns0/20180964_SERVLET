<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<jsp:useBean id = "productDAO" class = "dao.ProductRepository" scope = "session" />
<%
    ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다
%>

<%! String greeting = "꾸팡.COM에 오신 것을 환영합니다.";
        String tagline = "하단 페이지 : 확인"; %>
        <div class = "container">
            <div class = "row" align = "center">
                <%
                	for (int i = 0; i < listOfProducts.size(); i++) {
                        Product product = listOfProducts.get(i);
                %>
                <div class = "col-md-4">
                    <h3><%= product.getPname() %></h3>
                    <p><%= product.getDescription() %></p>
                    <p><%= product.getUnitPrice() %>원</p>
                </div>
                <%
                	}
                %>
            </div>
            <hr>
        </div>

    <div class = "card bg-dark text-white">
        <img src = "img/top.jpg" class = "card-img" alt = "top">
        <div class = "card-img-overlay">
            <h5 class = "card-title">
                그래픽 카드 이벤트
            </h5>
            <p class = "card-text">
                출처 : 다나와
            </p>
        </div>
    </div>

<div class = "list-group">
    <a href = "#" class= "list-group-item list-group-item-action active" aria-current = "true">
    	지포스 3060시리즈
    </a> 
    <a href = "#" class= "list-group-item list-group-item-action">
        지포스 3070시리즈
    </a>
    <a href = "#" class = "list-group-item list-group-item-action">
    	지포스 3080시리즈
    </a>
</div>