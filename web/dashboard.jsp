<%-- 
    Document   : dashboard
    Created on : Mar 22, 2023, 9:22:30 PM
    Author     : Duy Thai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <title>Dashboard</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

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



        <script>
            window.onload = function () {

                var chart = new CanvasJS.Chart("chartContainer", {
                    theme: "light2", // "light1", "light2", "dark1", "dark2"
                    exportEnabled: true,
                    animationEnabled: true,
                    title: {
                        text: "Total revenue"
                    },
                    data: [{
                            type: "pie",
                            startAngle: 25,
                            toolTipContent: "<b>{label}</b>: {y}VND",
                            showInLegend: "true",
                            legendText: "{label}",
                            indexLabelFontSize: 16,
                            indexLabel: "{label} - {y}VND",
                            dataPoints: [
            <c:forEach items="${requestScope.listorder}" var="l">
                                {y: ${l.total_price}, label: "${l.delivery_time}"},
            </c:forEach>




                            ]
                        }]
                });
                chart.render();
            }
        </script>


    </head>


</head>
<body>




    <%@include file="logoutheader.jsp" %>




    <div id="chartContainer" style="height: 300px; width: 100%;"></div>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

    <div id="chartContainer" style="height: 300px; width: 100%;"></div>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>


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
</body>
</html>
