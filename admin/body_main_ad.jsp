<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>
<%
	ProductRepository dao = ProductRepository.getInstance();
    ArrayList<Product> listOfProducts = dao.getAllProducts();
%>

<%! String greeting = "현재 페이지는 VGA 그래픽 카드 상품 목록입니다."; %>
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">
				<%=greeting%>
			</h3>
		</div>
	</div>	
		


    <div class = "container">
        <div class = "row" align = "center">
            <%
                for (int i = 0; i < listOfProducts.size(); i++) {
                        Product product = listOfProducts.get(i);
            %>
            <div class = "col-md-4">
                <div class = 'card bg-dark text-dark'>
                    <img src = '../img/product/<%=product.getProductId()%>.jpg' class = 'card-img' alt = '...'>
                    <div class = 'card-img-overlay'>
                    	<h5 class = 'card-title'>
                            그래픽 카드 이미지 샘플
                        </h5>
                        <p class = 'card-text'>
                            출처 : 구글 검색
                        </p>
                    </div>
                </div>
                <h3><%= product.getPname() %></h3>
                <p><%= product.getDescription() %></p>
                <p><%= product.getUnitPrice() %>원</p>
                <p>
                    <a href = "product_detail_ad.jsp?id=<%=product.getProductId()%>" class = 'btn btn-secondary' role = 'button'>
                        상품 상세 정보 &raquo;
                    </a>
                </p>
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
    <a href = "#" class = "list-group-item list-group-item-action">
    	하이엔드 그래픽 카드
    </a>
    <a href = "#" class = "list-group-item list-group-item-action">
    	A disabled link item
    </a>
</div>