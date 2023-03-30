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

    <body onload="fck()">
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
                                                <%
                                               int pid1 = Integer.parseInt(request.getParameter("pid"));
                                               try{
                                               ResultSet rs= DBLoader.executeQuery("SELECT * FROM ganges.product where productid="+pid1);
                                               if(rs.next())
                                               {
                                               String photod1 = rs.getString("photo");
                                               int Prdid = rs.getInt("productid");
                                               String ct = rs.getString("catname");
                                               String of = rs.getString("offerPrice");
                                               String pp = rs.getString("price");
                                               String name = rs.getString("pname");
                                               name = name.replace("%20", " ");
                                               StringTokenizer st = new StringTokenizer(name);
                                                int n = st.countTokens();
                                                String Firstname = st.nextToken();
                                                %>        
                                                <a class="product_popup popup-img" href="<%=photod1%>"><span class="flaticon-full-screen"></span></a>
                                                <div class="zoomimg_wrapper">
                                                    <img class="zoom-img" id="zoom_01" src="<%=photod1%>" data-zoom-image="<%=photod1%>" width="550" alt="Shop Single Image"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                            <div class="shop_single_navmenu_content mb-3 text-center">
                                                <a class="product_popup popup-img" href="<%=photod1%>"><span class="flaticon-full-screen"></span></a>
                                                <div class="zoomimg_wrapper">
                                                    <img class="zoom-img" id="zoom_02" src="<%=photod1%>" data-zoom-image="<%=photod1%>" width="550" alt="<%=photod1%>"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade show active" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                            <div class="shop_single_navmenu_content mb-3 text-center">
                                                <a class="product_popup popup-img" href="<%=photod1%>"><span class="flaticon-full-screen"></span></a>
                                                <div class="zoomimg_wrapper">
                                                    <img class="zoom-img" id="zoom_03" src="<%=photod1%>" data-zoom-image="<%=photod1%>" width="550" alt="Shop Single Image"/>
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
                                    <li class="border-right"><%=Firstname%></li>
                                </ul>
                                <h4 class="title mb15"><%=name%></h4>
                                <hr>
                                <div class="sspd_price mb25 mt20">&#8377;<%=of%><small><del class="mr10">&#8377;<%=pp%></del></small></div>
                                <hr>
                                <div class="mb-0"><form enctype="multipart/form-data" method="post">
                                        <ul class="cart_btn_widget shop_single2_style align-items-center mb-0">
                                            <li class="list-inline-item me-3 mb-3"><a href="#" class="btn btn-thm bdrs60" onclick="chooseFile()">Add More Related Pictures</a></li><input type="file" id="ProductPic" onchange="addMore()" style="display:none">
                                        </ul></form>
                                </div>
                                <script>
                                    function chooseFile()
                                    {
                                        document.getElementById('ProductPic').click();
                                    }

                                    function addMore()
                                    {
                                        let pid = <%=pid1%>;

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
                                                    Swal.fire({
                                                        position: 'top-end',
                                                        icon: 'success',
                                                        title: 'Picture added',
                                                        showConfirmButton: false,
                                                        timer: 1500
                                                    });
                                                    fck();
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
                                    <li><a href="#">Product id:# <%=Prdid%> </a></li>
                                    <li><a href="#">Categories: <%=ct%></a></li>
                                </ul>
                                <%
                                            }
                                                  }catch(Exception e)
                                        {
                                    e.printStackTrace();
                                            }
                                %>
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
                                        <p class="heading-color">Sold and shipped by <a href="#" class="fw500 heading-color fz16">GANGES-STORE | GANGES STORE LLC Fulfilled by Ganges</a></p>
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
                    <div class="row mt50">
                        <div class="col-lg-12">
                            <div class="main-title">
                                <h2 class="title">Related Pictures</h2>
                            </div>
                            <div class="row mt50">
                                <div class="col-lg-12">
                                    <div class="navi_pagi_top_right related_product_slider slider_dib_sm shop_item_6grid_slider owl-theme owl-carousel" id="crsl1">


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <% int pid = Integer.parseInt(request.getParameter("pid"));%> <!-- comment -->
            <script>
                function fck()
                {
                    let pid =<%=pid%>;

                    let xhrs = new XMLHttpRequest();
                    xhrs.onreadystatechange = function ()
                    {
                        if (this.readyState === 4 && this.status === 200)
                        {
                            let resp = this.responseText;
                            let mainobj = JSON.parse(resp);
                            var arr = mainobj.ans;
                            console.log(arr);
                            let ans = "";
                            for (let i = 0; i < arr.length; i++)
                            {
                                let obj = arr[i];
                                ans += "<div class=\"owl-item active\" style=\"width: 229.333px; margin-right: 0px;\">";
                                ans += "<div class=\"item\">";
                                ans += "<div class=\"shop_item small_style bdr1 px-2 px-sm-3 mx--1\">";
                                ans += "<div class=\"thumb pb30\">";
                                ans += "<img class=\"w100\" src=\"" + obj.photo + "\" alt=\"Shop Item" + i + "\">";
                                ans += "<div class=\"shop_item_cart_btn d-grid\">";
                                ans += "<button type=\"button\" class=\"btn btn-lg btn-danger\" onclick=\"delpic('" + obj.Galid + "')\">Delete</button>";
                                ans += "</div>";
                                ans += "</div>";
                                ans += "<div class=\"details\">";
                                ans += "<div class=\"sub_title\">Photo " + (i + 1) + "</div>";
                                ans += "</div>";
                                ans += "</div>";
                                ans += "</div>";
                                ans += "</div>";
                            }
                            document.getElementById("crsl1").innerHTML = ans;
                        }
                    };
                    xhrs.open("GET", "./prdDetail?pid=" + pid, true);
                    xhrs.send();
                }
                ;

                function delpic(Gid)
                {
                    let gid = Gid;
                    Swal.fire({
                        title: 'Do you want to Delete Product Photo?',
                        showDenyButton: true,
                        showCancelButton: true,
                        confirmButtonText: 'Delete',
                        denyButtonText: `Don't Delete`
                    }).then((result) => {
                        /* Read more about isConfirmed, isDenied below */

                        if (result.isConfirmed) {
                            let xhr = new XMLHttpRequest();
                            xhr.onreadystatechange = function ()
                            {
                                if (this.readyState === 4 && this.status === 200)
                                {
                                    let resp = this.responseText.trim();
                                    if (resp === "success")
                                    {
                                        fck();

                                    } else
                                    {
                                        Swal.fire('Error Occured!', '', 'error');
                                    }
                                }
                            };
                            xhr.open("GET", "./DelProIMG?galid=" + gid, true);
                            xhr.send();
                            Swal.fire('Deleted!', '', 'success');
                        } else if (result.isDenied) {
                            Swal.fire('Pic not Deleted', '', 'info');
                        }
                    });

                }
            </script>


            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
        </div>       
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->

        <%@include file ="footer.jsp" %>

        <!-- Custom script for all pages --> 

        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    </body>
</html>
