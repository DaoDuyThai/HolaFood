<%-- 
    Document   : editProduct
    Created on : 02-Mar-2023, 21:25:39
    Author     : NGUYEN THANH LUAN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boppee - Trang người bán</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    </head>
    <script>
        $(document).ready(function () {
            //val price = $('#product-price').text();
            console.log($('#product-price').text());
        });
    </script>
    <body>
        <c:set var="users" value="${requestScope.users}"/>
        <c:if test="${not empty users.name}">
            <%@include file="logoutheader.jsp" %>
        </c:if>
        <c:if test="${empty users.name}">
            <%@include file="loginheader.jsp" %>
        </c:if>
        
        <%@include file="Header.jsp" %>
        <div id="product-detail-container" class="container">
            <div><img src="${requestScope.productInfor[0].toString()}" alt="alt" id="product-img"/></div>
            <div id="product-detail">
                <div id="product-name">${requestScope.productInfor[1]}</div>
                <div id="product-price"><fmt:formatNumber  value="${requestScope.productInfor[2].toString()}" type = "currency"/></div>
            </div>
            <div id="add-to-cart">
                <input type="submit" value="Thêm vào giỏ hàng" class="btn" id="add-to-cart-btn">
                <input type="submit" value="Mua ngay" class="btn" id="buy-btn">
            </div>  
            <div id="product-describe">
                <h6>Mô tả sản phẩm</h6>
                <textarea name="product-describe" id="product-describe-input" cols="65" rows="10" disabled>${requestScope.productInfor[3]}</textarea>
            </div> 
        </div>
        <form action="<%=request.getContextPath()%>/addtocart?saveId=${requestScope.productInfor[6]}" method="POST" hidden>
        </form>
        <div class="container part">
            <h5>BÌNH LUẬN</h5>
            <div>Thêm bình luận</div>
            <textarea cols="100%"></textarea><br>
            <a href="<%=request.getContextPath()%>/product?saveId=${requestScope.productInfor[6]}&action=post">Đăng</a>
            <c:forEach var="p" items="${requestScope.comments}">
                <div>p[0]</div>
                <p>p[1]</p>
                
            </c:forEach>
        </div>




        <div class="container part">
            <h5>SẢN PHẨM TƯƠNG TỰ</h5>
            <c:forEach var="p" items="${requestScope.products}" begin="0" end="11">
                <a href="<%=request.getContextPath()%>/product?saveId=${p.getProductId()}">
                    <div class="product">
                        <div id="img-container">
                            <img src="${p.getPhotoPath()}" alt="product">
                        </div>
                        <div class="product-name">${p.getProductName()}</div>
                        <span class="des" style="color: red;"><fmt:formatNumber value="${p.getProductPrice()}" type="currency"/></span>
                    </div>
                </a>

            </c:forEach>
        </div>


    </body>
    <style>
        *{
            margin: 0;
            box-sizing: border-box
        }

        body {
            background-color: #F5F5F5;
        }

        #product-detail-container{
            margin-top: 1rem;
            background-color: white;
            padding: 20px;
        }
        #product-img {
            margin-left: 10rem;
            width: 25%;
            height: auto;
            position: absolute;
        }

        #product-detail {
            margin-left: 50vw;
            position: relative;
        }

        #product-name {
            font-size: 2rem;
        }

        #product-price {
            font-size: 1.5rem;
            color: #F04D2D;
        }

        #product-describe {
            margin-top: 3rem;
            margin-left: 50vw;
            position: relative;
        }

        #add-to-cart {
            margin-top: 1rem;
            margin-left: 50vw;
            position: relative;
        }

        .btn {
            padding: 5px;
            border: 1px solid #F04D2D;
            border-radius: 0px;
        }

        #add-to-cart-btn {
            background-color: #FFEEE8;
        }

        #buy-btn {
            color: white;
            background-color: #F04D2D;
        }

        textarea {
            resize: none;
        }

        .product {
            margin-right: 1rem;
            margin-bottom: 1rem;
            width: 15%;
            height: 40vh;
            border: 1px solid #F5F5F5;
            text-align: center;
            display: inline-block;
            border-radius: 5px;
            background-color: white;
            padding: 1rem;

        }

        #img-container {
            width: 90%;
            height: 50%;
        }

        #img-container img {
            width: 70%;
            height: auto;
        }

        .product-name {
            margin-top: 1rem;
            width: auto;
            height: 10vh;
            white-space: nowrap; /* prevent the text from wrapping */
            overflow: hidden; /* hide any overflowing text */
            text-overflow: ellipsis;
        }

        .product:hover{
            border: 1px solid #E7B10A;
        }

        h5 {
            margin-bottom: 1rem;
            text-decoration: underline solid;

        }

        .part a {
            color: black;
        }
    </style>

    <script>
        $("#add-to-cart-btn").on('click', function () {
            $("form").submit()();
        });
    </script>
</html>
