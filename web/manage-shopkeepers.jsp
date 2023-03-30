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
        <script>
            function DelShop(shopid)
            {

                Swal.fire({
                    title: 'Do you want to Remove the Shopkeeper?',
                    showDenyButton: true,
                    showCancelButton: true,
                    confirmButtonText: 'Remove',
                    denyButtonText: `Don't Remove`
                }).then((result) => {
                    if (result.isConfirmed) {
                        let xhr = new XMLHttpRequest();
                        xhr.onreadystatechange = function () {
                            if (this.readyState === 4 && this.status === 200)
                            {
                                let resp = this.responseText.trim();
                                if (resp === "success")
                                {
                                    Shopsload();
                                } else
                                {
                                    Swal.fire('Error Occured!', '', 'error');
                                }
                            }
                        };
                        xhr.open("GET", "./DelShop?Shopid=" + shopid, true);
                        xhr.send();
                        Swal.fire('Removed!', '', 'success');
                    } else if (result.isDenied) {
                        Swal.fire('Shopkeeper not removed', '', 'info')
                    }
                })


            }
        </script>
        <script>
            function AprShop(shopid)
            {
                let xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    if (this.readyState === 4 && this.status === 200)
                    {
                        let resp = this.responseText.trim();
                        if (resp === "success")
                        {
                            Shopsload();
                        } else
                        {
                            alert("error occurred");
                        }
                    }
                };
                xhr.open("GET", "./AprShop?Shopid=" + shopid, true);
                xhr.send();

            }
        </script>
        <script>
            function Shopsload()
            {

                fetch(`shopsload`).then(data => data.json()).then(resp => {
                    var arr = resp.ans;
                    let ans = "";
                    let ans1 = "";
                    for (let i = 0; i < arr.length; i++)
                    {
                        var obj = arr[i];
                        if (obj.shopstatus === "approve")
                        {
                            ans += '<tr>';
                            ans += '<td>' + obj.Shopid + '</td>';
                            ans += '<td>' + obj.Shopname + '</td>';
                            ans += '<td class="flex-shrink-0"><img src="' + obj.shopphoto + '" class="img img-fluid rounded-circle" style="width:95px; height: 95px" alt="avatar"></td>';
                            ans += '<td>' + obj.ShopOwner + '</td>';
                            ans += '<td>' + obj.phnno + '</td>';
                            ans += '<td>' + obj.ShopEmail + '</td>';
                            ans += '<td>' + obj.shopaddress + '</td>';
                            ans += '<td>';
                            ans += "<input type=\"button\" class=\"btn btn-thm\" onclick=\"DelShop( " + obj.Shopid + ")\" value=\"DELETE\">";
                            ans += '</td>';
                            ans += '</tr>';
                        } else
                        {
                            ans1 += '<tr>';
                            ans1 += '<td>' + obj.Shopid + '</td>';
                            ans1 += '<td>' + obj.Shopname + '</td>';
                            ans1 += '<td class="flex-shrink-0"><img src="' + obj.shopphoto + '" class="img img-fluid rounded-circle" style="width:95px; height: 95px" alt="avatar"></td>';
                            ans1 += '<td>' + obj.ShopOwner + '</td>';
                            ans1 += '<td>' + obj.phnno + '</td>';
                            ans1 += '<td>' + obj.ShopEmail + '</td>';
                            ans1 += '<td>' + obj.shopaddress + '</td>';
                            ans1 += '<td>';
                            ans1 += "<input type=\"button\" class=\"btn btn-thm\" onclick=\"AprShop( " + obj.Shopid + ")\" value=\"APPROVE\">";
                            ans1 += '</td>';
                            ans1 += '</tr>';
                        }
                    }
                    document.getElementById("tbdy1").innerHTML = ans;
                    document.getElementById("tbdy2").innerHTML = ans1;
                });
            }
        </script>
        <%@include file ="Header.jsp" %>
    </head>
    <!-----------------------------------------------------------------------------------------------HEAD----------------------------------------------------------------------------------------------------------------------------------------------->
    <%
        String admind = (String)(session.getAttribute("user"));
        if(admind!=null)
        {
    %>
    <body onload="Shopsload()">
        <div class="wrapper ovh">
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <div class="preloader"></div> 
            <!----------------------------------------------------------------------------------------------PreLoader div--------------------------------------------------------------------------------------------------------------------------------------->
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->        
            <%@include file ="Navbar.jsp" %>
            <!-----------------------------------------------------------------------------------------------NavBar Inserted----------------------------------------------------------------------------------------------------------------------------------------------->          
            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
            <div class="dashboard__main pl0">
                <div class="dashboard__content bgc-gmart-gray">
                    <div class="row pb80">
                        <div class="col-lg-12">
                            <div class="dashboard_title_area">
                                <h2>Manage Shopkeepers</h2>
                                <p class="para">hey Admin, manage the shopper requests</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="dashboard_setting_box">
                                <div class="ui_kit_tab style2">
                                    <!-- nav tab Nav List Start -->
                                    <ul class="nav nav-tabs mb15" id="myTab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="editprofile-tab" data-bs-toggle="tab" data-bs-target="#editprofile" type="button" role="tab" aria-controls="editprofile" aria-selected="true">Approved Shoppers</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="password-tab" data-bs-toggle="tab" data-bs-target="#password" type="button" role="tab" aria-controls="password" aria-selected="false">Pending Shopper's Request</button>
                                        </li>
                                    </ul>
                                    <!-- nav tab Nav List End -->
                                    <!-- nav tab contents Start -->
                                    <div class="tab-content pt20 row" id="myTabContent">
                                        <div class="tab-pane fade show active col-lg-12" id="editprofile" role="tabpanel" aria-labelledby="editprofile-tab">
                                            <div class="account_details_page form_grid">
                                                <div class="order_table table-responsive">
                                                    <table class="table">
                                                        <thead class="table-light">
                                                            <tr>
                                                                <th scope="col">Shop Id</th>
                                                                <th scope="col">Shop Name</th>
                                                                <th scope="col">Shop Photo</th>
                                                                <th scope="col">Shop Owner</th>
                                                                <th scope="col" colspan="3">Shop Details</th>
                                                                <th scope="col">Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="tbdy1">


                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade col-xl-12" id="password" role="tabpanel" aria-labelledby="password-tab">
                                            <div class="account_details_page form_grid">
                                                <div class="order_table table-responsive">
                                                    <table class="table">
                                                        <thead class="table-light">
                                                            <tr>
                                                                <th scope="col">Shop Id</th>
                                                                <th scope="col">Shop Name</th>
                                                                <th scope="col">Shop Photo</th>
                                                                <th scope="col">Shop Owner</th>
                                                                <th scope="col" colspan="3">Shop Details</th>
                                                                <th scope="col">Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id='tbdy2'>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- nav tab contents End -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

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
                                    <a class="btn-thm btn_error" href="AdminPage.jsp">Go Back To Admin Login.</a>
                                </div>
                            </div>
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
