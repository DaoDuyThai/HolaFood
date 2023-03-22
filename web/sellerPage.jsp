<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=\, initial-scale=1.0">
        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </head>
    <style>
        #selling-chart {
            border: 1px solid #ccc;
            background-color: #F5F5F5;
        }

        #Revenue-chart {
            border: 1px solid #ccc;
            background-color: #F5F5F5;
        }

        #Revenue-on-orders-chart {
            border: 1px solid #ccc;
            background-color: #F5F5F5;
        }

        .chart {
            margin-top: 5%;
        }

        * {
            margin: 0;
            box-sizing: border-box;
        }


        .top-bar {
            background-color: #F7452F;
            height: 20vh;
        }

        #logo {
            width: 30%;
            height: auto;
            margin-left: 15%;
        }


        .search-bar input {
            margin-top: 4%;
            width: 50%;
            height: 50%;
        }

        .search-bar button {
            margin-top: 4%;
            width: 75px;
            height: 10%;
            background-color: #198754;
            color: white;
        }

        .seller-tools {
            margin-top: 5%;
            background-color: #F6F6F6;
        }

        .tools {
            background-color: #F6F6F6;
        }

        .tool {
            margin-top: 10px;

        }

        .tool a {
            text-decoration: none;
            color: black;
        }
    </style>



    <body>
        <div class="top-bar">
            <form class="d-flex search-bar " role="search">
                <span class="Bopppe"><a><a href="<%=request.getContextPath()%>/page"><img src="img/Boppee.svg" alt="" id="logo"></a></span>
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>

        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-2 tools">
                    <div class="tool"><a href="<%=request.getContextPath()%>/infor">Hồ sơ của tôi</a></div>
                    <form action="<%=request.getContextPath()%>/products" method="POST" id="all-product">
                        <div class="tool" onclick="submit()">Tất cả sản phẩm</div>
                    </form>
                    <div class="tool"><a href="<%=request.getContextPath()%>/addproduct">Thêm sản phẩm</a></div>
                    <div class="tool"><a href="<%=request.getContextPath()%>/my-order">Đơn hàng của tôi</a></div>
                </div>
                <div class="col-8">
                    <div class="chart">
                        <h5>Phân tích bán hàng</h5>
                        <canvas id="selling-chart" width="1000" height="400"></canvas>
                    </div>
                    <div class="chart">
                        <h5>Tổng doanh thu</h5>
                        <canvas id="Revenue-chart" width="1000" height="400"></canvas>
                    </div>
                    <div class="chart">
                        <h5>Doanh thu trên đơn hàng</h5>
                        <canvas id="Revenue-on-orders-chart" width="1000" height="400"></canvas>
                    </div>

                </div>
            </div>
        </div>

    </body>
    <script>
        var ctx = document.getElementById("selling-chart").getContext("2d");
        var rtx = document.getElementById("Revenue-chart").getContext("2d");
        var otx = document.getElementById("Revenue-on-orders-chart").getContext("2d");
        // Define the data for the chart
        var data = {
        labels:
        [
        <c:forEach items="${requestScope.totalOrders.keySet()}" var="p" >
        new Date('${p}'),
        </c:forEach>
        ]
                ,
                datasets: [
                {
                label: "Số lượng đơn hàng",
                        backgroundColor: "rgba(75,192,192,0.4)",
                        borderColor: "rgba(75,192,192,1)",
                        borderWidth: 1,
                        data: ${requestScope.totalOrders.values()}
                }
                ]
        };
        var revenueData = {
        labels: [
        <c:forEach items="${requestScope.totalIncome.keySet()}" var="i" >
        new Date('${i}'),
        </c:forEach>
        ],
                datasets: [
                {
                label: "Tổng doanh thu (vnđ)",
                        backgroundColor: "rgba(75,192,192,0.4)",
                        borderColor: "rgba(75,192,192,1)",
                        borderWidth: 1,
                        data: ${requestScope.totalIncome.values()}
                }
                ]
        };
        var revenueOnOrdersData = {
        labels: [
        <c:forEach items="${requestScope.average.keySet()}" var="a" >
        new Date('${a}'),
        </c:forEach>
        ],
                datasets: [
                {
                label: "Doanh thu trung bình trên đơn hàng",
                        backgroundColor: "rgba(75,192,192,0.4)",
                        borderColor: "rgba(75,192,192,1)",
                        borderWidth: 1,
                        data: ${requestScope.average.values()}
                }
                ]
        };
        // Define the options for the chart
        var options = {
        scales: {
        xAxes: [{
        type: 'time',
                time: {
                unit: 'day',
                        displayFormats: {
                        day: 'MMM D'
                        }
                },
                position: 'bottom',
                ticks: {
                max: new Date(),
                        min: new Date(Date.now() - 7 * 86400000)
                }
        }],
                yAxes: [{
                ticks: {
                beginAtZero: true
                }
                }]
        }
        };
        // Create the chart
        var sellingChart = new Chart(ctx, {
        type: 'bar',
                data: data,
                options: options
        });
        // Create Revenue chart
        var revenueChart = new Chart(rtx, {
        type: 'bar',
                data: revenueData,
                options: options
        });
        // Create revenueOnOrder chart

        var revenueOnOrdersChart = new Chart(otx, {
        type: 'bar',
                data: revenueOnOrdersData,
                options: options
        });
        function submit() {
        document.getElementById("all-product").submit();
        }
    </script>

</html>