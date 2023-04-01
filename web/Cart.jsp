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
        
        <%@include file ="Header.jsp" %>
    </head>
    <!-----------------------------------------------------------------------------------------------HEAD----------------------------------------------------------------------------------------------------------------------------------------------->
     <%String str= (String)(session.getAttribute("user"));
            if(str!=null)
            {
     %>   
    <body onload="crt()">
        <div class="wrapper ovh">
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <div class="preloader"></div> 
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->        
            <%@include file ="Navbar.jsp" %>
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->          
            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
            <!-- Shop Checkouts Content -->

            <section class="shop-cart pt30">
                <div class="container">

                    <div class="row mt15">
                        <div class="col-lg-8 col-xl-9">
                            <div class="shopping_cart_table table-responsive">
                                <table class="table table-borderless" >
                                    <thead>
                                        <tr>
                                            <th scope="col">PRODUCT</th>
                                            <th scope="col">PRICE</th>
                                            <th scope="col">QUANTITY</th>
                                            <th scope="col">TOTAL</th>
                                            <th scope="col">REMOVE</th>
                                        </tr>
                                    </thead>
                                    <tbody class="table_body" id="tdy1">
                                    <script>
                                        <%
                                         String usr3 = request.getParameter("user"); 
                                        %>
                                        function crt()
                                        {

                                            let user = '<%=usr3%>';
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
                                                    let sum = 0;
                                                    let disc = 0;
                                                    for (let i = 0; i < arr.length; i++)
                                                    {
                                                        let obj = arr[i];
                                                        disc = parseInt(disc) + obj.price - obj.ofPrice;
                                                        ans += "<th scope=\"row\">";
                                                        ans += "<ul class=\"cart_list d-block d-xl-flex\">";
                                                        ans += "<li class=\"ps-1 ps-sm-4 pe-1 pe-sm-4\"><a href=\"#\"><img src=\"" + obj.photo + "\" alt=\"cart1.png\"></a></li>";
                                                        ans += "<li class=\"ms-2 ms-md-3\">";
                                                        ans += "<a class=\"cart_title\" href=\"#\">";
                                                        ans += "<span class=\"fz16\">" + decodeURIComponent(obj.prdname.split(" ")[0]) + "<br class=\"d-none d-md-block\"> " + decodeURIComponent(obj.prdname.split(" ")[1]) + "</span> <br>";
                                                        ans += "<span class=\"fz14\"><span class=\"fw500\">" + decodeURIComponent(obj.Desc.split(".")[0]) + ".</span></span><br>";
                                                        ans += "<span class=\"fz14\"><span class=\"fw500\">Actual Color:</span> Silver</span>";
                                                        ans += " </a>";
                                                        ans += "</li>";
                                                        ans += "</ul></th>";
                                                        ans += "<td id=\"ofp" + i + "\">" + obj.ofPrice + "</td>";
                                                        ans += "<td>";
                                                        ans += "<div class=\"cart_btn\">";
                                                        ans += "<div class=\"quantity-block\">";
                                                        ans += "<button class=\"quantity-arrow-minus3 inner_page\" onclick=\"decr('ofp" + i + "', 'id" + i + "', 'idd" + i + "', '" + obj.prdid + "', '" + disc + "')\" > <span class=\"fa fa-minus\"></span> </button>";
                                                        ans += "<input class=\"quantity-num3 inner_page\" type=\"number\" value=\"" + obj.quant + "\" id=\"id" + i + "\" />";
                                                        ans += "<button class=\"quantity-arrow-plus3 inner_page\" onclick=\"incr('ofp" + i + "', 'id" + i + "', 'idd" + i + "', '" + obj.prdid + "', '" + disc + "')\"> <span class=\"fas fa-plus\"></span> </button>";
                                                        ans += "</div>";
                                                        ans += "</div></td>";
                                                        //let pd = parseInt(document.getElementById("id88").value);

                                                        ans += "<td id=\"idd" + i + "\">" + obj.ofPrice*obj.quant + "</td>";

                                                        ans += "<td><span class=\"flaticon-close\" onclick=\"delCart( " + obj.prdid + ")\"></span></td>";
                                                        ans += "</tr>";

                                                        sum = parseInt(sum) + parseInt(obj.ofPrice);
                                                        
                                                        
                                                        sided();
                                                    }
                                                    document.getElementById("tdy1").innerHTML = ans;
                                                    sided();
                                                }
                                            };
                                            xhr.open("GET", "./CartLoading?user=" + user, true);
                                            xhr.send();

                                        }
                                        ;

                                        function incr(ofp, edf, tpp, pid, disc)
                                        {
                                            let tp = parseInt(document.getElementById(ofp).innerHTML);
                                            let cart = parseInt(document.getElementById(edf).value);
                                            cart = cart + 1;
                                            let Total = (cart * tp);
                                            document.getElementById(tpp).innerHTML = Total.toLocaleString("en-US");
                                            document.getElementById(edf).value = cart;
                                            disc = disc * cart;
                                            fun(edf, tpp, pid, ofp);
                                            sided();
                                        }
                                        function decr(ofp, edf, tpp, pid, disc)
                                        {
                                            let cart = parseInt(document.getElementById(edf).value);
                                            let tp = parseInt(document.getElementById(ofp).innerHTML);
                                            if (cart > 1)
                                            {
                                                cart = cart - 1;
                                            }
                                            document.getElementById(edf).value = cart;
                                            let Total = (cart * tp);
                                            document.getElementById(tpp).innerHTML = Total.toLocaleString("en-US");
                                            fun(edf, tpp, pid, ofp);
                                            sided();
                                        }
                                        function fun(edf, mn, pid, ofp)
                                        {
                                            let val = document.getElementById(edf).value;
                                            let totalP = document.getElementById(mn).innerHTML;
                                            let Price = document.getElementById(ofp).innerHTML;
                                            let url = "./changeQuant?pid=" + pid + "&quant=" + val + "&tp=" + Price;
                                            fetch(url).then(data => data.text()).then(resp => {
                                                document.getElementById(mn).innerHTML = resp.trim();
                                            });
                                        }
                                        function delCart(pid)
                                        {
                                            let xhr = new XMLHttpRequest();
                                            xhr.onreadystatechange = function ()
                                            {
                                                if (this.readyState === 4 && this.status === 200)
                                                {
                                                    let resp = this.responseText.trim();
                                                    if (resp === "success")
                                                    {
                                                        crt();
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


                                    </tbody>
                                </table>
                                <div class="checkout_form mt30">
                                    <div class="checkout_coupon posr d-block d-xl-flex">
                                        <form class="form_one posr mb10-lg">
                                            <input class="form-control coupon_input" type="search" placeholder="add instruction" aria-label="Search" >
                                            <a class="btn apply_count_btn" href="#">Any Instruction</a>
                                        </form>
                                        <form class="form_two">
                                            <button type="button" class="btn btn_shopping btn-white me-3" onclick="gifg()">Continue Shopping</button>
                                            <script> function gifg() {
                                                    window.location.href = "MainPage.jsp"
                                                }</script>
                                            <button type="button" class="btn btn_cart btn3 btn-thm" onclick="upd()">Update Cart</button>
                                            <button type="button" class="btn btn_cart btn3 btn-thm">RENT IT</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-xl-3">
                            <div class="order_sidebar_widget style2">
                                <h4 class="title">Cart Totals</h4>
                                <script>
                                    function upd()
                                    {
                                        location.reload();
                                    }
                                    window.setInterval(sided(), 5000);
                                    let tal= 0;
                                     function sided()
                                    {
                                        let user = '<%=UserName%>';
                                        let url = "./CartTotal?user=" + user;
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
                                                document.getElementById("aftP").innerHTML = ttol.toLocaleString("en-US");
                                                document.getElementById("ttl").innerHTML = paise.toLocaleString("en-US");
                                                tal = ttol;
                                            }
                                        };
                                        xhr.open("GET", "./CartTotal?user=" + user, true);
                                        xhr.send();
                                    }
                                </script>
                                <ul id="act">
                                    <li class="subtitle"><p>Product Subtotal <span class="float-end" id="ttl"></span></p></li>
                                    <li class="subtitle"><p>Estimated Shipping <span class="float-end">Free</span></p></li>
                                                    <li class="subtitle"><hr></li>
                                                    <li class="subtitle"><p>Estimated Taxes <span class="float-end">GST: 12%</span></p></li>
                                                    <li class="subtitle totals"><p>Total <span class="float-end" id="aftP"></span></p></li>
                                                    <li class="subtitle"><hr></li>
                                </ul>
                                <div class="ui_kit_button payment_widget_btn">
                                    <button type="button" class="btn btn-thm btn-block" onclick="proceed()">Proceed to checkout</button>
                                    <script>
                                        function proceed()
                                        {
                                            let usr3 = '<%=usr3%>';
                                            window.location.href = "Checkout.jsp?total="+tal+"&user="+usr3;
                                        }
                                    </script>
                                </div>
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
    <%
             }
else
{
        %>
        <body>
        <div class="wrapper ovh">
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <div class="preloader"></div> 
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->        
            <%@include file ="Navbar.jsp" %>
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->          
            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->

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
                                    <button class="btn-thm btn_error" ><a class="header_top_iconbox home2_style text-start signin-filter-btn" href="">Login Here</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="our-error">
                    <div class="container">
                        <div class="row">
                            
                            
                        </div>
                    </div>
                </section>
                <a class="scrollToHome" href="#"><i class="fas fa-angle-up"></i></a>
            </div>
            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
        </div>       
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
        <%@include file ="footer.jsp" %>
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    </body>
        <%
            }
            %>
</html>
