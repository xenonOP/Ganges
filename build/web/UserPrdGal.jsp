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

            <!-- Inner Page Breadcrumb -->
            <section class="inner_page_breadcrumb">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="breadcrumb_content">

                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Shop Single Content -->
            <section class="shop-single-content pb80 pt0 ovh">
                <div class="container">
                    <div class="row wrap">
                        <div class="col-xl-7">
                            <div class="column">
                                <div class="shop_single_natabmenu">
                                    <div class="d-block d-sm-flex align-items-start posr pb100-xs">
                                        <div class="nav d-flex flex-sm-column nav-pills me-0 me-sm-3 custom_nav_list" id="v-pills-tab2" role="tablist" aria-orientation="vertical">
                                            <% int pdid = Integer.parseInt(request.getParameter("pid"));
                                                String uni = "";
                                                try{
                                                ResultSet im  = DBLoader.executeQuery("select * from ganges.product where productid="+pdid);
                                                if(im.next())
                                                {
                                                    String foto = im.getString("photo");
                                                    uni = foto;
                                                    %>
                                             <button class="nav-link active" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false"><img src="<%=foto%>" alt=""></button>
                                                    <%
                                                }
                                                }
                                                catch(Exception e)
                                                {
                                                    e.printStackTrace();
                                                }
                                            
                                            %>
                                             <% int pddi = Integer.parseInt(request.getParameter("pid"));
                                                String uni2 = ""; String uni3 = "";
                                                try{
                                                ResultSet img1  = DBLoader.executeQuery("select * from ganges.productdetail where productid="+pddi);
                                                if(img1.next())
                                                {
                                                    String foto1 = img1.getString("photo");
                                                    uni2 = foto1;
                                                    %>
                                            <button class="nav-link me-3 me-sm-0" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true"><img src="<%=foto1%>" alt=""></button>
                                            <%
                                                }
                                                if(img1.next())
                                                {
                                                    String foto13 = img1.getString("photo");
                                                    uni3 = foto13;
                                                    %>
                                            <button class="nav-link me-3 me-sm-0" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false"><img src="<%=foto13%>" alt=""></button>
                                                <%
                                                }
                                                }
                                                catch(Exception e)
                                                {
                                                    e.printStackTrace();
                                                }
                                            
                                            %>
                                        </div>
                                        <div class="tab-content ms-0 m-xl-auto custom_tab_contents" id="v-pills-tabContent">
                                            
                                            
                                            
                                            <div class="tab-pane fade show active" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                                <div class="shop_single_navmenu_content justify-content-center">
                                                    <a class="product_popup popup-img" href="<%=uni%>"><span class="flaticon-full-screen"></span></a>
                                                    <div class="zoomimg_wrapper m-auto hizoom hi3">
                                                        <img class="zoom-img" id="zoom_03" src="<%=uni%>" data-zoom-image="<%=uni%>" width="510" alt="Shop Single Image"/>
                                                    </div>
                                                </div>
                                            </div>
                                                    
                                                    
                                            <div class="tab-pane fade " id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                                <div class="shop_single_navmenu_content justify-content-center">
                                                    <a class="product_popup popup-img" href="<%=uni2%>"><span class="flaticon-full-screen"></span></a>
                                                    <div class="zoomimg_wrapper m-auto">
                                                        <img class="zoom-img" id="zoom_01" src="<%=uni2%>" data-zoom-image="<%=uni2%>" width="510" alt="Shop Single Image"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                                <div class="shop_single_navmenu_content justify-content-center">
                                                    <a class="product_popup popup-img" href="<%=uni3%>"><span class="flaticon-full-screen"></span></a>
                                                    <div class="zoomimg_wrapper m-auto hizoom hi2">
                                                        <img class="zoom-img" id="zoom_02" src="<%=uni3%>" data-zoom-image="<%=uni3%>" width="510" alt="Shop Single Image"/>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                
                                
                                
                                
                                
                                <% 
                                    int pd = Integer.parseInt(request.getParameter("pid"));
                                    try{
                                    ResultSet rds = DBLoader.executeQuery("SELECT * FROM ganges.product where productid="+pd);
                                    if(rds.next())
                                    {
                                             String Desc  = rds.getString("Description");
                                             Desc = EncodeDecodeURI.decode(Desc);
                                             String ove= Desc.substring(0, Desc.length()/2);
                                    %>
                                   
                                <div class="shortcode_widget_accprdons shop_single_accordion px-0 mt-5">
                                    <div class="faq_according text-start">
                                        <div class="shop_single_description">
                                            <h4 class="title">Overview</h4>
                                            <p class="para"><%=ove%></p>
                                            <div class="accordion accordion-flush" id="accordionFlushExample">
                                                <div class="accordion-item">
                                                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                                        <div class="accordion-body px-0 pt-0"><p class="para"><%=Desc%></p></div>
                                                    </div>
                                                    <h2 class="accordion-header" id="flush-headingOne">
                                                        <button class="accordion-button collapsed px-0 pt-3 text-thm1" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">See More <span class="fas fa-angle-down ml10"></span></button>
                                                    </h2>
                                                </div>
                                            </div>
                                        </div>
 <%
                                    }
                                    }
                                    catch(Exception e)
                                    {
                                        e.printStackTrace();
                                    }
                                    %>
                                        <hr>
                                        <div class="accordion" id="accordionExample">
                                            <div class="card">
                                                <div class="card-header" id="headingFour">
                                                    <h2 class="mb-0">
                                                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">More From Same Vendor</button>
                                                    </h2>
                                                </div>
                                                <div id="collapseFour" class="collapse mt-3" aria-labelledby="headingFour" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <div class="row" id="vend">
                                                            <script>
                                                                function vendor()
                                                                {
                                                                    fetch(`prodLoad`).then(data => data.json()).then(resp => {
                                                                        let arr = resp.ans;
                                                                        let ans = "";
                                                                        for (let i = 0; i < arr.length; i++)
                                                                        {
                                                                            let obj = arr[i];
                                                                            let si = obj.shopidfk;
                                                                            if (si == shopid) {
                                                                                ans += "<div class=\"col-md-6\">";
                                                                                ans += "<div class=\"vendor_grid shop_single_style\">";
                                                                                ans += "<div class=\"details pt-0\">";
                                                                                ans += "<div class=\"flex-grow-1\">";
                                                                                ans += "<div class=\"d-block d-md-flex align-items-center\">";
                                                                                ans += "<h5 class=\"title me-2 mb-0\">" + decodeURIComponent(obj.pname) + "</h5>";
                                                                               
                                                                                ans += "<h6 class=\"sub_title mb-0\">965 seller reviews</h6></div></div>";
                                                                                ans += "<div class=\"vendor_address mt10 mb20\">";
                                                                                ans += "<ul class=\"mb0\">";
                                                                                ans += "<li><a href=\"#\">Fast Delivery: Ships in 1 day</a></li><li><a href=\"#\">Free Cargo</a></li></ul> </div>";
                                                                                ans += "<div class=\"d-flex justify-content-between align-items-center\">";
                                                                                ans += "<div class=\"price\">&#8377;" + (obj.offerPrice).toLocaleString("en-US")+ "<small>&nbsp;<del>&#8377;" + (obj.price).toLocaleString("en-US") + "</del></small></div>";
                                                                                ans += "<a class=\"btn btn-white bdr_thm\" href=\"\"UserPrdGal.jsp?pid=\"+obj.productid+\"\">Go Product</a>";
                                                                                ans += "</div></div></div></div>";
                                                                            }
                                                                        }
                                                                        document.getElementById("vend").innerHTML=ans;
                                                                    });
                                                                }
                                                            </script>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="headingFive">
                                                    <h2 class="mb-0">
                                                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Shipping and Returns</button>
                                                    </h2>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <p class="shipping_return_para mb-0 mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla auctor aliquam tortor at suscipit. Etiam accumsan, est id vehicula cursus, eros ligula suscipit massa, sed auctor felis mi eu massa. Sed vulputate nisi nibh, vel maximus velit auctor nec. Integer consectetur elementum turpis, nec fermentum ipsum tempor quis. Praesent a quam congue, egestas erat sit amet, finibus justo. Quisque viverra neque vehicula eros gravida ultricies. Ut lacinia enim nec consequat tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus ultricies ornare feugiat. Donec vitae rhoncus sapien, ac aliquet nunc.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="headingSive">
                                                    <h2 class="mb-0">
                                                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">Questions and Answers</button>
                                                    </h2>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSive" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <div class="shop_single_qna">
                                                            <div class="search_field mt-3">
                                                                <div class="blog_search_widget">
                                                                    <div class="input-group">
                                                                        <input type="text" class="form-control" placeholder="Have a question? Search for answer" aria-label="Recipient's username">
                                                                        <button class="btn btn-thm" type="button"><span class="fa fa-search"></span></button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="question_with_poster mt-3">
                                                                <h5 class="title">Q: Can dvds be played on apple computers?</h5>
                                                                <p class="author">Asked by Pratham- May 14, 2022 on Ganges.com</p>
                                                            </div>
                                                            <div class="question_with_answer mt-3 ms-3">
                                                                <h5 class="title">A: If you buy a separate CD/DVD drive.</h5>
                                                                <p class="author mb-0">Answered by Dmat-Store - May 24, 2022</p>
                                                            </div>
                                                            <div class="question_with_poster mt-3">
                                                                <h5 class="title">Q: Can dvds be played on apple computers?</h5>
                                                                <p class="author">Asked by Dara Singh - May 14, 2022 on Ganges.com</p>
                                                            </div>
                                                            <div class="question_with_answer mt-3 ms-3">
                                                                <h5 class="title">A: If you buy a separate CD/DVD drive.</h5>
                                                                <p class="author mb-0">Answered by kk  - May 24, 2022</p>
                                                            </div>
                                                            <div class="more_btn mt30 text-center">
                                                                <a href="#" class="btn btn-lg btn-white bdr_thm">Explore all questions</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="col-xl-4 offset-xl-1 d-none d-xl-block z0" id="mm1">
                            <div class="column">
                                <%int pdi = Integer.parseInt(request.getParameter("pid"));%>
                                <script>
                                
                                    let Tate = 0;
                                    let shopid = 0;
                                    window.onload = function okkj()
                                    {
                                        let pid =<%=pdi%>;
                                        let url = "./PrdInfo?pid=" + pid;
                                        fetch(url).then(data => data.json()).then(resp => {
                                            let arr = resp.ans;
                                            let ans = "";
                                            for (let i = 0; i < arr.length; i++)
                                            {
                                                
                                                let obj = arr[i];
                                                ans += "<div class=\"shop_single_product_details sidebar mb-3 mb-xl-0\">";
                                                ans += "<ul class=\"d-flex\">";
                                                ans += "<li class=\"border-right\">" + (decodeURIComponent(obj.pname)).split(" ")[0] + "</li>";
                                                ans += "<li class=\"mx-3\">";
                                                ans += "<div class=\"sspd_review\">";
                                                ans += "<ul class=\"mb0\">";
                                                ans += "<li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                ans += "<li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                ans += "<li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                ans += "<li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                ans += "<li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                ans += "</ul>";
                                                ans += "</div>";
                                                ans += "</li>";
                                                ans += "<li>3,014 reviews</li>";
                                                ans += "</ul>";
                                                ans += "<h4 class=\"title mb15\">" + decodeURIComponent(obj.pname) + "</h4>";
                                                ans += "<hr>";
                                                ans += "<div class=\"sspd_price mb25 mt20\">&#8377;" + (obj.offerPrice).toLocaleString("en-US") + "<small>&nbsp; &nbsp; <del class=\"mr10\">&#8377;" + (obj.price).toLocaleString("en-US") + "</del></small></div>";
                                                ans += "<ul class=\"cart_btns ui_kit_button justify-content-between\">";
                                                ans += "<li><button type=\"button\" class=\"btn btn-thm\" style=\"width:380px\" onclick=\"checkloginC(" + obj.productid + "," + obj.offerPrice + ")\">Add to cart</button></li></ul>";
                                                ans += "<div class=\"d-grid mb-3\">";
                                                ans += "<a href=\"#\" class=\"btn btn-white bdr_thm ss_cart_btn\" onclick=\"cheee(" + obj.productid + "," + obj.offerPrice + ")\">Buy Now</a></div><hr>";
                                                ans += "<div class=\"vendor_iconbox style2 d-block d-sm-flex mb-1\">";
                                                ans += "<span class=\"icon fz30 heading-color\"><span class=\"flaticon-truck\"></span></span>";
                                                ans += "<div class=\"details ms-0 ms-sm-4 mt-2 mt-sm-0\">";
                                                ans += "<p class=\"heading-color\">Free shipping, <span class=\"fw500\">arrives by 3-4 Working days</span> <span class=\"fw500\">Want it faster?</span> <span class=\"tdu\">Buy Now</span> to see options <a class=\"tdu\" href=\"#\">More options</a></p>";
                                                ans += "</div></div>";
                                                ans += "<div class=\"vendor_iconbox style2 d-block d-sm-flex mb-1\">";
                                                ans += "<span class=\"icon fz30 heading-color\"><span class=\"flaticon-shop\"></span></span>";
                                                ans += "<div class=\"details ms-0 ms-sm-4 mt-2 mt-sm-0\">";
                                                ans += "<h5>Ganges-STORE | GANGES STORE LLC Fulfilled by Ganges</h5></div></div>";
                                                ans += "<div class=\"vendor_iconbox style2 d-block d-sm-flex mb-0\">";
                                                ans += "<span class=\"icon fz30 heading-color\"><span class=\"flaticon-return-box\"></span></span>";
                                                ans += "<div class=\"details ms-0 ms-sm-4 mt-2 mt-sm-0\">";
                                                ans += "<p class=\"heading-color\">Free 15-Day returns <a class=\"tdu\" href=\"#\">Details</a></p></div></div>";
                                                ans += "<hr></div>";
                                                Tate = parseInt(obj.offerPrice);
                                                shopid = parseInt(obj.shopidfk);
                                               
                                            }
                                            document.getElementById("mm1").innerHTML = ans;
                                        });
                                        vendor();related();
                                    };

                                    function checkloginC(pid, pric)
                                    {
                                    <%String usr2 = (String)(session.getAttribute("user"));
                                                                    
                                            if(usr2!=null)
                                            {
                                    %>
                                        let user = '<%=usr2%>';

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

                                    function cheee(pid, pric)
                                    {
                                    <%String usr3 = (String)(session.getAttribute("user"));
                                                                    
                                            if(usr3!=null)
                                            {
                                    %>

                                        chkpage();
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
                                        xhr.onreadystatechange = function ()
                                        {
                                            if (this.readyState == 4 && this.status == 200)
                                            {
                                                if (this.responseText.trim() == "success")
                                                {
                                                    window.location.href = "Cart.jsp?user=" + user;
                                                } else
                                                {
                                                    alert("error occured");
                                                }
                                            }
                                        };
                                        xhr.open("GET", "./AddtoCart?user=" + user + "&pid=" + pid + "&price=" + price, true);
                                        xhr.send();
                                    }

                                    function chkpage()
                                    {
                                        let usrx = '<%=UserName%>';
                                        window.location.href = "Checkout.jsp?total=" + Tate + "&user=" + usrx;
                                    }
                                </script>
                            </div>
                        </div>
                    </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-title">
                                    <h2 class="title">Related products</h2>
                                </div>
                                <div class="navi_pagi_top_right related_product_slider slider_dib_sm shop_item_6grid_slider owl-theme owl-carousel" id="rela">
                                    <%String catn = request.getParameter("catn"); %>
                                    <script>

                                        function related()
                                        {
                                            let catn = '<%=catn%>';
                                            let ans = "";
                                            let url = "MainPageLoad?catname="+catn;
                                            fetch(url).then(data => data.json()).then(resp =>
                                            {
                                                let arr = resp.ans;
                                                let ans = "";
                                               
                                                for (let i = 0; i < 6; i++)
                                                {
                                                    let obj = arr[i];
                                                    let myStr = obj.pname;
                                                    myStr = decodeURIComponent(myStr);
                                                    let firstWord = myStr.split(" ")[0];
                                                    ans += "<div class=\"owl-item active\" style=\"width: 229.333px; margin-right: 0px;\">";
                                                    ans += "<div class=\"item\"><div class=\"shop_item small_style bdr1 px-2 px-sm-3 mx--1\"><div class=\"thumb pb30\">";
                                                    ans += "<img class=\"w100\" src=\"" + obj.photo + "\" style=\"width:198px; height:198px;\" alt=\"Shop Item1\"><div class=\"thumb_info\">";
                                                    ans += "<ul class=\"mb0\"> <li><a href=\"page-dashboard-wish-list.html\"><span class=\"flaticon-heart\"></span></a></li></ul></div>";
                                                    ans += "<div class=\"shop_item_cart_btn d-grid\"><a href=\"page-shop-cart.html\" class=\"btn btn-thm\">Add to Cart</a></div>";
                                                    ans += "</div><div class=\"details\"><div class=\"sub_title\">" + firstWord + "</div><div class=\"title\"><a href=\"UserPrdGal.jsp?pid="+obj.productid+"&catn="+obj.catname+"\">" + myStr + "</a></div>";
                                                    ans += "<div class=\"review d-flex db-400\"><ul class=\"mb0 me-2\"><li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                    ans += "<li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li><li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                    ans += "<li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li><li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                    ans += "</ul><div class=\"review_count\"><a href=\"#\">3,014 reviews</a></div> </div><div class=\"si_footer\">";
                                                    ans += "<div class=\"price\">&#8377;" + obj.offerPrice + "<small>&nbsp;&nbsp;&nbsp;<del>&#8377;" + obj.price + "</del></small></div></div></div>";
                                                    ans += "</div></div></div>";


                                                }
                                                document.getElementById("rela").innerHTML = ans;
                                            });
                                            youmay();
                                        }
                                        ;
                                    </script>
                                </div>
                            </div>
                        </div>
                                            <div>.</div>
                        <div class="row">
                            <div class="col-lg-12" >
                                <div class="main-title">
                                    <h2 class="title">You may also like</h2>
                                </div>
                                <div class="navi_pagi_top_right related_product_slider slider_dib_sm shop_item_6grid_slider owl-theme owl-carousel"id="youM" >
                                    <script>

                                        function youmay()
                                        {
                                            let ans = "";
                                            fetch(`prodLoad`).then(data => data.json()).then(resp => {
                                                let arr = resp.ans;
                                                for (let i = 0; i < 18; i += 3)
                                                {
                                                    let obj = arr[i];
                                                    let myStr = obj.pname;
                                                    myStr = decodeURIComponent(myStr);
                                                    let firstWord = myStr.split(" ")[0];
                                                    ans += "<div class=\"owl-item active\" style=\"width: 229.333px; margin-right: 0px;\">";
                                                    ans += "<div class=\"item\"><div class=\"shop_item small_style bdr1 px-2 px-sm-3 mx--1\"><div class=\"thumb pb30\">";
                                                    ans += "<img class=\"w100\" src=\"" + obj.photo + "\" style=\"width:198px; height:198px;\" alt=\"Shop Item1\"><div class=\"thumb_info\">";
                                                    ans += "<ul class=\"mb0\"> <li><a href=\"page-dashboard-wish-list.html\"><span class=\"flaticon-heart\"></span></a></li></ul></div>";
                                                    ans += "<div class=\"shop_item_cart_btn d-grid\"><a href=\"page-shop-cart.html\" class=\"btn btn-thm\">Add to Cart</a></div>";
                                                    ans += "</div><div class=\"details\"><div class=\"sub_title\">" + firstWord + "</div><div class=\"title\"><a href=\"UserPrdGal.jsp?pid="+obj.productid+"&catn="+obj.catname+"\">" + myStr + "</a></div>";
                                                    ans += "<div class=\"review d-flex db-400\"><ul class=\"mb0 me-2\"><li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                    ans += "<li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li><li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                    ans += "<li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li><li class=\"list-inline-item\"><a href=\"#\"><i class=\"fas fa-star\"></i></a></li>";
                                                    ans += "</ul><div class=\"review_count\"><a href=\"#\">3,014 reviews</a></div> </div><div class=\"si_footer\">";
                                                    ans += "<div class=\"price\">&#8377;" +  obj.offerPrice+ "<small>&nbsp;&nbsp;&nbsp;<del>&#8377;" + obj.price + "</del></small></div></div></div>";
                                                    ans += "</div></div></div>";
                                                }
                                                document.getElementById("youM").innerHTML = ans;
                                            });
                                        }
                                    </script>
                                </div>
                            </div>
                        </div>  
                    </div>
            </section>


            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
        </div>       
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
        <%@include file ="footer.jsp" %>
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    </body>
</html>
