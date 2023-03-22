<%--
    Document   : discover
    Created on : Mar 3, 2023, 7:55:22 AM
    Author     : Duy Thai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <title>Discover</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Discover" name="keywords">
        <meta content="Discover" name="description">

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
    </head>
    <body>
        <c:set var="users" value="${requestScope.users}"/>
        <c:if test="${not empty users.name}">
            <%@include file="logoutheader.jsp" %>
        </c:if>
        <c:if test="${empty users.name}">
            <%@include file="loginheader.jsp" %>
        </c:if>


        <!-- Navbar Start -->
        <div class="container-fluid">
            <div class="row border-top px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                        <h6 class="m-0">Categories</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                        <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                            <c:forEach items="${listMenuCategories}" var="lmc">
                                <a href="category?category_id=${lmc.category_id}" class="nav-item nav-link">${lmc.name}</a>
                            </c:forEach>
                        </div>
                    </nav>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">Hola</span>Food</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="home" class="nav-item nav-link">Home</a>
                                <a href="aboutus" class="nav-item nav-link">About Us</a>
                                <a href="discover" class="nav-item nav-link active">Discover</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Available</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="restaurants" class="dropdown-item">Restaurants</a>
                                        <a href="dishes" class="dropdown-item">Dishes</a>
                                    </div>
                                </div>
                                <a href="contact" class="nav-item nav-link">Contact</a>
                            </div>
                            <%-- <div class="navbar-nav ml-auto py-0">
                                <a href="login.jsp" class="loginButton nav-item nav-link">Sign up/Login</a>

                            </div> --%>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->



        <!-- Shop Start -->
        <div class="container-fluid pt-5">
            <div class="row px-xl-5">

                <center>

                    <!-- Shop Product Start -->

                    <div class="col-lg-9 col-md-12">
                        <div class="row pb-3" id="content">
                            <div class="col-12 pb-1">
                                <div class="d-flex align-items-center justify-content-between mb-4">

                                    <div class="dropdown ml-4">
                                        <button class="btn border dropdown-toggle" type="button" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                            Sort by
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                            <a class="dropdown-item" href="sort?a=0">Giá thấp nhất</a>
                                            <a class="dropdown-item" href="sort?a=1">Giá cao nhất</a>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <c:forEach items="${listMenuItems}" var="o">


                                <div class="dishes col-lg-4 col-md-6 col-sm-12 pb-1">
                                    <form method="post" action="cart">
                                        <input type="hidden" name="menu_item_id" value="${o.menu_item_id}">
                                        <input type="hidden" name="name" value="${o.name}">
                                        <input type="hidden" name="item_image" value="${o.item_image}">
                                        <input type="hidden" name="price" value="${o.price}">
                                        <input type="hidden" name="quantity" value="1">
                                        <div class="card product-item border-0 mb-4">
                                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                                <img class="img-fluid w-100" src="assets/menuItems_image/${o.item_image}" alt="">
                                            </div>
                                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                                <h6 class="text-truncate mb-3">${o.name}</h6>
                                                <div class="d-flex justify-content-center">
                                                    <h6>${o.price}</h6>
                                                </div>
                                            </div>
                                            <div class="card-footer d-flex justify-content-between bg-light border">
                                                <a href="view?menu_item_id=${o.menu_item_id}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                                                <button type="submit" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</button>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </c:forEach>
                        </div>
                    </div>

                    <%-- page navigation --%>
                    <div class="col-12 pb-1">
                        <nav aria-label="Page navigation">
                            <button onclick="loadMore()"><li class="page-item active">LOAD MORE</li></button>
                        </nav>
                    </div>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
                    <script>
                                function loadMore() {
                                    var amount = document.getElementsByClassName("dishes").length;
                                    $.ajax({
                                        url: "/holafood/loadmoredishes",
                                        type: "get", //send it through get method
                                        data: {
                                            existed: amount

                                        },
                                        success: function (data) {
                                            var row = document.getElementById("content");
                                            row.innerHTML += data;
                                        },
                                        error: function (xhr) {
                                            //Do Something to handle error
                                        }
                                    });
                                }

                                function searchByName(param) {
                                    var searchName = param.value;
                                    $.ajax({
                                        url: "/holafood/searchajax",
                                        type: "get", //send it through get method
                                        data: {
                                            searchName: searchName

                                        },
                                        success: function (data) {
                                            var row = document.getElementById("content");
                                            row.innerHTML = data;
                                        },
                                        error: function (xhr) {
                                            //Do Something to handle error
                                        }
                                    });
                                }


                    </script>
                    <%-- page navigation --%>
                    <!-- Shop Product End -->
                </center>

                <!-- Restaurants Start -->
                <div class="container-fluid py-5">
                    <div class="text-center mb-4">
                        <h2 class="section-title px-5"><span class="px-2">Restaurants</span></h2>
                    </div>

                    <div class="row px-xl-5">
                        <c:forEach items="${listRestaurants}" var="r">
                            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                                <div class="card product-item border-0 mb-4">
                                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                        <img class="img-fluid w-100" src="assets/restaurant_image/${r.restaurant_image}" alt="">
                                    </div>
                                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                        <h6 class="text-truncate mb-3">${o.name}</h6>

                                    </div>

                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- Restaurants End -->


                <!-- Footer Start -->
                <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
                    <div class="row px-xl-5 pt-5">
                        <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                            <a href="" class="text-decoration-none">
                                <h1 class="mb-4 display-5 font-weight-semi-bold"><span
                                        class="text-primary font-weight-bold border border-white px-3 mr-1">Hola</span>Food</h1>
                            </a>
                            <p>Bring the taste of Hola to your door</p>
                            <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Đại học FPT, Thạch Hoà, Thạch Thất, Hà Nội</p>
                            <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>dduythai.ddt@gmail.com</p>
                            <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>(+84) 79 6428 094</p>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <div class="row">
                                <div class="col-md-4 mb-5">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4180.411450813989!2d105.55265584322431!3d21.01973362997215!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b22d5cab2bd%3A0xb2ecc434d81c1de0!2sHelios%20Billard%20Cafe!5e0!3m2!1svi!2s!4v1679423221682!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                                <div class="col-md-4 mb-5">

                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row border-top border-light mx-xl-5 py-4">
                        <div class="col-md-6 px-xl-0">
                            <p class="mb-md-0 text-center text-md-left text-dark">
                                &copy; <a class="text-dark font-weight-semi-bold" href="#">HolaFood</a>. All Rights Reserved.
                                Designed
                                by
                                Distributed By <a href="https://www.facebook.com/duythai.ddt/" target="_blank">Đào Duy Thái</a>
                            </p>
                        </div>
                        <div class="col-md-6 px-xl-0 text-center text-md-right">
                            <img class="img-fluid" src="img/payments.png" alt="">
                        </div>
                    </div>
                </div>
                <!-- Back to Top -->
                <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
                <script src="lib/easing/easing.min.js"></script>
                <script src="lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Contact Javascript File -->
                <script src="mail/jqBootstrapValidation.min.js"></script>
                <script src="mail/contact.js"></script>

                <!-- Template Javascript -->
                <script src="js/main.js"></script>
                </body>
                </html>
