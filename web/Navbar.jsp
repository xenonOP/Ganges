<!------------------------------------------------------------------------------HEAD SEARCH BLUE PART WITH SEARCH BAR  AND SEARCH SUGGESTIONS  AND ICONS---------------------------------------------------------------> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<%@page import = "ssqqll.*"%>
<div class="header_middle home2_style pt20 pb20 dn-992">
    <div class="container-fluid maxw1800">
        <div class="row">
            <div class="col-lg-2 col-xl-2 col-xxl-1">
                <div class="header_top_logo_home1">
                    <div class="logo"><a href="MainPage.jsp" style="color: #fff; font-family: "Poppins"; font-style: normal; font-weight: 700; font-size: 24px; line-height: 36px; margin-top: 8px;">Ganges<span class="text-thm">.</span></a></div>
                </div>
            </div>
            <div class="col-lg-5 col-xl-5 col-xxl-6">
                <div class="header_middle_advnc_search home2_style">
                    <div class="search_form_wrapper">
                        <div class="row">

                            <!--SEARCH SUGGESTIONS-->
                            <div class="col-auto pe-0">
                                <div class="top-search home2_style">
                                    <form action="#" method="get" class="form-search" accept-charset="utf-8" >
                                        <div class="box-search pre_line">
                                            <input class="form_control" type="text" name="search" id="inp1" onkeyup="TOPSerch()" placeholder="Search products?">
                                            

                                            <div class="search-suggestions" id="sugges" >
                                                
                                                        <script>
                                                function gott(lds)
                                                {
                                                    let sony = document.getElementById(lds).innerHTML;
                                                    document.getElementById("inp1").value = sony;
                                                }
                                                function went(pid)
                                                {
                                                    window.location.href="Cart.jsp?#"+pid;
                                                } 
                                                function TOPSerch()
                                                {
                                                    let cat = document.getElementById("selectbox_alCategory").value;
                                                    let srch = document.getElementById("inp1").value;
                                                    if(srch===""){
                                                        document.getElementById("sugges").innerHTML = "";
                                                    }
                                                    else{
                                                    var xhr = new XMLHttpRequest();
                                                    xhr.onreadystatechange = function ()
                                                    {
                                                        if (this.readyState === 4 && this.status === 200)
                                                        {
                                                            let resp = this.responseText;
                                                            let mainobj = JSON.parse(resp);
                                                            let arr = mainobj.ans;
                                                            console.log(arr);
                                                            let ans = "<div class=\"box-suggestions\" style=\"border-radius: 10px; width:708px\"><ul style=\"border-radius: 20px\">";
                                                            for (let i = 0; i < arr.length; i++)
                                                            {
                                                                let obj = arr[i];          
                                                                let mystr= obj.pname;
                                                                mystr= decodeURIComponent(mystr);
                                                                if(cat=="AllCategory")
                                                                {ans += "<li style=\"background-color: white\" onclick=\"went("+obj.productid+")\">";
                                                                ans += "<div class=\"thumb\"><img src=\""+obj.photo+"\" style=\"width: 150px; height: 90px;\" alt=\"sf1.png\"  onmouseover=\"gott('sony"+i+"')\"></div>";
                                                                ans += "<div class=\"info-product\">";
                                                                ans += "<div class=\"item_title\" id=\"sony"+i+"\">"+mystr+"</div>";
                                                                ans += "<div class=\"price\"><span class=\"sale\">&#8377;"+obj.offerPrice+"</span></div>";
                                                                ans += "</div></li>";}
                                                            else if(cat==obj.catname)
                                                            {
                                                                 ans += "<li style=\"background-color: white\" onclick=\"went("+obj.productid+")\">";
                                                                ans += "<div class=\"thumb\"><img src=\""+obj.photo+"\" style=\"width: 130px; height: 90px;\" alt=\"sf1.png\"  onmouseover=\"gott('sony"+i+"')\"></div>";
                                                                ans += "<div class=\"info-product\">";
                                                                ans += "<div class=\"item_title\" id=\"sony"+i+"\">"+mystr+"</div>";
                                                                ans += "<div class=\"price\"><span class=\"sale\">&#8377;"+obj.offerPrice+"</span></div>";
                                                                ans += "</div></li>";
                                                            }

                                                            }
                                                            ans+="</ul></div>";
                                                            document.getElementById("sugges").innerHTML = ans;
                                                        }
                                                    };
                                                    xhr.open("GET", "./PrdSearch?prdSerch=" + srch, true);
                                                    xhr.send();
                                                }
                                            }
                                            </script>
                                            </div>
                                        </div>
                                    </form> 
                                </div>
                            </div>
                            <!--SEARCH SUGGESTIONS-->

                            <!--DONT KNOW THE APPLICATION YET-->
                            <div class="col-auto bgc-white">
                                <div class="actegory home2_style">
                                    <select class="selectpicker" id="selectbox_alCategory">
                                        <option value="AllCategory">All Category</option>
                                        <%
                                        ResultSet rstd = DBLoader.executeQuery("select * from ganges.admincategory");
                                        while(rstd.next())
                                        {
                                            String canv =rstd.getString("catname");
                                        %>
                                        <option value="<%=canv%>"><%=canv%></option>
                                        <%
                                            }
                                        %>
                                    </select></div>
                            </div>
                            <!--DONT KNOW THE APPLICATION YET-->



                            <!--SIDE ICONS-->
                            <div class="col-auto p0">
                                <div class="advscrh_frm_btn">
                                    <button type="submit" class="btn search-btn"><span class="flaticon-search"></span></button>
                                </div>
                            </div>
                            <!--SIDE ICONS-->



                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-5 col-xxl-4 offset-xxl-1">
                <div class="hm_log_fav_cart_widget text-center text-lg-end">
                    <div class="wrapper ovh">
                        <div class="preloader"></div>
                        <ul class="mb0">

                            <%
                                    String UserName = (String)session.getAttribute("user");
                                    if(UserName!=null)
                                    {
                            %>
                            <li class="list-inline-item">
                                <a class="header_top_iconbox home2_style text-start signin-filter-btn" href="" id="sideds">
                                    <div class="d-block d-md-flex">
                                        <div class="icon"><span class="flaticon-profile"></span></div>
                                        <div class="details"><p class="subtitle">Welcome</p><h5 class="title"><%=UserName%></h5></div>
                                    </div>
                                </a>
                            </li>
                            <%
                                }
                                else
                                {
                            %>
                            <li class="list-inline-item">
                                <a class="header_top_iconbox home2_style text-start signin-filter-btn" href="">
                                    <div class="d-block d-md-flex">
                                        <div class="icon"><span class="flaticon-profile"></span></div>
                                        <div class="details"><p class="subtitle">Sign In</p><h5 class="title">Account</h5></div>
                                    </div>
                                </a>
                            </li>
                            <%
                                   }
                            %>

                            <li class="list-inline-item"><a class="header_top_iconbox home2_style text-start cart-filter-btn" href="#" onclick="crtee()">
                                    <div class="d-block d-md-flex">
                                        <div class="icon"><span><img src="images/icons/flaticon-shopping-cart-white.svg" alt="" onclick="crtee()"></span><span
                                                class="badge"></span></div>
                                        <div class="details"><p class="subtitle" id="totr">cart</p><h5 class="title">Total</h5></div>
                                    </div>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="header_top_iconbox home2_style text-start logout" href="Logout.jsp">
                                    <div class="d-block d-md-flex">
                                        <div class="icon"><span class="flaticon-exit"></span></div>
                                        <div class="details"><p class="account"></p><h5 class="title">Logout</h5></div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!------------------------------------------------------------------------------HEAD SEARCH BLUE PART WITH SEARCH BAR  AND SEARCH SUGGESTIONS AND ICONS---------------------------------------------------------------> 
