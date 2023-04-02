<%@page import="java.sql.*" %>
<%@page import = "java.util.*"%>
<%@page import = "ssqqll.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html dir="ltr" lang="en">
    <!-----------------------------------------------------------------------------------------------HEAD---------------------------------------------------------------------------------------------------------------------------------------------->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="keywords" content="auto parts, baby store, ecommerce, electronics, fashion, food, marketplace, modern, multi vendor, multipurpose, organic, responsive, shop, shopping, store">
       <%@include file ="Header.jsp" %>
    </head>
    <!-----------------------------------------------------------------------------------------------HEAD----------------------------------------------------------------------------------------------------------------------------------------------->


    <!-----------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------------------------->
    <body>

        <div class="wrapper ovh">
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <div class="preloader"></div> 
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->        
            <%@include file ="Navbar.jsp" %>
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->        

            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->

            <div id="page" class="stylehome1">
                <div class="body_content_wrapper position-relative pt30">
                    <section class="home-two p0">
                        <div class="container-fluid maxw1800">
                            <div class="row">
                                <div class="col-lg-8 col-xl-9">
                                    <div class="banner_one_large home2_banner_style bdrs6 px-4 px-lg-0 mb-4 mb-lg-0"
                                         style="background-image:url(images/home/2.jpg);height:550px">
                                        <div class="row">
                                            <div class="col-lg-10 offset-lg-1 col-xl-8">
                                                <div class="apple_widget_home1 mb-4 mb-lg-0 mt70 mt0-520"><span class="tag">Limited Edition</span>
                                                    <h3 class="title"><span class="fw400">Game Consoles and</span><br>Accessories Super Deals</h3><a
                                                        href="page-shop-cart.html" class="btn banner-btn btn-thm">Shop Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-xl-3">
                                    <div class="home2_right_slider">
                                        <div class="bestseller_sidebar_slider dots_none home8_style">
                                            <div class="item">
                                                <div class="banner_one home1_style home2_home_style color1 before_none">
                                                    <div class="details"><p class="para color-light-blue">Starting from<span class="fw500">$899.</span>
                                                        </p>
                                                        <h3 class="title">Health Care Monitor</h3><a href="page-shop-list-v1.html" class="shop_btn">Shop
                                                            Now</a></div>
                                                    <div class="thumb text-center"><img src="images/shop-items/home2-banner-item1.png"
                                                                                        alt="Home 2 banner Side Item"></div>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="banner_one home1_style home2_home_style color1 before_none mb30">
                                                    <div class="details"><p class="para color-light-blue">Starting from<span class="fw500">$899.</span>
                                                        </p>
                                                        <h3 class="title">Health Care Monitor</h3><a href="page-shop-list-v1.html" class="shop_btn">Shop
                                                            Now</a></div>
                                                    <div class="thumb text-center"><img src="images/shop-items/home2-banner-item2.png"
                                                                                        alt="Home 2 banner Side Item"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="top-category pb30 pt70">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="main-title text-center text-sm-start"><h1>Explore By Categories</h1></div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="shop_item_8grid_slider nav_none dots_none">
                                        <%
                    ResultSet rs = DBLoader.executeQuery("select * from admincategory");
                    while(rs.next())
                    {
                        String catname = rs.getString("catname");
                        String catphoto = rs.getString("photos");
                        String icon = rs.getString("icon");
                                    
                                        %>
                                        <div class="item">
                                            <div class="iconbox home2_style">
                                                <div class="icon"><img src="<%=catphoto%>" alt="Explore Popular Brand" onclick="dirct('<%=catname%>')"></div>
                                                <div class="details"><h5 class="title"><%=catname%></h5></div>
                                            </div>
                                            </a></div>
                                            <%
                           }
                                            %>
                                            <script>
                                                function dirct(car)
                                                {
                                                window.location.href="SearchResults.jsp?catname="+car;
                                                }
                                                                                    </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="clothing-product pt0">
                        <div class="container-fluid maxw1800 p-4 bgc-white bdrs6">
                            <div class="row bb1">
                                <div class="col-md-6">
                                    <div class="main-title text-center text-md-start mb20"><h2 class="mb0">Electronics products</h2></div>
                                </div>
                            </div>
                            <div class="row mt30">
                                <div class="col-lg-12">
                                    <div class="popular_listing_sliders row ui_kit_tab style2">
                                        <div class="tab-content col-lg-12" id="nav-tabContent2">
                                            <div class="tab-pane fade show active" id="nav-laptops" role="tabpanel"
                                                 aria-labelledby="nav-laptops-tab">
                                                <div class="row"  id="d134">
                                                    <script>
                                                        window.onload = function elecLoad()
                                                        {
                                                            fetch(`MainPageLoad?catname=electro`).then(data => data.json()).then(resp => {
                                                                let arr = resp.ans;
                                                                let ans = "<div class=\"col-sm-5 col-lg-4 col-xl-2\">";
                                                                ans += "<div class=\"banner_one home1_style color2 home4_style twoimg h450\">";
                                                                ans += "<div class=\"thumb t0\"><img class=\"h100p\" src=\"images/banner/banner7-home4.png\" alt=\"Electronics\"></div>";
                                                                ans += "<div class=\"details\"><p class=\"para color-light-blue fw500\">From $1299</p>";
                                                                ans += "<h3 class=\"title\">Beats Studio Buds</h3><a href=\"page-shop-list-v1.html\" class=\"shop_btn\">Shop Now</a></div>";
                                                                ans += "</div></div>";
                                                                for (let i = 0; i < 5; i++)
                                                                {
                                                                    let obj = arr[i];
                                                                    let myStr = obj.pname;
                                                                    myStr=decodeURIComponent(myStr);
                                                                    let firstWord = myStr.split(" ")[0];
                                                                    ans += "<div class=\"col-sm-6 col-lg-4 col-xl-2\">";
                                                                    ans += "<div class=\"shop_item line_clip_less px-2 text-center text-sm-start\">";
                                                                    ans += "<div class=\"thumb pb30\"><img src=\"" + obj.photo + "\" alt=\"Electronics products\">";
                                                                    ans += "<div class=\"thumb_info\">";
                                                                    ans += "<ul class=\"mb0\">";
                                                                    ans += "<li><a href=\"page-dashboard-wish-list.html\"><span class=\"flaticon-heart\"></span></a></li>";
                                                                    ans += "</ul></div>";
                                                                    ans += "<div class=\"shop_item_cart_btn d-grid\"><button class=\"btn btn-thm\" onclick=\"checkloginC(" + obj.productid +","+obj.offerPrice+ ")\">Add to Cart</button></div></div>";
                                                                    ans += "<div class=\"details\">";
                                                                    ans += "<div class=\"sub_title\">" + firstWord + "</div>";
                                                                    ans += "<div class=\"title\"><a href=\"UserPrdGal.jsp?pid="+obj.productid+"&catn="+obj.catname+"\">" + myStr + "</a></div>";
                                                                    ans += "<div class=\"review d-flex justify-content-center justify-content-sm-start\">";
                                                                    ans += "<div class=\"review_count\"><a href=\"#\">" + obj.reviews + "</a></div></div>";
                                                                    ans += "<div class=\"si_footer\"><div class=\"price\">&#8377;" + obj.offerPrice + "<small>";
                                                                    ans += "&nbsp;&nbsp;<del>&#8377;" + obj.price + "</del>";
                                                                    ans += "</small></div>";
                                                                    ans += "</div></div></div></div>";
                                                                }
                                                                console.log(ans);
                                                                document.getElementById("d134").innerHTML = ans;
                                                                clthi();
                                                            });
                                                        };


                                                        function checkloginC(pid, pric)
                                                        {
                                                        <%String usr2 = (String)(session.getAttribute("user"));
                                                                    
                                                                if(usr2!=null)
                                                                {
                                                        %>
                                                                let user='<%=usr2%>';
                                                                
                                                            sendesh(pid, user, pric);
                                                        <%
                                                               }
                                                                else    
                                                               {
                                                        %>
                                                                Swal.fire({
                                                                icon: 'error',
                                                                title: 'User not Logged in',
                                                                text: 'Pls Login and Try again!',
                                                                footer: '<a class="header_top_iconbox home2_style text-start signin-filter-btn" href="LoginPage.jsp"><div>Login here</div></a>'
                                                            });
                                                        <%
                                                               }
                                                        %>
                                                        }

                                                        function sendesh(pid, user, price)
                                                        {
                                                            let xhr = new XMLHttpRequest();
                                                            xhr.onreadystatechange= function()
                                                            {
                                                                if(this.readyState==4&&this.status==200)
                                                                {
                                                                    if(this.responseText.trim()=="success")
                                                                    {
                                                                        window.location.href = "Cart.jsp?user="+user;
                                                                    }
                                                                    else
                                                                    {
                                                                        alert("error occured");
                                                                    }
                                                                }
                                                            };
                                                            xhr.open("GET", "./AddtoCart?user="+user+"&pid="+pid+"&price="+price, true);
                                                            xhr.send();
                                                        }
                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                </section>
                <section class="clothing-product pt0">
                    <div class="container-fluid maxw1800 p-4 bgc-white bdrs6">
                        <div class="row bb1">
                            <div class="col-md-6">
                                <div class="main-title text-center text-md-start mb20"><h2 class="mb0">Clothing products</h2></div>
                            </div>
                        </div>
                        <div class="row mt30">
                            <div class="col-lg-12">
                                <div class="popular_listing_sliders row ui_kit_tab style2">
                                    <div class="tab-content col-lg-12" id="nav-tabContent5">
                                        <div class="tab-pane fade show active" id="nav-tabwomen" role="tabpanel"
                                             aria-labelledby="nav-tabwomen-tab">
                                            <div class="row" id="clth12">
                                                <script>
                                                  function clthi()
                                                    {
                                                        fetch(`MainPageLoad?catname=cloth `).then(data => data.json()).then(resp => {
                                                            let arr = resp.ans;
                                                            console.log(arr); let man = 0;
                                                            let ans = "<div class=\"col-sm-6 col-lg-4 col-xl-2\"><div class=\"banner_one home1_style color2 home4_style h450\"><div class=\"thumb\"><img class=\"float-end\" src=\"images/banner/banner10-home4.png\" alt=\"smartwatch\"></div>";
                                                            ans += "<div class=\"details\"><p class=\"para color-light-blue fw500\">From $1299</p>";
                                                            ans += "<h3 class=\"title\">Memorial Day savings</h3><a href=\"page-shop-list-v1.html\" class=\"shop_btn\">ShopNow</a></div>";
                                                            ans += "</div></div>";
                                                            if(arr.length>=5)
                                                            {
                                                                 man = 5;
                                                            }
                                                            else
                                                            {
                                                                man=arr.length;
                                                            }
                                                            for (let i = 0; i < man; i++)
                                                            {
                                                                let obj = arr[i];
                                                                    let myStr = obj.pname;
                                                                    myStr=decodeURIComponent(myStr);
                                                                    let firstWord = myStr.split(" ")[0];
                                                                    ans += "<div class=\"col-sm-6 col-lg-4 col-xl-2\">";
                                                                    ans += "<div class=\"shop_item line_clip_less px-2 text-center text-sm-start\">";
                                                                    ans += "<div class=\"thumb pb30\"><img src=\"" + obj.photo + "\" alt=\"Electronics products\">";
                                                                    ans += "<div class=\"thumb_info\">";
                                                                    ans += "<ul class=\"mb0\">";
                                                                    ans += "<li><a href=\"page-dashboard-wish-list.html\"><span class=\"flaticon-heart\"></span></a></li>";
                                                                    ans += "</ul></div>";
                                                                    ans += "<div class=\"shop_item_cart_btn d-grid\"><button class=\"btn btn-thm\" onclick=\"checkloginC(" + obj.productid +","+obj.offerPrice+ ")\">Add to Cart</button></div></div>";
                                                                    ans += "<div class=\"details\">";
                                                                    ans += "<div class=\"sub_title\">" + firstWord + "</div>";
                                                                    ans += "<div class=\"title\"><a href=\"UserPrdGal.jsp?pid="+obj.productid+"&catn="+obj.catname+"\">" + myStr+ "</a></div>";
                                                                    ans += "<div class=\"review d-flex justify-content-center justify-content-sm-start\">";
                                                                    ans += "<div class=\"review_count\"><a href=\"#\">" + obj.reviews + "</a></div></div>";
                                                                    ans += "<div class=\"si_footer\"><div class=\"price\">&#8377;" + obj.offerPrice + "<small>";
                                                                    ans += "&nbsp;&nbsp;<del>&#8377;" + obj.price + "</del>";
                                                                    ans += "</small></div>";
                                                                    ans += "</div></div></div></div>";
                                                            }
                                                            document.getElementById("clth12").innerHTML = ans;
                                                            Furni();
                                                        });
                                                    };
                                                </script>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>                        
                <section class="clothing-product pt0">
                    <div class="container-fluid maxw1800 p-4 bgc-white bdrs6">
                        <div class="row bb1">
                            <div class="col-md-6">
                                <div class="main-title text-center text-md-start mb20"><h2 class="mb0">Furniture products</h2></div>
                            </div>
                        </div>
                        <div class="row mt30">
                            <div class="col-lg-12">
                                <div class="popular_listing_sliders row ui_kit_tab style2">
                                    <div class="tab-content col-lg-12" id="nav-tabContent3">
                                        <div class="tab-pane fade show active" id="nav-tabsofa" role="tabpanel"
                                             aria-labelledby="nav-tabsofa-tab">
                                            <div class="row" id="Furni">
                                                <script>
                                                    function Furni()
                                                    {
                                                        fetch(`MainPageLoad?catname=home`).then(data => data.json()).then(resp => {
                                                            let arr = resp.ans;
                                                            console.log(arr); let man = 0;
                                                            let ans = "<div class=\"col-sm-5 col-lg-4 col-xl-2\"><div class=\"banner_one home1_style color2 home4_style twoimg h450\"><div class=\"thumb t0\"><img class=\"h100p\" src=\"images/banner/banner8-home4.png\" alt=\"Furniture\"></div>";
                                                            ans += "<div class=\"details\"><p class=\"para color-light-blue fw500\">New from Mainstays</p>";
                                                            ans += "<h3 class=\"title\">Modern finds from $59</h3><a href=\"page-shop-list-v1.html\" class=\"shop_btn\">ShopNow</a></div>";
                                                            ans += "</div></div>";
                                                            if(arr.length>=5)
                                                            {
                                                                man = 5;
                                                            }
                                                            else
                                                            {
                                                                man=arr.length;
                                                            }
                                                            for (let i = 0; i < man; i++)
                                                            {
                                                                let obj = arr[i];
                                                                    let myStr = obj.pname;
                                                                    myStr=decodeURIComponent(myStr);
                                                                    let firstWord = myStr.split(" ")[0];
                                                                    ans += "<div class=\"col-sm-6 col-lg-4 col-xl-2\">";
                                                                    ans += "<div class=\"shop_item line_clip_less px-2 text-center text-sm-start\">";
                                                                    ans += "<div class=\"thumb pb30\"><img src=\"" + obj.photo + "\" alt=\"Electronics products\">";
                                                                    ans += "<div class=\"thumb_info\">";
                                                                    ans += "<ul class=\"mb0\">";
                                                                    ans += "<li><a href=\"page-dashboard-wish-list.html\"><span class=\"flaticon-heart\"></span></a></li>";
                                                                    ans += "</ul></div>";
                                                                    ans += "<div class=\"shop_item_cart_btn d-grid\"><button class=\"btn btn-thm\" onclick=\"checkloginC(" + obj.productid +","+obj.offerPrice+ ")\">Add to Cart</button></div></div>";
                                                                    ans += "<div class=\"details\">";
                                                                    ans += "<div class=\"sub_title\">" + firstWord + "</div>";
                                                                    ans += "<div class=\"title\"><a href=\"UserPrdGal.jsp?pid="+obj.productid+"&catn="+obj.catname+"\">" + myStr+ "</a></div>";
                                                                    ans += "<div class=\"review d-flex justify-content-center justify-content-sm-start\">";
                                                                    ans += "<div class=\"review_count\"><a href=\"#\">" + obj.reviews + "</a></div></div>";
                                                                    ans += "<div class=\"si_footer\"><div class=\"price\">&#8377;" + obj.offerPrice + "<small>";
                                                                    ans += "&nbsp;&nbsp;<del>&#8377;" + obj.price + "</del>";
                                                                    ans += "</small></div>";
                                                                    ans += "</div></div></div></div>";
                                                            }
                                                            document.getElementById("Furni").innerHTML = ans;
                                                        });
                                                        Healthy();
                                                    };
                                                </script>
                                     
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="clothing-product pt0">
                    <div class="container-fluid maxw1800 p-4 bgc-white bdrs6">
                        <div class="row bb1">
                            <div class="col-md-6">
                                <div class="main-title text-center text-md-start mb20"><h2 class="mb0">Healthy & Beauty products</h2></div>
                            </div>
                        </div>
                        <div class="row mt30">
                            <div class="col-lg-12">
                                <div class="popular_listing_sliders row ui_kit_tab style2">
                                    <div class="tab-content col-lg-12" id="nav-tabContent4">
                                        <div class="tab-pane fade show active" id="nav-tabhair" role="tabpanel"
                                             aria-labelledby="nav-tabhair-tab">
                                            <div class="row" id="Heal">
                                                 <script>
                                                    function Healthy()
                                                    {
                                                        fetch(`MainPageLoad?catname=healt`).then(data => data.json()).then(resp => {
                                                            let arr = resp.ans;
                                                            console.log(arr);
                                                            let man=0;
                                                            let ans = "<div class=\"col-sm-6 col-lg-4 col-xl-2\"><div class=\"banner_one home1_style color2 home4_style twoimg h450\"><div class=\"thumb\"><img class=\"float-end\" src=\"images/banner/banner9-home4.png\" alt=\"smartwatch\"></div>";
                                                            ans += "<div class=\"details\"><p class=\"para color-light-blue fw500\">New from Mainstays</p>";
                                                            ans += "<h3 class=\"title\">Beauty & Wellness Guide</h3><a href=\"page-shop-list-v1.html\" class=\"shop_btn\">ShopNow</a></div>";
                                                            ans += "</div></div>";
                                                            if(arr.length>=5)
                                                            {
                                                                 man = 5;
                                                            }
                                                            else
                                                            {
                                                                man=arr.length;
                                                            }
                                                            for (let i = 0; i < man; i++)
                                                            {
                                                                let obj = arr[i];
                                                                    let myStr = obj.pname;
                                                                    myStr=decodeURIComponent(myStr);
                                                                    let firstWord = myStr.split(" ")[0];
                                                                    ans += "<div class=\"col-sm-6 col-lg-4 col-xl-2\">";
                                                                    ans += "<div class=\"shop_item line_clip_less px-2 text-center text-sm-start\">";
                                                                    ans += "<div class=\"thumb pb30\"><img src=\"" + obj.photo + "\" alt=\"Electronics products\">";
                                                                    ans += "<div class=\"thumb_info\">";
                                                                    ans += "<ul class=\"mb0\">";
                                                                    ans += "<li><a href=\"page-dashboard-wish-list.html\"><span class=\"flaticon-heart\"></span></a></li>";
                                                                    ans += "</ul></div>";
                                                                    ans += "<div class=\"shop_item_cart_btn d-grid\"><button class=\"btn btn-thm\" onclick=\"checkloginC(" + obj.productid +","+obj.offerPrice+ ")\">Add to Cart</button></div></div>";
                                                                    ans += "<div class=\"details\">";
                                                                    ans += "<div class=\"sub_title\">" + firstWord + "</div>";
                                                                    ans += "<div class=\"title\"><a href=\"UserPrdGal.jsp?pid="+obj.productid+"&catn="+obj.catname+"\">" + myStr+ "</a></div>";
                                                                    ans += "<div class=\"review d-flex justify-content-center justify-content-sm-start\">";
                                                                    ans += "<div class=\"review_count\"><a href=\"#\">" + obj.reviews + "</a></div></div>";
                                                                    ans += "<div class=\"si_footer\"><div class=\"price\">&#8377;" + obj.offerPrice + "<small>";
                                                                    ans += "&nbsp;&nbsp;<del>&#8377;" + obj.price + "</del>";
                                                                    ans += "</small></div>";
                                                                    ans += "</div></div></div></div>";
                                                            }
                                                            document.getElementById("Heal").innerHTML = ans;
                                                        });
                                                    };
                                                </script>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="bg-img-png-home2 maxw1800 m-auto bdrs6">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="home2_text_widgets mt150 mt0-md mb-4 md-lg-0"><h2 class="title color-white">Latest and Greatest
                                        Tech.</h2>
                                    <p class="para mt-3 mb-4 color-white">Check out the latest product launches and get<br
                                            class="d-none d-xl-block">inspired by the tech of tomorrow.</p><a href="page-shop-list-v1.html"
                                                                                                      class="btn btn-thm">Shop Now</a></div>
                            </div>
                            <div class="col-lg-8">
                                <div class="shop_item_4grid_slider dots_none owl-theme owl-carousel">
                                    <div class="item">
                                        <div
                                            class="shop_item home2_style line_clip_less small_font bgc-white mx-1 bdrs6 text-center text-sm-start">
                                            <div class="thumb pb30"><img class="m-auto" src="images/shop-items/shop-item19.png"
                                                                         alt="Latest Greatest Product">
                                                <div class="thumb_info">
                                                    <ul class="mb0">
                                                        <li><a href="page-dashboard-wish-list.html"><span class="flaticon-heart"></span></a></li>
                                                        <li><a href="page-dashboard-wish-list.html"><span class="flaticon-show"></span></a></li>
                                                        <li><a href="page-shop-list-v6.html"><span class="flaticon-graph"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="shop_item_cart_btn d-grid"><a href="page-shop-cart.html" class="btn btn-thm">Add to
                                                        Cart</a></div>
                                            </div>
                                            <div class="details">
                                                <div class="sub_title">SONY</div>
                                                <div class="title"><a href="page-shop-single-v1.html">SAMSUNG Chromebook 4+ 15.6" Intel®
                                                        Celeron®</a></div>
                                                <div class="review d-flex justify-content-center justify-content-sm-start">
                                                    <ul class="mb0 me-2">
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                    </ul>
                                                    <div class="review_count"><a href="#">3,014 reviews</a></div>
                                                </div>
                                                <div class="si_footer">
                                                    <div class="price">$32.50<small>
                                                            <del>$45</del>
                                                        </small></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div
                                            class="shop_item home2_style line_clip_less small_font bgc-white mx-1 bdrs6 text-center text-sm-start">
                                            <div class="thumb pb30"><img class="m-auto" src="images/shop-items/shop-item20.png"
                                                                         alt="Latest Greatest Product">
                                                <div class="thumb_info">
                                                    <ul class="mb0">
                                                        <li><a href="page-dashboard-wish-list.html"><span class="flaticon-heart"></span></a></li>
                                                        <li><a href="page-dashboard-wish-list.html"><span class="flaticon-show"></span></a></li>
                                                        <li><a href="page-shop-list-v6.html"><span class="flaticon-graph"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="shop_item_cart_btn d-grid"><a href="page-shop-cart.html" class="btn btn-thm">Add to
                                                        Cart</a></div>
                                            </div>
                                            <div class="details">
                                                <div class="sub_title">SONY</div>
                                                <div class="title"><a href="page-shop-single-v1.html">Sony PlayStation 5 Video Game Console</a>
                                                </div>
                                                <div class="review d-flex justify-content-center justify-content-sm-start">
                                                    <ul class="mb0 me-2">
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                    </ul>
                                                    <div class="review_count"><a href="#">3,014 reviews</a></div>
                                                </div>
                                                <div class="si_footer">
                                                    <div class="price">$399.00<small>
                                                            <del>$45</del>
                                                        </small></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div
                                            class="shop_item home2_style line_clip_less small_font bgc-white mx-1 bdrs6 text-center text-sm-start">
                                            <div class="thumb pb30"><img class="m-auto" src="images/shop-items/shop-item21.png"
                                                                         alt="Latest Greatest Product">
                                                <div class="thumb_info">
                                                    <ul class="mb0">
                                                        <li><a href="page-dashboard-wish-list.html"><span class="flaticon-heart"></span></a></li>
                                                        <li><a href="page-dashboard-wish-list.html"><span class="flaticon-show"></span></a></li>
                                                        <li><a href="page-shop-list-v6.html"><span class="flaticon-graph"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="shop_item_cart_btn d-grid"><a href="page-shop-cart.html" class="btn btn-thm">Add to
                                                        Cart</a></div>
                                            </div>
                                            <div class="details">
                                                <div class="sub_title">Eastsport</div>
                                                <div class="title"><a href="page-shop-single-v1.html">Apple Watch Series 3 GPS Space Gray - 38mm -
                                                        Black</a></div>
                                                <div class="review d-flex justify-content-center justify-content-sm-start">
                                                    <ul class="mb0 me-2">
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                    </ul>
                                                    <div class="review_count"><a href="#">3,014 reviews</a></div>
                                                </div>
                                                <div class="si_footer">
                                                    <div class="price">$32.50<small>
                                                            <del>$45</del>
                                                        </small></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div
                                            class="shop_item home2_style line_clip_less small_font bgc-white mx-1 bdrs6 text-center text-sm-start">
                                            <div class="thumb pb30"><img class="m-auto" src="images/shop-items/shop-item22.png"
                                                                         alt="Latest Greatest Product">
                                                <div class="thumb_info">
                                                    <ul class="mb0">
                                                        <li><a href="page-dashboard-wish-list.html"><span class="flaticon-heart"></span></a></li>
                                                        <li><a href="page-dashboard-wish-list.html"><span class="flaticon-show"></span></a></li>
                                                        <li><a href="page-shop-list-v6.html"><span class="flaticon-graph"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="shop_item_cart_btn d-grid"><a href="page-shop-cart.html" class="btn btn-thm">Add to
                                                        Cart</a></div>
                                            </div>
                                            <div class="details">
                                                <div class="sub_title">Eastsport</div>
                                                <div class="title"><a href="page-shop-single-v1.html">Canon EOS Rebel T100 Digital SLR Camera
                                                        with.</a></div>
                                                <div class="review d-flex justify-content-center justify-content-sm-start">
                                                    <ul class="mb0 me-2">
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                        <li class="list-inline-item"><a href="#"><i class="fas fa-star"></i></a></li>
                                                    </ul>
                                                    <div class="review_count"><a href="#">3,014 reviews</a></div>
                                                </div>
                                                <div class="si_footer">
                                                    <div class="price">$32.50<small>
                                                            <del>$45</del>
                                                        </small></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="features pt50 pb30 bt1">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 col-xl-3">
                                <div class="icon_boxes d-flex">
                                    <div class="icon"><span class="flaticon-fast-delivery"></span></div>
                                    <div class="details"><h5 class="title">Free Shipping</h5>
                                        <p class="para">Free Shipping for orders over $200</p></div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-3">
                                <div class="icon_boxes d-flex">
                                    <div class="icon"><span class="flaticon-shield"></span></div>
                                    <div class="details"><h5 class="title">Money Guarantee</h5>
                                        <p class="para">Within 30 days for an exchange.</p></div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-3">
                                <div class="icon_boxes d-flex">
                                    <div class="icon"><span class="flaticon-headphones"></span></div>
                                    <div class="details"><h5 class="title">Online Support</h5>
                                        <p class="para">24 hours a day, 7 days a week</p></div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-3">
                                <div class="icon_boxes d-flex">
                                    <div class="icon"><span class="flaticon-credit-card"></span></div>
                                    <div class="details"><h5 class="title">Flexible Payment</h5>
                                        <p class="para">Pay with Multiple Credit Cards</p></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="our-testimonial">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col">
                                <div class="main-title text-center"><p>The review are in</p></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="zmart_testimonial_slider home9_style swiper mySwiper">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div class="zmart_testimonial1">
                                                <div class="review mb30 text-center">
                                                    <ul>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="testimonial_contents text-center"><p class="main_title">Sallum dictum felis eu pede
                                                        mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate
                                                        eleifend tellus. Aenean leo ligula, porttitor eu lorem dolor ipsum.</p>
                                                    <p class="author">Kanish Rajput</p>
                                                    <p class="author_post">Project Creator</p></div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="zmart_testimonial1">
                                                <div class="review mb30 text-center">
                                                    <ul>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="testimonial_contents text-center"><p class="main_title">Sallum dictum felis eu pede
                                                        mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate
                                                        eleifend tellus. Aenean leo ligula, porttitor eu lorem dolor ipsum.</p>
                                                    <p class="author">Kanish Rajput</p>
                                                    <p class="author_post">Project Creator</p></div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="zmart_testimonial1">
                                                <div class="review mb30 text-center">
                                                    <ul>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="testimonial_contents text-center"><p class="main_title">Sallum dictum felis eu pede
                                                        mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate
                                                        eleifend tellus. Aenean leo ligula, porttitor eu lorem dolor ipsum.</p>
                                                    <p class="author">Kanish Rajput</p>
                                                    <p class="author_post">Project Creator</p></div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="zmart_testimonial1">
                                                <div class="review mb30 text-center">
                                                    <ul>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="testimonial_contents text-center"><p class="main_title">Sallum dictum felis eu pede
                                                        mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate
                                                        eleifend tellus. Aenean leo ligula, porttitor eu lorem dolor ipsum.</p>
                                                    <p class="author">Kanish Rajput</p>
                                                    <p class="author_post">Project Creator</p></div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="zmart_testimonial1">
                                                <div class="review mb30 text-center">
                                                    <ul>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="testimonial_contents text-center"><p class="main_title">Sallum dictum felis eu pede
                                                        mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate
                                                        eleifend tellus. Aenean leo ligula, porttitor eu lorem dolor ipsum.</p>
                                                    <p class="author">Kanish Rajput</p>
                                                    <p class="author_post">Project Creator</p></div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="zmart_testimonial1">
                                                <div class="review mb30 text-center">
                                                    <ul>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                        <li class="list-inline-item"><a href="#"><span class="fas fa-star"></span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="testimonial_contents text-center"><p class="main_title">Sallum dictum felis eu pede
                                                        mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate
                                                        eleifend tellus. Aenean leo ligula, porttitor eu lorem dolor ipsum.</p>
                                                    <p class="author">Kanish Rajput</p>
                                                    <p class="author_post">Project Creator</p></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-button-next"><span class="fas fa-chevron-right"></span></div>
                                    <div class="swiper-button-prev"><span class="fas fa-chevron-left"></span></div>
                                    <div class="zmart_testimonial_slider d-flex justify-content-center">
                                        <div class="slideactive">1</div><h4>/</h4>
                                        <div class="slidetotal">6</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
    <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    <%@include file ="footer.jsp" %>
    <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->

</body>

</html>
