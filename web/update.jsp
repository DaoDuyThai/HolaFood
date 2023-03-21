<%-- 
    Document   : loginheader
    Created on : Mar 15, 2023, 11:16:20 AM
    Author     : Duy Thai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Restaurants" name="keywords">
        <meta content="Restaurants" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
    <center>
        <h1>Chỉnh sửa món ăn</h1>
        <br><!-- comment -->
        <form action="update" method="post">
            Tên món ăn: <br>
            <input type="text" name="name" value="${menuitem.name}" required><br><!-- comment -->
            Mô tả: <br>
            <textarea name="description"  required>${menuitem.description}</textarea> <br>
            Hình ảnh: <br>
            <input type="text" name="item_image" value="${menuitem.item_image}" required> <br>
            Giá: <br>
            <input type="number" name="price" value="${menuitem.price}" required><br><!-- comment -->
            <div class="form-group">
                <label>Category</label>
                <select name="category_id" class="form-select" aria-label="Default select example">
                    <c:forEach items="${listMenuCategories}" var="o">
                        <option value="${o.category_id}">${o.name}</option>
                    </c:forEach>
                </select>
            </div>
            <input type="submit" value="Lưu">
        </form>

    </center>



</body>





</html>