<header class="header-nav menu_style_home_one home2_style main-menu">
    <nav class="posr">
        <div class="container-fluid posr maxw1800">
            <div class="menu-toggle">
                <button type="button" id="menu-btn"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <!---------------------------------------------------------------------LOWER BAND TOP HEADING INCLUDING BROWSE CATEGORIES------------------------------------------------------------------------------------------------------->
            <div class="posr logo1">
                <div id="mega-menu">
                    <a class="menu-filter-btn btn-mega home2_style" href="#">
                        <img class="me-2" src="images/desktop-nav-menu-white.svg" alt="Desktop Menu Icon">
                        <span class="fw500 fz16 color-white vam">Browse Categories</span>
                    </a>
                    <ul class="menu">

                        <li><a class="dropdown" href="#"><span class="menu-icn flaticon-armchair"></span><span class="menu-title">Home & Furniture</span></a>
                            <div class="drop-menu">
                                <div class="one-third">
                                    <div class="cat-title">Home</div>
                                    <ul class="mb20">
                                        <li><a href="#">Shop All</a></li><!------------------------------------------------ INSERT THE PAGE LINK FOR HOME ITEMS HERE FOR SHOP ALL -------------------->
                                    </ul>
                                    <div class="cat-title">HOME</div>
                                    <ul class="mb0">
                                        <li><a href="#">Bedsheets</a></li>
                                        <li><a href="#">Blankets</a></li>
                                        <li><a href="#">Throws</a></li>
                                        <li><a href="#">Quilts</a></li>
                                        <li><a href="#">Bed Pillows</a></li>
                                        <li><a href="#">Pillow covers</a></li>
                                        <li><a href="#">Bed-Skirts</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Furniture</div>
                                    <ul class="mb0">
                                        <li><a href="#">Shop ALL Furniture</a></li><!------------------------------------------------ INSERT THE PAGE LINK FOR Furnitures ITEMS HERE FOR SHOP ALL -------------------->
                                        <li><a href="#">Chairs</a></li>
                                        <li><a href="#">Bench</a></li>
                                        <li><a href="#">Couch</a></li>
                                        <li><a href="#">Divan</a></li>
                                        <li><a href="#">Beds</a></li>
                                        <li><a href="#">Sofa Beds</a></li>
                                        <li><a href="#">Computer desk</a></li>
                                        <li><a href="#">Dressing Table</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>


                        <li><a class="dropdown" href="#"><span class="menu-icn flaticon-smartphone-1"></span><span
                                    class="menu-title">Electronics</span></a>
                            <div class="drop-menu">
                                <div class="one-third">
                                    <div class="cat-title">Electronics</div><!------------------------------------------------ INSERT THE PAGE LINK FOR ELECTRONICS ITEMS HERE FOR SHOP ALL -------------------->
                                    <ul class="mb20">
                                        <li><a href="#">Shop All</a></li>
                                    </ul>
                                    <div class="cat-title">Mobiles</div>
                                    <ul class="mb0">
                                        <li><a href="#">Apple</a></li>
                                        <li><a href="#">Samsung</a></li>
                                        <li><a href="#">RealME</a></li>
                                        <li><a href="#">Redmi</a></li>
                                        <li><a href="#">Sony</a></li>
                                        <li><a href="#">Phone Chargers & Power Banks</a></li>
                                        <li><a href="#">Phone Cables</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Computers</div>
                                    <ul class="mb0">
                                        <li><a href="#">Shop All Computers</a></li><!------------------------------------------------ INSERT THE PAGE LINK FOR ELECTRONICS ITEMS HERE FOR SHOP ALL -------------------->
                                        <li><a href="#">Laptops</a></li>
                                        <li><a href="#">Chromebook</a></li>
                                        <li><a href="#">PC Gaming</a></li>
                                        <li><a href="#">Desktops</a></li>
                                        <li><a href="#">Monitors</a></li>
                                        <li><a href="#">Computer Accessories</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>



                        <li><a class="dropdown" href="#"><span class="menu-icn flaticon-bride-dress"></span><span
                                    class="menu-title">Clothing </span></a>
                            <div class="drop-menu">
                                <div class="one-third">
                                    <div class="cat-title">Mens</div>
                                    <ul class="mb20">
                                        <li><a href="#">Shop All</a></li>
                                    </ul>
                                    <div class="cat-title">Wears</div>
                                    <ul class="mb0">
                                        <li><a href="#">T-shirt</a></li>
                                        <li><a href="#">Formal Shirts</a></li>
                                        <li><a href="#">Casual Shirts</a></li>
                                        <li><a href="#">Jeans</a></li>
                                        <li><a href="#">Trousers</a></li>
                                        <li><a href="#">TrackPants</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Womens</div>
                                    <ul class="mb0">
                                        <li><a href="#">Ethnics Wears</a></li>
                                        <li><a href="#">Sarees</a></li>
                                        <li><a href="#">kurtas&Kurtis</a></li>
                                        <li><a href="#">Gowns</a></li>
                                        <li><a href="#">Palazos</a></li>
                                        <li><a href="#">Dhoti Pants</a></li>
                                        <li><a href="#">Salwars Patiala</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>




                        <li><a class="dropdown" href="#"><span class="menu-icn flaticon-heart-beat"></span><span
                                    class="menu-title">Health & Beauty</span></a>
                            <div class="drop-menu">
                                <div class="one-third">
                                    <div class="cat-title">Health</div>
                                    <ul class="mb0">
                                        <li><a href="#">Vitamins</a></li>
                                        <li><a href="#">Proteins</a></li>
                                        <li><a href="#">Creatine</a></li>
                                        <li><a href="#">Adult Diapers</a></li>
                                        <li><a href="#">Ayurvedic</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Beauty</div>
                                    <ul class="mb0">
                                        <li><a href="#">Eyes Shadow</a></li>
                                        <li><a href="#">Lipstick</a></li>
                                        <li><a href="#">Sponge</a></li>
                                        <li><a href="#">Primer</a></li>
                                        <li><a href="#">Foundations</a></li>
                                        <li><a href="#">Concealer</a></li>
                                        <li><a href="#">Blush</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>





                        <li>
                            <a class="dropdown" href="#">
                                <span class="menu-icn flaticon-volleyball"></span>
                                <span class="menu-title">Sport & Outdoor</span></a>
                            <div class="drop-menu">
                                <div class="one-third">
                                    <div class="cat-title">Electronics</div>
                                    <ul class="mb20">
                                        <li><a href="#">Shop All</a></li>
                                    </ul>
                                    <div class="cat-title">TV & Video</div>
                                    <ul class="mb0">
                                        <li><a href="#">Shop all TVs</a></li>
                                        <li><a href="#">TVs by Size</a></li>
                                        <li><a href="#">Smart TVs</a></li>
                                        <li><a href="#">Roku TVs</a></li>
                                        <li><a href="#">Streaming</a></li>
                                        <li><a href="#">TV Mounts & Accessories</a></li>
                                        <li><a href="#">DVD & Blu-Ray Players</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Computers</div>
                                    <ul class="mb0">
                                        <li><a href="#">Shop All Computers</a></li>
                                        <li><a href="#">Laptops</a></li>
                                        <li><a href="#">Chromebook</a></li>
                                        <li><a href="#">PC Gaming</a></li>
                                        <li><a href="#">Desktops</a></li>
                                        <li><a href="#">Monitors</a></li>
                                        <li><a href="#">Networking</a></li>
                                        <li><a href="#">Computer Accessories</a></li>
                                        <li><a href="#">Computer Components</a></li>
                                        <li><a href="#">Tax Software</a></li>
                                        <li><a href="#">Computer Software</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Cell Phones</div>
                                    <ul class="mb0">
                                        <li><a href="#">Shop All Cell Phones</a></li>
                                        <li><a href="#">Wireless Deals</a></li>
                                        <li><a href="#">5G Phones</a></li>
                                        <li><a href="#">iPhone</a></li>
                                        <li><a href="#">Galaxy Phones</a></li>
                                        <li><a href="#">Phone Chargers & Power Banks</a></li>
                                        <li><a href="#">Grips & Phone Stands</a></li>
                                        <li><a href="#">Phone Cables</a></li>
                                        <li><a href="#">Car Mounts</a></li>
                                        <li><a href="#">iPhone Accessories</a></li>
                                        <li><a href="#">Cell Phone Accessory Deals</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Smart Home</div>
                                    <ul class="mb20">
                                        <li><a href="#">Shop All Smart Home</a></li>
                                        <li><a href="#">Smart Assistants & Hubs</a></li>
                                        <li><a href="#">Smart Security</a></li>
                                        <li><a href="#">Smart Energy & Lighting</a></li>
                                    </ul>
                                    <div class="cat-title">Photo Services</div>
                                    <ul class="mb0">
                                        <li><a href="#">All Photo Services</a></li>
                                        <li><a href="#">Same Day Services</a></li>
                                        <li><a href="#">Photo Cards</a></li>
                                        <li><a href="#">Photo Gifts</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>


                        <li><a class="dropdown" href="#"><span class="menu-icn flaticon-remote-control"></span><span
                                    class="menu-title">Toy & Video Games</span></a>
                            <div class="drop-menu">
                                <div class="one-third">
                                    <div class="cat-title">Electronics</div>
                                    <ul class="mb20">
                                        <li><a href="#">Shop All</a></li>
                                    </ul>
                                    <div class="cat-title">TV & Video</div>
                                    <ul class="mb0">
                                        <li><a href="#">Shop all TVs</a></li>
                                        <li><a href="#">TVs by Size</a></li>
                                        <li><a href="#">Smart TVs</a></li>
                                        <li><a href="#">Roku TVs</a></li>
                                        <li><a href="#">Streaming</a></li>
                                        <li><a href="#">TV Mounts & Accessories</a></li>
                                        <li><a href="#">DVD & Blu-Ray Players</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Computers</div>
                                    <ul class="mb0">
                                        <li><a href="#">Shop All Computers</a></li>
                                        <li><a href="#">Laptops</a></li>
                                        <li><a href="#">Chromebook</a></li>
                                        <li><a href="#">PC Gaming</a></li>
                                        <li><a href="#">Desktops</a></li>
                                        <li><a href="#">Monitors</a></li>
                                        <li><a href="#">Networking</a></li>
                                        <li><a href="#">Computer Accessories</a></li>
                                        <li><a href="#">Computer Components</a></li>
                                        <li><a href="#">Tax Software</a></li>
                                        <li><a href="#">Computer Software</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Cell Phones</div>
                                    <ul class="mb0">
                                        <li><a href="#">Shop All Cell Phones</a></li>
                                        <li><a href="#">Wireless Deals</a></li>
                                        <li><a href="#">5G Phones</a></li>
                                        <li><a href="#">iPhone</a></li>
                                        <li><a href="#">Galaxy Phones</a></li>
                                        <li><a href="#">Phone Chargers & Power Banks</a></li>
                                        <li><a href="#">Grips & Phone Stands</a></li>
                                        <li><a href="#">Phone Cables</a></li>
                                        <li><a href="#">Car Mounts</a></li>
                                        <li><a href="#">iPhone Accessories</a></li>
                                        <li><a href="#">Cell Phone Accessory Deals</a></li>
                                    </ul>
                                </div>
                                <div class="one-third">
                                    <div class="cat-title">Smart Home</div>
                                    <ul class="mb20">
                                        <li><a href="#">Shop All Smart Home</a></li>
                                        <li><a href="#">Smart Assistants & Hubs</a></li>
                                        <li><a href="#">Smart Security</a></li>
                                        <li><a href="#">Smart Energy & Lighting</a></li>
                                    </ul>
                                    <div class="cat-title">Photo Services</div>
                                    <ul class="mb0">
                                        <li><a href="#">All Photo Services</a></li>
                                        <li><a href="#">Same Day Services</a></li>
                                        <li><a href="#">Photo Cards</a></li>
                                        <li><a href="#">Photo Gifts</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!---------------------------------------------------------------------LOWER BAND TOP HEADING INCLUDING BROWSE CATEGORIES------------------------------------------------------------------------------------------------------->
            <ul id="respMenu" class="ace-responsive-menu menu_list_custom_code wa pl200" data-menu-style="horizontal">
                <li class="megamenu_style"><a href="#"><span class="title">Shop</span></a>
                    <ul class="row dropdown-megamenu">
                        <li class="col mega_menu_list"><h4 class="title">User Dashboard</h4>
                            <ul>
                                <li><a href="page-dashboard.html">Dashboard</a></li>
                                <li><a href="page-dashboard-order.html">Orders</a></li>
                                <li><a href="page-dashboard-wish-list.html">Downloads</a></li>
                                <li><a href="page-dashboard-address.html">Addresses</a></li>
                                <li><a href="page-dashboard-account-details.html">Account Details</a></li>
                                <li><a href="page-dashboard-wish-list.html">Wishlist</a></li>
                                <li><a href="page-login.html">Logout</a></li>
                            </ul>
                        </li>
                        <li class="col mega_menu_list"><h4 class="title">Woo Pages</h4>
                            <ul>
                                <li><a href="page-shop-cart.html">Cart</a></li>
                                <li><a href="page-shop-checkout.html">Checkout</a></li>
                                <li><a href="page-shop-order-received.html">Wishlist</a></li>
                                <li><a href="page-account-details.html">My account</a></li>
                                <li><a href="page-compare.html">Compare</a></li>
                                <li><a href="page-order-tracking.html">Order Tracking</a></li>
                            </ul>
                        </li>
                        <li class="col mega_menu_list">
                            <div class="banner_one megamenu_style home1_style color1 mb30">
                                <div class="thumb style1"><img class="float-end" src="images/banner/smartwatch.png" alt="smartwatch">
                                </div>
                                <div class="details"><p class="para color-light-blue">Starting from<span class="fw500">$899.</span>
                                    </p>
                                    <h3 class="title">Health Care Monitor</h3><a href="page-shop-list-v1.html" class="shop_btn">Shop
                                        Now</a></div>
                            </div>
                            <div class="banner_one megamenu_style home1_style color1">
                                <div class="thumb"><img class="float-end" src="images/banner/earphone.png" alt="EarPhone"></div>
                                <div class="details"><p class="para color-light-blue">Starting from<span class="fw500">$899.</span>
                                    </p>
                                    <h3 class="title">Stainless Steel Scissors</h3><a href="page-shop-list-v1.html" class="shop_btn">Shop
                                        Now</a></div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="visible_list"><a href="#"><span class="title">Accounts</span></a>
                    <ul>
                        <li><a href="LoginPage.jsp"><span class="title">User Accounts</span></a>
                            <ul>
                                <li><a href="page-account-details.html"> User Account Details</a></li>
                                <li><a href="page-account-order.html"> User Account Order</a></li>
                                <li><a href="page-account-address.html"> User Account Address</a></li>
                                <li><a href="page-account-wishlist.html"> User Account Wishlist</a></li>
                                <li><a href="page-account-invoice.html"> User Account Invoice</a></li>
                            </ul>
                        </li>
                        <li><a href="ShopkeeperLogin.jsp"><span class="title">Vendor Accounts</span></a>
                            <ul>
                                <li><a href="#"> Vendor Account </a>
                                    <ul>
                                        <li><a href="ShopkeeperLogin.jsp">LOGIN VENDOR</a></li>
                                        <li><a href="DashBoard.jsp">Dashboard</a></li>
                                        <li><a href="DashBoard.jsp">Products</a></li>
                                        <li><a href="DashBoard.jsp">Order</a></li>
                                    </ul>
                                </li>
                                <li><a href="BecomeVendor.jsp">Become a Vendor</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul id="respMenu2" class="ace-responsive-menu widget_menu_home2 wa" data-menu-style="horizontal">
                <li class="list-inline-item list_c"><a href="page-about.jsp">About us</a></li>
                <li class="list-inline-item list_c"><a href="page-help.jsp">Help</a></li>
                <li class="list-inline-item list_c"><a href="page-faq.jsp">Faq</a></li>
                <li class="list-inline-item list_c"><a href="page-terms.jsp">Terms&Conditions</a></li>
                <li class="list-inline-item list_c"><a href="page-contact.jsp">Contact-us</a></li>
            </ul>
        </div>
    </nav>
