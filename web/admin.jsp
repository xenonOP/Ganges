<%@page contentType="text/html" pageEncoding="UTF-8"%><%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<%@page import = "ssqqll.*"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

    <!-----------------------------------------------------------------------------------------------HEAD---------------------------------------------------------------------------------------------------------------------------------------------->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="keywords" content="auto parts, baby store, ecommerce, electronics, fashion, food, marketplace, modern, multi vendor, multipurpose, organic, responsive, shop, shopping, store">
        <script>
            function go1()
            {
                let sony = document.getElementById("sony").innerHTML;
                document.getElementById("inp1").value = sony;
            }
            function go2()
            {
                let sony2 = document.getElementById("sony2").innerHTML;
                document.getElementById("inp1").value = sony2;
            }
            function go3()
            {
                let tv = document.getElementById("tv").innerHTML;
                document.getElementById("inp1").value = tv;
            }
            function go4()
            {
                let cam = document.getElementById("camera").innerHTML;
                document.getElementById("inp1").value = cam;
            }
            function go5()
            {
                let apple = document.getElementById("apple").innerHTML;
                document.getElementById("inp1").value = apple;
            }
        </script>
        <%@include file ="Header.jsp" %>
    </head>
    <!-----------------------------------------------------------------------------------------------HEAD----------------------------------------------------------------------------------------------------------------------------------------------->

    <body>
        <div class="wrapper ovh">
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <div class="preloader"></div> 
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->        
            <%@include file ="Navbar.jsp" %>
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->          
            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
            <%
                                    String adminn = (String)session.getAttribute("user");
                                    if(adminn!=null)
                                    {
            %>
            <section class="inner_page_breadcrumb style2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="breadcrumb_content">
                                <h2 class="breadcrumb_title">Admin's Den</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="row mt70">
                <div class="col-lg-6">
                    <div class="banner_one home1_style color1 mb30">
                        <div class="thumb style1">
                            <img class="float-end img-fluid rounded" style="width: 300px; height:275px" src="images/banner/shop.png" alt="smartwatch">
                        </div>
                        <div class="details">
                            <h3 class="title">Manage Shopkeepers</h3><a href="manage-shopkeepers.jsp" class="shop_btn">Manage</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="banner_one home1_style color3 mb30">
                        <div class="thumb style1">
                            <img class="float-end me-0 me-sm-5" src="images/banner/category.png" style="width: 300px; height: 275px" alt="smartdevice 2">
                            <div class="off_banner"><img src="images/banner/off-banner.png" alt="Off Banner"></div>
                        </div>
                        <div class="details">
                            <h3 class="title">Manage Categories</h3>
                            <a href="admin-categories.jsp" class="shop_btn">Manage</a></div>
                    </div>
                </div>
            </div>
            <%
                }
                else
                {
              %>
                  <div class="body_content_wrapper position-relative">
                <!-- Our Error Page -->
                <section class="our-error">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="animate_content text-center text-xl-start">
                                    <div class="animate_thumb">
                                        <img src="images/resource/error-page-img.svg" alt="error-page-img">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="error_page_content mt80 mt50-lg text-center text-xl-start">
                                    <div class="erro_code">40<span class="text-thm">4</span></div>
                                    <div class="error_title">Oops! It looks like you're not Logged-in</div>
                                    <p>The page you're looking for isn't available. ComeBack after Login in.</p>
                                    <a class="btn-thm btn_error" href="AdminPage.jsp">Go Back To Admin Login Page</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <a class="scrollToHome" href="#"><i class="fas fa-angle-up"></i></a>
            </div>
                    <%
                }
            %>
            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
        </div>       
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
        <%@include file ="footer.jsp" %>
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    </body>
</html>
