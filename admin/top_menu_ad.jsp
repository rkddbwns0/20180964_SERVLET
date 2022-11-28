<%@ page contentType = "text/html;charset=utf-8" %>

<nav class = "navbar navbar-expand navbar-white bg-white">
	<div class = 'dropdown'>
    	<button class = "btn btn-secondary dropdown-toggle" type = "button" id = "dropdownMenuButton" 
            data-toggle = "dropdown" aria-haspopup = "ture" aria-expand = "false">
               카테고리	
    	</button>
        <div class = "dropdown-menu" aria-labelldby = "dropdownMenuButton">
            <a class = "dropdown-item" href = "#">CPU</a>
            <a class = "dropdown-item" hsref = "#">그래픽 카드</a>
            <a class = "dropdown-item" href = "#">키보드</a>
            <a class = "dropdown-item" href = "#">마우스</a>
        </div>
    </div>
    
    <div>
        <img src = "img/GGOUPANG2.gif" class = "img-fluid" alt = "GGOUPANG2">
    </div>	
    	<div class = "container">
            <div class = "navbar-header">
				<a class = "navbar-brand" href = "index_ad.jsp">메뉴바 : 홈페이지</a>
    			<a class = "navbar-brand" href = "./index.jsp">회원 보기</a>
    			<a class = "navbar-brand" href = "index_ad.jsp">상품 보기</a>
    			<a class = "navbar-brand" href = "product_add.jsp">등록</a>
                <a class = "navbar-brand" href = "product_edit.jsp?edit=update">수정</a>
                <a class = "navbar-brand" href = "product_delete.jsp?edit=delete">삭제</a>
                <a class = "navbar-brand" href = "../index.jsp">일반모드</a>
            </div>
       </div>
</nav>