</header>

<script>
    function back()
    {
        let u = document.getElementById("userSide").value;
        let p = document.getElementById("passSide").value;
        var xhr = new XMLHttpRequest();

        xhr.onreadystatechange = function ()
        {
            if (this.readyState === 4 && this.status === 200)
            {
                var resp = this.responseText.trim();
                if (resp === "success")
                {
                    location.reload();
                } else if (resp === "Enter correct username")
                {
                    document.getElementById("US1").innerHTML = "*";
                    Swal.fire({
                        title: 'Enter Username Correctly',
                        confirmButtonColor: '#f5c34b'
                    });
                } else if (resp === "Enter correct password")
                {
                    document.getElementById("PS1").innerHTML = "*";
                    Swal.fire({
                        title: 'Enter Password Correctly',
                        confirmButtonColor: '#f5c34b'
                    });
                } else
                {
                    Swal.fire({
                        title: 'Enter Details Correctly',
                        confirmButtonColor: '#f5c34b'
                    });
                }
            }
        };
        xhr.open("GET", "./LoginServlet?usrM1=" + u + "&pssM1=" + p, true);
        xhr.send();

    }
</script>
<div class="hiddenbar-body-ovelay"></div>
<div class="signin-hidden-sbar">
    <div class="hsidebar-header">
        <div class="sidebar-close-icon"><span class="flaticon-close"></span></div>
        <h4 class="title">Welcome back!</h4></div>
    <div class="hsidebar-content">
        <div class="log_reg_form sidebar_area">
            <div class="login_form">
                <form>
                    <div class="mb-2 mr-sm-2">
                        <label class="form-label" for='userSide'>Username or email address</label><span id="US1"></span>
                        <input type="text" id="userSide" name="userSide" class="form-control" placeholder="Enter UserName">
                    </div>
                    <div class="form-group mb5">
                        <label class="form-label" for='passSide'>Password</label><span id="PS1"></span>
                        <input type="password" id="passSide" name='passSide' placeholder="Enter Password" class="form-control"></div>
                    <button type="button" class="btn btn-log btn-thm mt20" onclick="back()">Logins</button>
                    <p class="text-center mb25 mt10">Don't have an account?<a class="signup-filter-btn" href="#">Create account</a></p>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="cart-hidden-sbar">
    <div class="hsidebar-header">
        <div class="sidebar-close-icon"><span class="flaticon-close"></span></div>
        <h4 class="title">Your Cart</h4></div>
    <div class="hsidebar-content">
        <div class="log_fav_cart_widget hsidebar_home_page">
            <div class="wrapper">
                <ul class="cart">
                    <li class="list-inline-item">
                        <ul class="dropdown_content" id="crte">
                            <script>
                                function crtee()
                                {
                                    let user = '<%=UserName%>';
                                    let xhr = new XMLHttpRequest();
                                    xhr.onreadystatechange = function ()
                                    {
                                        if (this.readyState === 4 && this.status === 200)
                                        {
                                            let resp = this.responseText;
                                            let mainobj = JSON.parse(resp);
                                            console.log(mainobj);
                                            let arr = mainobj.ans;
                                            let ans = "";
                                            for (let i = 0; i < arr.length; i++)
                                            {
                                                let obj = arr[i];
                                                ans += "<li class=\"list_content\">";
                                                ans += "<div><img class=\"float-start mt10\" src=\"" + obj.photo + "\" alt=\"75x75\">";
                                                ans += "<p>" + decodeURIComponent(obj.prdname)+ "</p>";
                                                ans += "<div class=\"cart_btn home_page_sidebar mt10\">";
                                                ans += "<div class=\"quantity-block home_page_sidebar\">";
                                                ans += "<button class=\"quantity-arrow-minus home_page_sidebar\" onclick=\"decrCartSide('ofp" + i + "', 'id" + i + "', 'idd" + i + "', '" + obj.prdid + "')\"><img src=\"images/icons/minus.svg\" alt=\"\"  ></button>";
                                                ans += "<input class=\"quantity-num home_page_sidebar\" type=\"number\" value=\"" + obj.quant + "\" id=\"id" + i + "\" />";
                                                ans += "<button class=\"quantity-arrow-plus home_page_sidebar\" onclick=\"incrCartSide('ofp" + i + "', 'id" + i + "', 'idd" + i + "', '" + obj.prdid + "')\"><img src=\"images/icons/plus.svg\" alt=\"\" ></button>";
                                                ans += "</div>";
                                                ans += "<span class=\"home_page_sidebar price\"  id=\"idd" + i + "\">" + obj.ofPrice * obj.quant + "</span></div>";
                                                ans += "<span class=\"close_icon\"><i class=\"flaticon-close\" onclick=\"delCartSide('ofp" + i + "', 'id" + i + "', 'idd" + i + "', '" + obj.prdid + "')\"></i></span></div>";
                                                ans += "</li>";
                                            }
                                            document.getElementById("crte").innerHTML = ans;totalrate();
                                        }
                                    };
                                    xhr.open("GET", "./CartLoading?user=" + user, true);
                                    xhr.send();
                                }
                                ;

                                function incrCartSide(ofp, edf, tpp, pid)
                                {
                                    let tp = parseInt(document.getElementById(ofp).innerHTML);
                                    let cart = parseInt(document.getElementById(edf).value);
                                    cart = cart + 1;
                                    let Total = (cart * tp);
                                    document.getElementById(tpp).innerHTML = Total.toLocaleString("en-US");
                                    document.getElementById(edf).value = cart;
                                    fun(edf, tpp, pid, ofp);totalrate();
                                    location.reload();
                                }
                                function decrCartSide(ofp, edf, tpp, pid)
                                {
                                    let cart = parseInt(document.getElementById(edf).value);
                                    let tp = parseInt(document.getElementById(ofp).innerHTML);
                                    if (cart > 0)
                                    {
                                        cart = cart - 1;
                                    }
                                    document.getElementById(edf).value = cart;
                                    let Total = (cart * tp);
                                    document.getElementById(tpp).innerHTML = Total.toLocaleString("en-US");
                                    fun(edf, tpp, pid, ofp);totalrate();
                                    location.reload();
                                }
                                function funSide(edf, mn, pid, ofp)
                                {
                                    let val = document.getElementById(edf).value;
                                    let totalP = document.getElementById(mn).innerHTML;
                                    let Price = document.getElementById(ofp).innerHTML;
                                    let url = "./changeQuant?pid=" + pid + "&quant=" + val + "&tp=" + Price;
                                    fetch(url).then(data => data.text()).then(resp => {
                                        document.getElementById(mn).innerHTML = resp.trim();
                                        totalrate();
                                    });
                                }
                                function delCartSide(ofp, edf, tpp, pid)
                                {
                                    let xhr = new XMLHttpRequest();
                                    xhr.onreadystatechange = function ()
                                    {
                                        if (this.readyState === 4 && this.status === 200)
                                        {
                                            let resp = this.responseText.trim();
                                            if (resp === "success")
                                            {
                                                fun(edf, tpp, pid, ofp);
                                                crt();totalrate();
                                            } else
                                            {
                                                alert("error occured");
                                            }
                                        }
                                    };
                                    xhr.open("GET", "./DelCart?pid=" + pid, true);
                                    xhr.send();
                                    
                                }
                            </script>     
                            <script>
                                        let Trate= 0;
                                     function totalrate()
                                    {
                                        let user = '<%=UserName%>';
                                        let xhr = new XMLHttpRequest();
                                        xhr.onreadystatechange = function ()
                                        {
                                            if (this.readyState == 4 && this.status == 200)
                                            {
                                                let resp = this.responseText;
                                                let mainobj = JSON.parse(resp);
                                                let arr = mainobj.ans;
                                                let ttol= 0;
                                                let paise = 0;
                                                for (let i = 0; i < arr.length; i++)
                                                {
                                                    let obj = arr[i];
                                                    paise = parseInt(paise)+parseInt(obj.total);
                                                    ttol = parseInt(ttol)+parseInt(obj.Price);
                                                }
                                                document.getElementById("totr").innerHTML="&#8377;"+ttol.toLocaleString();
                                                Trate = ttol;
                                            }
                                        };
                                        xhr.open("GET", "./CartTotal?user=" + user, true);
                                        xhr.send();
                                    }
                
                
                function chkpage()
                {
                    let usrx = '<%=UserName%>';
                    window.location.href = "Checkout.jsp?total="+Trate+"&user="+usrx;
                }
            </script>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="hsidebar_footer_content">
        <div class="list_last_content">
            <div class="lc">
                <div class="uilayout_range home1_style">
                    
                </div>
               <%String std = (String)session.getAttribute("user");%>
                <a href="Cart.jsp?&user=<%=std%>" class="cart_btns btn btn-white">View Cart</a><a href="#" class="checkout_btns btn btn-thm" onclick="chkpage()">Checkout</a>
            </div>
        </div>
    </div>
            
