<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
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
        <link href="css/custom.css" rel="stylesheet" type="text/css"/>
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
            <div class="dashboard_content_wrapper">
                <div class="dashboard dashboard_wrapper pr0-md">
                    <div class="col-lg-12 rounded">
                        <div class="dashboard__content bgc-gmart-gray rounded">
                            <div class="row pb50">
                                <div class="col-lg-12">
                                    <div class="">
                                        <h2>Dashboard</h2>

                                        <h1>WELCOME <%=(String)session.getAttribute("user")%></h1>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-xxl-3">
                                    <div class="d-flex justify-content-between statistics_funfact">
                                        <div class="details">
                                            <div class="subtitle1">Total Earnings</div>
                                            <div class="title">$859.25k <span class="badge style1 text-center"><img class="pr5" src="images/resource/chart-up.png" alt="chart-up">2.2%</span></div>
                                            <div class="subtitle2"><span>$50</span> New Sales</div>
                                        </div>
                                        <div class="icon text-center mt-4"><i class="flaticon-money-bag"></i></div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xxl-3">
                                    <div class="d-flex justify-content-between statistics_funfact">
                                        <div class="details">
                                            <div class="subtitle1">Order</div>
                                            <div class="title">66,894</div>
                                            <div class="subtitle2"><span>40+</span> New Order</div>
                                        </div>
                                        <div class="icon text-center mt-4"><i class="flaticon-sent"></i></div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xxl-3">
                                    <div class="d-flex justify-content-between statistics_funfact">
                                        <div class="details">
                                            <div class="subtitle1">Customer</div>
                                            <div class="title">583.35M</div>
                                            <div class="subtitle2"><span>90+</span> New Customer</div>
                                        </div>
                                        <div class="icon text-center mt-4"><i class="flaticon-customer"></i></div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xxl-3">
                                    <div class="d-flex justify-content-between statistics_funfact">
                                        <div class="details">
                                            <div class="subtitle1">My Balance</div>
                                            <div class="title">$365.89k <span class="badge style2 text-center"><img class="pr5" src="images/resource/chart-down.png" alt="chart-up">2.2%</span></div>
                                            <div class="subtitle2"><span>290</span> Balance</div>
                                        </div>
                                        <div class="icon text-center mt-4"><i class="flaticon-wallet"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-8">
                                    <div class="application_statics mb30">
                                        <div class="report_widget d-block d-sm-flex justify-content-center justify-content-sm-between">
                                            <h4 class="title pl30">Earning Statistics</h4>
                                            <ul class="mb0 ml30-520">
                                                <li class="list-inline-item report_export mb15-520"><a href="#">Export Report</a></li>
                                                <li class="list-inline-item">
                                                    <select class="selectpicker show-tick">
                                                        <option>This Week</option>
                                                        <option>This Month</option>
                                                        <option>This Year</option>
                                                    </select>
                                                </li>
                                            </ul>
                                        </div>
                                        <canvas id="myChartweave" style="height:230px;">HELLO</canvas>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="circle_chart_box">
                                        <h4 class="title mb30">Earning</h4>
                                        <canvas id="myChart" style="height:230px;">$56,033</canvas>
                                    </div>
                                </div>
                            </div>
                            <div id="dd1s"><p>.</p></div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="dashboard_product_list account_user_deails">
                                        <div class="row d-block d-sm-flex justify-content-center justify-content-sm-between">
                                            <div class="col-sm-6 col-lg-3">
                                                <div class="dashboard_page header_search_widget mb30 mb15-520">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Search product" id="prdSerch" name="prdSerch" aria-label="Recipient's username" onkeyup="Serch()">
                                                        <%String Shoper2 = (String)(session.getAttribute("shopid"));%>
                                                        <script>
                                                            function Serch()
                                                            {
                                                                let sd = <%=Shoper2%>;
                                                                let srch = document.getElementById("prdSerch").value;
                                                                if(srch==="")
                                                                {
                                                                    getd();
                                                                }
                                                                else
                                                                {var xhr = new XMLHttpRequest();
                                                                xhr.onreadystatechange = function()
                                                                {
                                                                    if (this.readyState === 4 && this.status === 200)
                                                                    {
                                                                        let resp = this.responseText;
                                                                        let mainobj = JSON.parse(resp);
                                                                        let arr = mainobj.ans;
                                                                        console.log(arr);
                                                                        let ans = "";
                                                                        for (let i = 0; i < arr.length; i++)
                                                                        {
                                                                            let obj = arr[i];
                                                                            let v = obj.shopidfk;
                                                                            if (v==sd) {
                                                                                ans += "<tr>";
                                                                                ans += "<th scope=\"row\">#" + obj.productid + "</th>";
                                                                                ans += "<td>" + decodeURIComponent(obj.pname) + "</td>";
                                                                                ans += "<td><del>" + obj.price + "</del></td>";
                                                                                ans += "<td class=\"status\"><span class=\"style4\">" + obj.offerPrice + "</span></td>";
                                                                                ans += "<td>" + obj.catname + "</td>";
                                                                                ans += "<td class=\"editing_list align-middle\"><ul>";
                                                                                ans += "<li class=\"list-inline-item mb-1\" style=\"background-color: #ffffff;\">";
                                                                                ans += "<button type=\"button\" class=\"btn btn-lg btn-primary\" style=\"width: 60px; height: 47px \" onclick=\"DelProd( " + obj.productid + ")\">view</button>";
                                                                                ans += "</li></td><td><li class=\"list-inline-item mb-1\" style=\"background-color: #ffffff;\">";
                                                                                ans += "<button type=\"button\" class=\"btn btn-lg btn-danger\" style=\"width: 60px; height: 47px\" onclick=\"DelProd( " + obj.productid + ")\">del</button>";
                                                                                ans += "</li> </ul></td></tr>";
                                                                            } else
                                                                            {
                                                                                ans += "some error occured";
                                                                            }
                                                                        }
                                                                        document.getElementById("tbdS1").innerHTML = ans;
                                                                        }
                                                                    };
                                                                xhr.open("GET", "./PrdSearch?prdSerch=" + srch, true);
                                                                xhr.send();}
                                                            }
                                                        </script>
                                                        <div class="input-group-append">
                                                            <button class="btn" type="button"><span class="fa fa-search"></span></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-lg-3">
                                                <div class="dashboard_page sidebar_location_filter mb30 mb5-520">
                                                    <div class="form-group">
                                                        <div class="checkout_country_form actegory">
                                                            <select class="selectpicker show-tick" id="catselect" name="catselect" onchange="getd();">
                                                                <option value="allpd">All Products</option>
                                                                <%
                                                                ResultSet rst = DBLoader.executeQuery("select * from admincategory");
                                                                while(rst.next())
                                                                {
                                                                    String catname =rst.getString("catname");
                                                                %>
                                                                <option value="<%=catname%>"><%=catname%></option>
                                                                <%
                                                                    }
                                                                %>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-lg-3">
                                                <div class="dashboard_page_add_listing text-center text-lg-end mb30 mb15-520 d-grid">
                                                    <a href="#" class="btn btn-new btn-lg btn-thm" data-bs-toggle="modal" data-bs-target="#myModal">Add New Products</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="order_table table-responsive">
                                            <table class="table">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th scope="col">Product ID</th>
                                                        <th scope="col">Name</th>
                                                        <th scope="col">Price</th>
                                                        <th scope="col">Offer Price</th>
                                                        <th scope="col">Categories</th>
                                                        <th colspan="2">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbdS1">



                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
        </div>       
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
        <script src="js/chart.min.js"></script>
        <script src="js/chart.min.js"></script>
        <script src="js/chart-custome.js"></script>
        <script src="js/jquery.mmenu.all.js"></script>
        <script src="js/ace-responsive-menu.js"></script><script src="js/parallax.js"></script><script src="js/jquery-scrolltofixed-min.js"></script>
        <script src="js/dashboard-script.js"></script>
        <div class="modal" id="myModal" >
            <div class="modal-dialog  modal-dialog-centered ">
                <div class="modal-content rounded-c ">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="dashboard_setting_box" id='div1' >
                                <div class="ui_kit_tab style2">
                                    <!-- nav tab Nav List Start -->
                                    <ul class="nav nav-tabs mb15" id="myTab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="editprofile-tab" data-bs-toggle="tab" data-bs-target="#editprofile" type="button" role="tab" aria-controls="editprofile" aria-selected="true">ADD PRODUCT</button>
                                        </li>
                                    </ul>
                                    <!-- nav tab Nav List End -->
                                    <!-- nav tab contents Start -->
                                    <div class="tab-content pt20 row" id="myTabContent">
                                        <div class="tab-pane fade show active col-lg-12" id="editprofile" role="tabpanel" aria-labelledby="editprofile-tab">
                                            <div class="account_details_page form_grid">
                                                <form class="contact_form" enctype="multipart/form-data" method="post" id="frm1">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="d-flex align-items-center bb1 mb30 pb30">
                                                                <div class="flex-shrink-0">
                                                                    <img src="images/resource/avatar.png" class="img img-fluid rounded-circle" style="width:100px; height: 100px" id="prdimg" alt="avatar">
                                                                </div>
                                                                <div class="flex-grow-1 ms-4 editing_list">
                                                                    <h5 class="mb0">Main Product Photo</h5>
                                                                    <p class="fz14 heading-color">PNG or JPG no bigger than 800px wide and tall.</p>
                                                                    <ul>
                                                                        <li class="list-inline-item" style="background-color: #ffffff;">
                                                                            <input type="file" id="ProductPic" onchange="read(this)"  style="display:none">
                                                                            <button type="button" onclick="chooseFile()" class="btn btn-thm" style="width: 50px; height: 37px">edit</button>  
                                                                        </li><script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                                                                        <script>
                                                                                function read(input)
                                                                                {
                                                                                    if (input.files && input.files[0])
                                                                                    {
                                                                                        var reader = new FileReader();
                                                                                        reader.onload = function (e) {
                                                                                            $('#prdimg')
                                                                                                    .attr('src', e.target.result);
                                                                                        };

                                                                                        reader.readAsDataURL(input.files[0]);
                                                                                    }
                                                                                }
                                                                        </script>
                                                                        <li class="list-inline-item mb-1" style="background-color: #ffffff;">
                                                                            <input type="button" class="btn btn-thm" value="Del" id="delbtt" onclick="ddel()" />
                                                                        </li>
                                                                        <script>
                                                                                function chooseFile()
                                                                                {
                                                                                    document.getElementById('ProductPic').click();
                                                                                }
                                                                            function ddel()
                                                                            {
                                                                                document.getElementById("prdimg").src = "images/resource/avatar.png";
                                                                            }
                                                                        </script>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="prodname">Product Name</label>
                                                                <input class="form-control" id="prodname" name="prodname" type="text" placeholder="Product Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="dashboard_page sidebar_location_filter">
                                                                <div class="form-group mb-3">
                                                                    <label class="form-label" for="categ">Categories</label>
                                                                    <div class="checkout_country_form actegory">
                                                                        <select class="selectpicker show-tick" id="categ" name="categ">
                                                                            <option value="select">Select option</option>
                                                                            <%
                                                                   ResultSet rs = DBLoader.executeQuery("select * from admincategory");
                                                                   while(rs.next())
                                                                   {
                                                                       String catname1 =rs.getString("catname");
                                                                            %>
                                                                            <option value="<%=catname1%>"><%=catname1%></option> 
                                                                            <%
                                                                    }
                                                                            %>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="pPrice">Price</label>
                                                                <input class="form-control" id="pPrice" name="phnno" type="text" placeholder="Price">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" fo="offprice">Offer Price</label>
                                                                <input class="form-control" type="text" id="offprice" name="offprice" placeholder="Offer Price">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="productDesc">Product Overview & Description</label>
                                                                <textarea id="productDesc" name="name" rows="2" cols="30" class="form-control" placeholder="Enter Description"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-12">
                                                            <div class="form-group d-grid d-sm-flex mb0">
                                                                <button type="button" class="style2 btn btn-thm me-3 mb15-520" onclick="AddSt()">ADD</button>
                                                                <button type="button" class="style2 btn btn-white" data-bs-dismiss="modal">Cancel</button>
                                                            </div>
                                                        </div>

                                                        <%String Shoper = (String)(session.getAttribute("shopid"));%>
                                                        <script>
                                                            window.onload = function funn()
                                                            {
                                                                let sd = <%=Shoper%>;
                                                                fetch(`prodLoad`).then(data => data.json()).then(resp => {
                                                                    let arr = resp.ans;
                                                                    let ans2 = "";
                                                                    for (let i = 0; i < arr.length; i++)
                                                                    {
                                                                        let obj = arr[i];
                                                                        let si = obj.shopidfk;
                                                                        if (si==sd&&document.getElementById("catselect").value === "allpd") {
                                                                            ans2 += "<tr>";
                                                                            ans2 += "<th scope=\"row\">#" + obj.productid + "</th>"; 
                                                                            ans2 += "<td>" + decodeURIComponent(obj.pname) + "</td>";
                                                                            ans2 += "<td><del>" + obj.price + "</del></td>";
                                                                            ans2 += "<td class=\"status\"><span class=\"style4\">" + obj.offerPrice + "</span></td>";
                                                                            ans2 += "<td>" + obj.catname + "</td>";
                                                                            ans2 += "<td class=\"editing_list align-middle\"><ul>";
                                                                            ans2 += "<li class=\"list-inline-item mb-1\" style=\"background-color: #ffffff;\">";                                           
                                                                            ans2 += "<button type=\"button\" class=\"btn btn-lg btn-primary\" style=\"width: 60px; height: 47px \" onclick=\"sendesh("+ obj.productid + ")\">view</button>";
                                                                            ans2 += "</li></td><td><li class=\"list-inline-item mb-1\" style=\"background-color: #ffffff;\">";
                                                                            ans2 += "<button type=\"button\" class=\"btn btn-lg btn-danger\" style=\"width: 60px; height: 47px\" onclick=\"DelProd(" + obj.productid + ")\">del</button>";
                                                                            ans2 += "</li> </ul></td></tr>";
                                                                         } 
                                                                    }
                                                                    document.getElementById("tbdS1").innerHTML = ans2;
                                                                });
                                                            };
                                                            function sendesh(pid)
                                                            {
                                                                   window.location.href="ProdGallery.jsp?pid="+pid;
                                                            }
                                                            function getd()
                                                            {
                                                                let sd = <%=Shoper%>;
                                                                fetch(`prodLoad`).then(data => data.json()).then(resp => {
                                                                    let arr = resp.ans;
                                                                    let ans = "";
                                                                    for (let i = 0; i < arr.length; i++)
                                                                    {
                                                                        let obj = arr[i];
                                                                        let si = obj.shopidfk;
                                                                        if (si == sd && (obj.catname == document.getElementById("catselect").value || document.getElementById("catselect").value == "allpd")) 
                                                                        {
                                                                            ans += "<tr>";
                                                                            ans += "<th scope=\"row\">#" + obj.productid + "</th>";
                                                                            ans += "<td>" + decodeURIComponent(obj.pname) + "</td>";
                                                                            ans += "<td><del>" + obj.price + "</del></td>";
                                                                            ans += "<td class=\"status\"><span class=\"style4\">" + obj.offerPrice + "</span></td>";
                                                                            ans += "<td>" + obj.catname + "</td>";
                                                                            ans += "<td class=\"editing_list align-middle\"><ul>";
                                                                            ans += "<li class=\"list-inline-item mb-1\" style=\"background-color: #ffffff;\">";
                                                                            ans += "<button type=\"button\" class=\"btn btn-lg btn-primary\" style=\"width: 60px; height: 47px\" onclick=\"sendesh(" + obj.productid + ")\">view</button>";
                                                                            ans += "</li></td><td><li class=\"list-inline-item mb-1\" style=\"background-color: #ffffff;\">";
                                                                            ans += "<button type=\"button\" class=\"btn btn-lg btn-danger\" style=\"width: 60px; height: 47px\" onclick=\"DelProd(" + obj.productid + ")\">del</button>";
                                                                            ans += "</li> </ul></td></tr>";
                                                                        }
                                                                    }
                                                                    document.getElementById("tbdS1").innerHTML = ans;
                                                                });
                                                            }

                                                            function DelProd(prdid)
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
                                                                                    getd();
                                                                                    funn();
                                                                                } else
                                                                                {
                                                                                    Swal.fire('Error Occured!', '', 'error');
                                                                                }
                                                                            }
                                                                        };
                                                                        xhr.open("GET", "./DelProd?prdid=" + prdid, true);
                                                                        xhr.send();
                                                                        Swal.fire('Removed!', '', 'success');
                                                                    } else if (result.isDenied) {
                                                                        Swal.fire('Shopkeeper not removed', '', 'info');
                                                                    }
                                                                });
                                                            }

                                                            function AddSt()
                                                            {
                                                                let shoperid = <%=Shoper%>;
                                                                
                                                                let productname = document.getElementById("prodname").value;
                                                                productname = encodeURIComponent(productname);
                                                                if(productname.includes("'")){
                                                                productname = productname.replace("'", "&gt;");
                                                                }
                                                                let productDesc = document.getElementById("productDesc").value;
                                                                productDesc = encodeURIComponent(productDesc);
                                                                if(productDesc.includes("'")){
                                                                productDesc = productDesc.replace("'", "&gt;");}
                                                                let category = document.getElementById("categ").value;
                                                                let offerprice = document.getElementById("offprice").value;
                                                                let price = document.getElementById("pPrice").value;
                                                                if (productDesc === "" || productname === "" || category === "" || offerprice === "" || price === "")
                                                                {
                                                                    Swal.fire({title: 'Fill Details completely!', showCancelButton: true, showConfirmButton: false, cancelButtonColor: '#d33', cancelButtonText: '   ok!    '});
                                                                } else
                                                                {
                                                                    let xhr = new XMLHttpRequest();
                                                                    xhr.onreadystatechange = function ()
                                                                    {
                                                                        if (this.readyState === 4 && this.status === 200)
                                                                        {
                                                                            let resp = this.responseText.trim();
                                                                            console.log(resp);
                                                                            if (resp =="success")
                                                                            {
                                                                                Swal.fire({
                                                                                    position: 'top-end',
                                                                                    icon: 'success',
                                                                                    title: 'Product has been added!',
                                                                                    showConfirmButton: false,
                                                                                    timer: 2500
                                                                                });
                                                                                document.getElementById("frm1").reset();
                                                                                document.getElementById("prdimg").src = "images/resource/avatar.png";
                                                                                getd();
                                                                                funn();
                                                                            } else
                                                                            {
                                                                                alert(resp);
                                                                                Swal.fire(resp+'Error Occured!', '', 'error');
                                                                            }
                                                                        }
                                                                    };
                                                                    xhr.open("POST", "./ShopProducts", true);
                                                                    let prddata = new FormData();
                                                                    prddata.append("F29", document.getElementById("ProductPic").files[0]);
                                                                    prddata.append("Shopperid", shoperid);
                                                                    prddata.append("productDesc", productDesc);
                                                                    prddata.append("category1", document.getElementById("categ").value);
                                                                    prddata.append("productname1", productname);
                                                                    prddata.append("offerprice1", document.getElementById("offprice").value);
                                                                    prddata.append("price1", document.getElementById("pPrice").value);
                                                                    xhr.send(prddata);
                                                                }
                                                            }
                                                        </script>
                                                    </div>
                                                </form>
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
        </div>



        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    </body>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="js/jquery-3.6.0.js"></script>
    <script src="js/jquery-migrate-3.0.0.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <script src="js/jquery.mmenu.all.js"></script>
    <script src="js/ace-responsive-menu.js"></script>
    <script src="js/jquery-scrolltofixed-min.js"></script>
    <script src="js/slider.js"></script>
    <script src="js/scrollbalance.js"></script>
    <script src="js/single-counter.js"></script>
    <script src="js/script.js"></script>
    <script src="js/parallax.js"></script>
    <script src="js/jquery.counterup.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAz77U5XQuEME6TpftaMdX0bBelQxXRlM&amp;callback=initMap"></script>
    <script src="js/googlemaps1.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</html>
<!--<div class="modal-footer">-->
<!--<button type="button" class="btn btn-danger" >Close</button>-->                 
<!--</div>-->
