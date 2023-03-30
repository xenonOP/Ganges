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
    <body onload="hel()">
        <div class="wrapper ovh">
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <div class="preloader"></div> 
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->        
            <%@include file ="Navbar.jsp" %>
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->          
            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
            <% String total = request.getParameter("total"); %>
            <!-- Shop Checkouts Content -->
            <div class="body_content_wrapper position-relative">
                <section class="shop-checkouts pt30">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 col-lg-4 m-auto">
                                <div class="main-title text-center mb50">
                                    <h2 class="title">Checkout</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 col-xl-9">
                                <div class="checkout_form style2">
                                    <div class="main-title mb50">
                                        <p>Returning customer? <a class="signin-filter-btn" href="#">Click here to login</a></p>
                                    </div>
                                    <h4 class="title mb20">Billing details</h4>
                                    <div class="checkout_coupon ui_kit_button">
                                        <script>
                                            function order()
                                            {
                                                let FN = document.getElementById("FN").value;
                                                let LN = document.getElementById("LN").value;
                                                let country = document.getElementById("SelCo").value;
                                                let addr = document.getElementById("StAdd").value;
                                                let city = document.getElementById("city").value;
                                                let state = document.getElementById("State").value;
                                                let zip = document.getElementById("zip").value;
                                                let phn = document.getElementById("phn").value;
                                                let email = document.getElementById("email").value;
                                                if (FN === "" || LN === "" || country === "" || addr === "" || city === "" || state === "" || zip === "" || phn === "" || email === "")
                                                {
                                                    alert("fill completely");
                                                } else
                                                {
                                                    let xhr = new XMLHttpRequest();
                                                    xhr.onreadystatechange = function ()
                                                    {
                                                        if (this.readyState == 4 && this.status == 200)
                                                        {
                                                            let resp = this.responseText;

                                                        }
                                                    };
                                                    let ord = new FormData();
                                                    ord.append("FN", FN);
                                                    ord.append("LN", LN);
                                                    ord.append("country", country);
                                                    ord.append("addr", addr);
                                                    ord.append("city", city);
                                                    ord.append("state", state);
                                                    ord.append("zip", zip);
                                                    ord.append("phn", phn);
                                                    ord.append("email", email);
                                                    xhr.open("GET", "./", true);
                                                    xhr.send(ord);
                                                }
                                            }
                                        </script>
                                        <form class="form2" id="coupon_form" name="contact_form" action="#" method="post" enctype="multipart/form-data">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label class="form-label">First name *</label>
                                                        <input class="form-control form_control" type="text" placeholder="Kanish"    id="FN1">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Last name *</label>
                                                        <input class="form-control form_control" type="text" placeholder="Rajput" id="LN">
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <label class="form-label">Country / Region *</label>
                                                        <div class="checkout_country_form actegory">
                                                            <select class="selectpicker show-tick"id="SelCo">
                                                                <option>Select</option>
                                                                <option value="Turkey">Turkey</option>
                                                                <option value="United Kingdom">United Kingdom</option>
                                                                <option value="United States">United States</option>
                                                                <option value="Ukraine">Ukraine</option>
                                                                <option value="Uruguay">Uruguay</option>
                                                                <option value="India">India</option>
                                                                <option value="Uzbekistan">Uzbekistan</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label class="form-label">Street address *</label>
                                                        <input class="form-control form_control mb10" type="text" id="StAdd">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label class="form-label">Town / City *</label>
                                                        <input class="form-control form_control" type="text" id="city">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label class="form-label">State *</label>
                                                        <div class="checkout_country_form">
                                                            <select class="selectpicker show-tick" id="State">
                                                                <option>Select</option>
                                                                <option value="Istanbul">Punjab</option>
                                                                <option value="London">Himachal Pardesh</option>
                                                                <option value="NewYork">Jammu Kashmir</option>
                                                                <option value="Paris">Lahore</option>
                                                                <option value="Dubai">Bihar</option>
                                                                <option value="Rome">Mumbai</option>
                                                                <option value="Singapore">Tamil Naadu</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label class="form-label">ZIP *</label>
                                                        <input class="form-control form_control" type="text" id="zip">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Phone *</label><span class="form-label" id="ed" style="color:red;"></span>
                                                        <input name="form_phone" class="form-control form_control" type="number" id="phn121" onkeyup="validatePhoneNumberInput()">
                                                    </div>
                                                </div>
                                                <script>
                                                    function validatePhoneNumberInput()
                                                    {
                                                        const input = document.getElementById("phn121");
                                                        const value = input.value;
                                                        const phoneRegex = /^\d{10}$/;
                                                        if (phoneRegex.test(value))
                                                        {
                                                            document.getElementById("ed").innerHTML = "";
                                                        } else {
                                                            document.getElementById("ed").innerHTML = "*";
                                                        }
                                                    }
                                                </script>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Your Email</label><span class="form-label" id="ee" style="color:red;"></span>
                                                        <input name="form_email" class="form-control form_control email" type="email" id="em121" onkeyup="chkeml()">
                                                    </div>
                                                </div>
                                                <script>
                                                    function chkeml() {
                                                        const email = document.getElementById("E1").value;
                                                        if (email === "")
                                                        {
                                                            document.getElementById("ee").innerHTML = "*";
                                                        } else
                                                        {
                                                            const isValid = isValidEmail(email);
                                                            if (isValid)
                                                            {
                                                                document.getElementById("ee").innerHTML = "";
                                                            } else
                                                            {
                                                                document.getElementById("ee").innerHTML = "*";
                                                            }
                                                        }
                                                    }
                                                    function isValidEmail(email) {
                                                        // regular expression pattern for email validation
                                                        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                                                        return emailPattern.test(email);
                                                    }
                                                </script>
                                                <div class="col-sm-12">
                                                    <div class="form-group mb0">
                                                        <label class="ai_title">Order notes (optional)</label>
                                                        <textarea name="form_message" class="form-control" rows="7" placeholder="">Order Notes</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div><%String user = request.getParameter("user");%>
                            <div class="col-lg-4 col-xl-3">
                                <div class="order_sidebar_widget checkout_page mb30 mb30">
                                    <h4 class="title">Your Order</h4>
                                    <ul id="rat">
                                        <script>
                                            function hel()
                                            {
                                                let user = '<%=user%>';
                                                fetch(`Order?user=${user}`).then(data => data.json()).then(resp => {
                                                    let arr = resp.ans;
                                                    let ans = "";
                                                    for (let i = 0; i < arr.length; i++)
                                                    {
                                                        let obj = arr[i];
                                                        ans += "<li class=\"pb0\"><p class=\"product_name_qnt\">" + decodeURIComponent(obj.pname) + " </p><span class=\"price\">" + obj.TotalPrice + "</span></li>";
                                                    }
                                                    ans += "<li class=\"subtitle\"><p>Sub Total <span class=\"float-end totals\">&#8377;<%=total%></span></p></li>";
                                                    ans += "<li class=\"subtitle\"><p>Shipping <span class=\"float-end totals\">&#8377;0.0</span></p></li>";
                                                    ans += "<li class=\"subtitle\"><p>Taxes&GST <span class=\"float-end totals\">%12</span></p></li>";
                                                    ans += "<li class=\"subtitle\"><p>Total <span class=\"float-end totals\">&#8377;<%=total%></span></p></li>";
                                                    document.getElementById("rat").innerHTML = ans;
                                                });
                                            }

                                        </script>
                                    </ul>
                                </div>
                                <div class="payment_method">
                                    <div class="ui_kit_radiobox pm_content bb1">
                                        <div class="radio mb10">
                                            <input id="radio_one" name="radio" type="radio" checked="">
                                            <label class="pmtitle" for="radio_one"><span class="radio-label"></span> Direct bank transfer</label>
                                        </div>
                                        <div class="pm_details">
                                            <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.</p>
                                        </div>
                                    </div>
                                    <div class="ui_kit_radiobox pm_content bb1">
                                        <div class="radio mb10">
                                            <input id="radio_one2" name="radio" type="radio">
                                            <label class="pmtitle" for="radio_one2"><span class="radio-label"></span> Online Payment</label>
                                        </div>
                                    </div>
                                    <div class="ui_kit_radiobox pm_content">
                                        <div class="radio mb10">
                                            <input id="radio_one3" name="radio" type="radio" onclick="cod()">
                                            <label class="pmtitle" for="radio_one3"><span class="radio-label"></span> Cash on Delivery</label>
                                        </div>
                                    </div>
                                </div>
                                                    <script>
                                                        
                                                        function cod()
                                                        {
                                                            let user='<%=user%>';
                                                            let total = <%=total%>;
                                                            alert(total);alert(user);
                                                let FN = document.getElementById("FN1").value;
                                                alert(FN);
                                                let LN = document.getElementById("LN").value;
                                                let country = document.getElementById("SelCo").value;
                                                let addr = document.getElementById("StAdd").value;
                                                let city = document.getElementById("city").value;
                                                let state = document.getElementById("State").value;
                                                let zip = document.getElementById("zip").value;
                                                let phn = document.getElementById("phn121").value;
                                                let email = document.getElementById("em121").value;
                                                if (FN === "" || LN === "" || country === "" || addr === "" || city === "" || state === "" || zip === "" || phn === "" || email === "")
                                                {
                                                    alert("fill completely");
                                                } else
                                                {
                                                    let xhr = new XMLHttpRequest();
                                                    xhr.onreadystatechange = function ()
                                                    {
                                                        if (this.readyState == 4 && this.status == 200)
                                                        {
                                                            let resp = this.responseText;
                                                            alert(resp);
                                                            alert("hogya");
                                                        }
                                                    };
                                                    let ord = new FormData();
                                                    ord.append("FN", document.getElementById("FN1").value);
                                                    ord.append("LN", document.getElementById("LN").value);
                                                    ord.append("country", document.getElementById("SelCo").value);
                                                    ord.append("addr", document.getElementById("StAdd").value);
                                                    ord.append("city", document.getElementById("city").value);
                                                    ord.append("state", document.getElementById("State").value);
                                                    ord.append("zip", document.getElementById("zip").value);
                                                    ord.append("phn", document.getElementById("phn121").value);
                                                    ord.append("total", total);
                                                    ord.append("email", document.getElementById("em121").value);
                                                    ord.append("user",  user);
                                                    xhr.open("POST", "./Payment", true);
                                                    xhr.send(ord);
                                                }
                                                        }
                                                        </script>
                                <div class="ui_kit_checkbox checkout_pm">
                                    <label class="custom_checkbox">Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our privacy policy.
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="ui_kit_button payment_widget_btn">
                                    <button type="button" class="btn btn-thm btn-block mb0" onclick="order()">Place Order</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <a class="scrollToHome" href="#"><i class="fas fa-angle-up"></i></a>
        </div>
        <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
    </div>       
    <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    <%@include file ="footer.jsp" %>
    <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
</body>
</html>