</div>
<script>
    function CheckEmail() {
        const email = document.getElementById("E1").value;
        if (email === "")
        {
            document.getElementById("labelE").innerHTML = "*";
        } else
        {
            const isValid = isValidEmail(email);
            if (isValid)
            {
                document.getElementById("labelE").innerHTML = "";
            } else
            {
                document.getElementById("labelE").innerHTML = "*";
            }
        }
    }
    function isValidEmail(email) {
        // regular expression pattern for email validation
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailPattern.test(email);
    }

    function passwordStrength()
    {
        const password = document.getElementById("P1").value;
        if (password === "")
        {
            document.getElementById("labelP").innerHTML = "*";
        } else
        {
            // regular expression patterns for password validation
            const passwordLengthPattern = /.{8,}/; // password should be at least 8 characters long
            const passwordUppercasePattern = /[A-Z]+/; // password should contain at least one uppercase letter
            const passwordLowercasePattern = /[a-z]+/; // password should contain at least one lowercase letter
            const passwordNumberPattern = /\d+/; // password should contain at least one number
            // count the number of patterns that the password matches
            let strength = 0;
            if (passwordLengthPattern.test(password)) {
                strength++;
            }
            if (passwordUppercasePattern.test(password)) {
                strength++;
            }
            if (passwordLowercasePattern.test(password)) {
                strength++;
            }
            if (passwordNumberPattern.test(password)) {
                strength++;
            }
            // classify the password based on the strength score
            if (strength === 4)
            {
                document.getElementById("labelP").style.color = "green";
                document.getElementById("labelP").innerHTML = "Strong";
            } else if (strength >= 2)
            {
                document.getElementById("labelP").style.color = "yellow";
                document.getElementById("labelP").innerHTML = "Average";
            } else
            {
                document.getElementById("labelP").style.color = "red";
                document.getElementById("labelP").innerHTML = "Weak";
            }
        }
    }

    function sendData()
    {
        var name = document.getElementById("Sidename").value;
        var user = document.getElementById("Sideuser").value;
        var emaillogin = document.getElementById("E1").value;
        var passwrd = document.getElementById("P1").value;
        alert(name);
        alert(user);
        alert(emaillogin);
        alert(passwrd);
        if (name === "" || user === "" || emaillogin === "" || passwrd === "")
        {
            alert("Enter the Form properly");
        } else
        {
            let xhr = new XMLHttpRequest();
            let formdata = new FormData();
            formdata.append("nme", name);
            formdata.append("usr", user);
            formdata.append("email", emaillogin);
            formdata.append("pss", passwrd);
            xhr.onreadystatechange = function ()
            {
                if (this.readyState === 4 && this.status === 200)
                {
                    var resp = this.responseText.trim();
                    if (resp === "exists")
                    {
                        Swal.fire({
                            title: '<strong>User Already Exists</strong>',
                            icon: 'info',
                            confirmButtonColor: '#f5c34b',
                            footer: '<u><a href="LoginPage.jsp">Login instead</a></u>'
                        });
                    } else
                    {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'Account Created',
                            showConfirmButton: false,
                            timer: 2500
                        });
                        window.location.href = "MainPage.jsp";
                    }
                }
            };
            xhr.open("POST", "./SignupServlet", true);
            xhr.send(formdata);
        }
    }
