<%@ page contentType = "text/html;charset=utf-8" %>

<footer class = "container">
    <p>
        &copy; 쇼핑몰 대표 : ㄱㅇㅈ 고유번호 : 20180964 연락처 : dbwn2035@naver.com
        <br>
<%
    ShopTime time = new ShopTime();
%>
        오늘 날짜와 시간 : <%= time.timenow() %>
    </p>
        
    

</footer>