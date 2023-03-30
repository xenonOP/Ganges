<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <hr class="mt-0 mb20">
            <!-- Inner Page Breadcrumb -->
            <section class="inner_page_breadcrumb">
                <div class="container">
                    <div class="row">

                    </div>
                </div>
            </section>
            <section class="shop-single-content pb80 pt0 ovh">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-xxl-7">
                            <div class="shop_single_natabmenu">
                                <div class="d-block">
                                    <div class="tab-content" id="v-pills-tabContent">
                                        <div class="tab-pane fade" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                            <div class="shop_single_navmenu_content mb-3 text-center">
                                                <a class="product_popup popup-img" href="images/shop/ss1.png"><span class="flaticon-full-screen"></span></a>
                                                <div class="zoomimg_wrapper">
                                                    <img class="zoom-img" id="zoom_01" src="images/shop/ss1.png" data-zoom-image="images/shop/ss1.png" width="550" alt="Shop Single Image"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                            <div class="shop_single_navmenu_content mb-3 text-center">
                                                <a class="product_popup popup-img" href="images/shop/ss2.png"><span class="flaticon-full-screen"></span></a>
                                                <div class="zoomimg_wrapper">
                                                    <img class="zoom-img" id="zoom_02" src="images/shop/ss2.png" data-zoom-image="images/shop/ss2.png" width="550" alt="Shop Single Image"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade show active" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                            <div class="shop_single_navmenu_content mb-3 text-center">
                                                <a class="product_popup popup-img" href="images/shop/ss3.png"><span class="flaticon-full-screen"></span></a>
                                                <div class="zoomimg_wrapper">
                                                    <img class="zoom-img" id="zoom_03" src="images/shop/ss3.png" data-zoom-image="images/shop/ss3.png" width="550" alt="Shop Single Image"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-xxl-5">
                            <div class="shop_single_product_details ps-0 ps-xl-4 mt-4 mt-xl-0">
                                <ul class="d-flex">
                                    <li class="border-right">APPLE</li>
                                </ul>
                                <h4 class="title mb15">Apple MacBook Pro 16" (2021) - Space Grey (Apple M1 Pro Chip / 1TB SSD / 16GB RAM)</h4>
                                <hr>
                                <div class="sspd_price mb25 mt20">$3.399 <small><del class="mr10">$1,419.92</del></small></div>
                                <hr>
                                <div class="mb-0"><form enctype="multipart/form-data" method="post">
                                        <ul class="cart_btn_widget shop_single2_style align-items-center mb-0">
                                            <li class="list-inline-item me-3 mb-3"><a href="#" class="btn btn-thm bdrs60" onclick="chooseFile()">Add to cart</a></li><input type="file" id="ProductPic" onchange="addMore()" style="display:none">
                                        </ul></form>
                                </div>
                                <script>
                                    function chooseFile()
                                    {
                                        document.getElementById('ProductPic').click();
                                    }
                                    <% int pid2 = 17;//Integer.parseInt(request.getParameter("pid"));%>
                                    function addMore()
                                    {
                                        alert("wroking " +<%=pid2%>);
                                        let pid = <%=pid2%>;

                                        let newpic = document.getElementById("ProductPic").files[0];
                                        let picdata = new FormData();
                                        picdata.append("f69", newpic);
                                        let xhr = new XMLHttpRequest();
                                        xhr.onreadystatechange = function ()
                                        {
                                            if (this.readyState === 4 && this.status === 200)
                                            {
                                                let resp = this.responseText.trim();
                                                if (resp === "success")
                                                {
                                                    alert("hogya");
                                                } else
                                                {
                                                    alert("failed");
                                                }
                                            }
                                        };
                                        xhr.open("POST", "./addProdIMG?prdid=" + pid, true);
                                        xhr.send(picdata);
                                    }
                                </script>
                                <hr class="mt-0 mb20">
                                <ul class="sspd_sku mb20">
                                    <li><a href="#">SKU: SF1133569600-1 </a></li>
                                    <li><a href="#">Categories: Apple Macbook, Laptop, Computer</a></li>
                                </ul>
                                <hr class="mt-0">
                                <div class="vendor_iconbox style2 d-block d-sm-flex mb-1 mt-4">
                                    <span class="icon fz30 heading-color"><span class="flaticon-truck"></span></span>
                                    <div class="details ms-0 ms-sm-4 mt-2 mt-sm-0">
                                        <p class="heading-color">Free Shipping & Returns: On all orders over $200.00</p>
                                    </div>
                                </div>
                                <div class="vendor_iconbox style2 d-block d-sm-flex mb-1">
                                    <span class="icon fz30 heading-color"><span class="flaticon-shop"></span></span>
                                    <div class="details ms-0 ms-sm-4 mt-2 mt-sm-0">
                                        <p class="heading-color">Sold and shipped by <a href="#" class="fw500 heading-color fz16">TFN-STORE | TUFAN STORE LLC Fulfilled by Zenmart</a></p>
                                    </div>
                                </div>
                                <div class="vendor_iconbox style2 d-block d-sm-flex mb-0">
                                    <span class="icon fz30 heading-color"><span class="flaticon-return-box"></span></span>
                                    <div class="details ms-0 ms-sm-4 mt-2 mt-sm-0">
                                        <p class="heading-color">Free 15-Day returns <a class="tdu" href="#">Details</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <hr class="mt-0 mb20">
            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
        </div>       
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
        <%@include file ="footer.jsp" %>
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    </body>
</html>