</script>
<div class="signup-hidden-sbar">
    <div class="hsidebar-header">
        <div class="sidebar-close-icon"><span class="flaticon-close"></span></div>
        <h4 class="title">Create Your Account</h4></div>
    <div class="hsidebar-content">
        <div class="log_reg_form sidebar_area">
            <div class="sign_up_form">
                <form action="#">
                    <div class="form-group">
                        <label class="form-label">Your Name</label>
                        <input type="text" class="form-control" id="Sidename" name="Sidename" placeholder="Enter UserName">
                    </div>
                    <div class="form-group">
                        <label class="form-label">Username</label>
                        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                        <span id="spUsr" style="color:red"></span>
                        <input type="text" class="form-control" id="Sideuser" name="Sideuser" placeholder="Enter Password"></div>
                    <div class="form-group">
                        <label class="form-label">Your Email</label>
                        <span id="labelE" style="color: red"></span>
                        <input type="email" class="form-control" id="E1" name="E1" onkeyup="CheckEmail()" placeholder="abc@gmail.com">
                    </div>
                    <div class="form-group mb20">
                        <label class="form-label" for ="P1">Password</label>
                        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                        <span id="labelP"></span>
                        <input type="password" id="P1" name="P1" onkeyup="passwordStrength()" required class="form-control" placeholder="******************">
                    </div>
                    <button type="button" onclick="sendData()" class="btn btn-signup btn-thm">Create Account</button>
                    <p class="text-center mb25 mt10">Already have an account?<a href="page-login.html">Sign in</a></p>

                </form>
            </div>
        </div>
    </div>
