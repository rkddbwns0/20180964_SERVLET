<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>

<%	
    String id = request.getParameter("cartId");
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("product_cart.jsp");
        return;
    }

    session.invalidate();
    
    response.sendRedirect("product_cart.jsp");
%>