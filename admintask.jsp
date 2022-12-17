<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <header>
            <div id="menu-bar" class="fa fa-bars"></div>
            <a href="index-ss.html" class="logo">Sportyshoes.com</a>
            <nav class="navbar">
                <a href="index-ss.html">Home</a>
                <a href="#">Hi Admin! Welcome to Sportyshoes.com</a>
                <a href="#">Change Password</a>
            </nav>
            <div class="icons">
                <a href="#"><i class="fa fa-heart"></i></a>
                <a href="#"><i class="fa fa-shopping-cart"></i></a>
                <a href="#"><i class="fa fa-user"></i></a>
            </div>
        </header>
        <!--end header-->
        <section class="home" id="home">
            <div class="slide-container active">
                <div class="slide">
                    <div class="content">
                        <span>Customers</span>
                        <h3>Explore The List Of Customers</h3>
                        <p>
                            Access list of all the customers who have signed-up for sportyshoes.com
                        </p>
                        <a href="CustomerReport.jsp" class="btn">View Now</a>
                    </div>
                </div>
            </div>
            <div class="slide-container">
                <div class="slide">
                    <div class="content">
                        <span>Sales</span>
                        <h3>Generate Sales Report</h3>
                        <p>
                            Generate a detailed report of sales made at sportyshoes.com, by date and category.
                        </p>
                        <a href="SalesMain.jsp" class="btn">Generate Now</a>
                    </div>
                    
                </div>
            </div>
            <div class="slide-container">
            <div class="slide">
                <div class="content">
                    <span>Manage Products</span>
                    <h3>Manage Products available</h3>
                    <p>
                        Manage the products available in store and categorize them.
                    </p>
                    <a href="#" class="btn">Manage Now</a>
                    </div>
                </div>
            </div>
            <div id="prev" class="fa fa-angle-left" onclick="prev();"></div>
            <div id="next" class="fa fa-angle-right" onclick="next();"></div>
        </section>
        
    </body>
</html>

<script src="js/script.js"></script>