</div>



<!---------------------------------------------------------------------------------------------------------MOBILE VIEW STARTS HERE------------------------------------------------------------------------------------------------------------->




<div id="page" class="stylehome1">
    <div class="mobile-menu">
        <div class="header stylehome1 home2_style">
            <div class="menu_and_widgets">
                <div class="mobile_menu_bar float-start"><a class="menubar" href="#menu"><span></span></a><a
                        class="mobile_logo" href="#">Ganges<span class="text-thm">.</span></a></div>
                <div class="mobile_menu_widget_icons">
                    <ul class="cart mt15">
                        <li class="list-inline-item"><a class="cart_btn signin-filter-btn" href="#"><span
                                    class="icon flaticon-profile"></span></a></li>
                        <li class="list-inline-item"><a class="cart_btn cart-filter-btn" href="#"><span class="icon"><img
                                        src="images/icons/flaticon-shopping-cart-white.svg" alt=""></span><span
                                    class="badge bgc-thm">2</span></a></li>
                    </ul>
                </div>
            </div>
            <div class="mobile_menu_search_widget">
                <div class="header_middle_advnc_search">
                    <div class="container search_form_wrapper">
                        <div class="row">
                            <div>
                                <div class="top-search text-start">
                                    <form action="#" method="get" class="form-search" accept-charset="utf-8">
                                        <div class="box-search"><input class="form_control" type="text" name="search"
                                                                       placeholder="Search products?">
                                            <div class="search-suggestions text-start">
                                                <div class="box-suggestions">
                                                    <ul>
                                                        <li>
                                                            <div class="thumb"><img src="images/listing/sf1.png" alt="sf1.png"></div>
                                                            <div class="info-product">
                                                                <div class="item_title">Sony DJ Headphones 4334205465, Black, Standard</div>
                                                                <div class="price"><span class="sale">$32.50</span></div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="thumb"><img src="images/listing/sf2.png" alt="sf2.png"></div>
                                                            <div class="info-product">
                                                                <div class="item_title">Sony E-Mount Full Frame FE 24-70mm f/2.8 GM II G Master</div>
                                                                <div class="price"><span class="sale">$32.50</span></div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="thumb"><img src="images/listing/sf3.png" alt="sf3.png"></div>
                                                            <div class="info-product">
                                                                <div class="item_title">TV 55" 4-Series 4K UHD smart TV</div>
                                                                <div class="price"><span class="sale">$32.50</span></div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="thumb"><img src="images/listing/sf4.png" alt="sf4.png"></div>
                                                            <div class="info-product">
                                                                <div class="item_title">Hugolog Baby Monitor, 2K Security Camera, PT Cameras for</div>
                                                                <div class="price"><span class="sale">$32.50</span></div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="thumb"><img src="images/listing/sf5.png" alt="sf5.png"></div>
                                                            <div class="info-product">
                                                                <div class="item_title">Apple iPhone Retina 6s Plus 64GB</div>
                                                                <div class="price"><span class="sale">$32.50</span></div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div>
                                <div class="advscrh_frm_btn">
                                    <button type="submit" class="btn search-btn"><span class="flaticon-search"></span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="posr">
                <div class="mobile_menu_close_btn"><span class="flaticon-close"></span></div>
            </div>
        </div>
    </div>
    <nav id="menu" class="stylehome1">
        <ul>
            <li><span>Shop</span>
                <ul>
                    <li><span>User Dashboard</span>
                        <ul>
                            <li><a href="page-dashboard.html">Dashboard</a></li>
                            <li><a href="page-dashboard-order.html">Orders</a></li>
                            <li><a href="page-dashboard-wish-list.html">Downloads</a></li>
                            <li><a href="page-dashboard-address.html">Addresses</a></li>
                            <li><a href="page-dashboard-account-details.html">Account Details</a></li>
                            <li><a href="page-dashboard-wish-list.html">Wishlist</a></li>
                            <li><a href="page-login.html">Logout</a></li>
                        </ul>
                    </li>
                    <li><span>Shop Pages</span>
                        <ul>
                            <li><a href="page-shop-cart.html">Cart</a></li>
                            <li><a href="page-shop-checkout.html">Checkout</a></li>
                            <li><a href="page-shop-order-received.html">Order Received</a></li>
                            <li><a href="page-order-tracking.html">Order Tracking</a></li>
                            <li><a href="page-store-location.html">Store Locator</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><span>Accounts</span>
                <ul>
                    <li><a href="#"><span class="title">User Accounts</span></a>
                        <ul>
                            <li><a href="page-account-details.html"> User Account Details</a></li>
                            <li><a href="page-account-order.html"> User Account Order</a></li>
                            <li><a href="page-account-address.html"> User Account Address</a></li>
                            <li><a href="page-account-wishlist.html"> User Account Wishlist</a></li>
                            <li><a href="page-account-invoice.html"> User Account Invoice</a></li>
                        </ul>
                    </li>
                    <li><span>Vendor Accounts</span>
                        <ul>
                            <li><a href="#"> Vendor Account </a>
                                <ul>
                                    <li><a href="page-vendor-single.html">Vendor Single</a></li>
                                    <li><a href="page-dashboard.html">Dashboard</a></li>
                                    <li><a href="page-dashboard-products.html">Products</a></li>
                                    <li><a href="page-dashboard-order.html">Order</a></li>
                                    <li><a href="page-dashboard-customer.html">Customer</a></li>
                                    <li><a href="page-dashboard-categories.html">Categories</a></li>
                                    <li><a href="page-dashboard-message.html">Message</a></li>
                                    <li><a href="page-dashboard-setting.html">Settings</a></li>
                                </ul>
                            </li>
                            <li><a href="page-become-vendor.html">Become a Vendor</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="title my-3 bb1 pl20 fz20 fw500 pb-3">Categories</li>
            <li><span><i class="flaticon-cooking mr20"></i>Home & Kitchen</span>
                <ul>
                    <li><a href="page-shop-list-v1.html">Home & Kitchen</a></li>
                </ul>
            </li>
            <li><span><i class="flaticon-armchair mr20"></i>Home & Furniture</span>
                <ul>
                    <li><a href="page-shop-list-v1.html">Home & Furniture</a></li>
                </ul>
            </li>
            <li><span><i class="flaticon-smartphone-1 mr20"></i>Electronics</span>
                <ul>
                    <li><a href="page-shop-list-v1.html">Electronics</a></li>
                </ul>
            </li>
            <li><span><i class="flaticon-bride-dress mr20"></i>Clothing & Accessories</span>
                <ul>
                    <li><a href="page-shop-list-v1.html">Clothing & Accessories</a></li>
                </ul>
            </li>
            <li><span><i class="flaticon-heart-beat mr20"></i>Health & Beauty</span>
                <ul>
                    <li><a href="page-shop-list-v1.html">Health & Beauty</a></li>
                </ul>
            </li>
            <li><span><i class="flaticon-volleyball mr20"></i>Sport & Outdoor</span>
                <ul>
                    <li><a href="page-shop-list-v1.html">Sport & Outdoor</a></li>
                </ul>
            </li>
            <li><span><i class="flaticon-groceries mr20"></i>Grocery & Market</span>
                <ul>
                    <li><a href="page-shop-list-v1.html">Grocery & Market</a></li>
                </ul>
            </li>
            <li><span><i class="flaticon-remote-control mr20"></i>Toy & Video Games</span>
                <ul>
                    <li><a href="page-shop-list-v1.html">Toy & Video Games</a></li>
                </ul>
            </li>
            <li><span><i class="flaticon-feeding-bottle mr20"></i>Babies & Moms</span>
                <ul>
                    <li><a href="page-shop-list-v1.html">Babies & Moms</a></li>
                </ul>
            </li>
            <li><a class="tdu text-thm1 text-capitalize">See More&nbsp;<i class="far fa-angle-right"></i></a>
                <ul>
                    <li><a href="page-about.html">About us</a></li>
                    <li><a href="page-help.html">Help</a></li>
                    <li><a href="page-faq.html">Faq</a></li>
                    <li><a href="page-terms.html">Terms&Conditions</a></li>
                    <li><a href="page-contact.html">Contact-us</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>