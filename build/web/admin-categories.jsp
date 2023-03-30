<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
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

        <script>
            function addCat()
            {
                let catname = document.getElementById("catname").value;
                if (catname === "" || document.getElementById("catphoto").files.length === 0)
                {
                    Swal.fire({
                        title: 'Fill Completely',
                        confirmButtonColor: '#041e42'
                    });
                } else
                {
                    let formdata = new FormData();
                    formdata.append("catname", document.getElementById("catname").value);
                    formdata.append("catphoto", document.getElementById("catphoto").files[0]);
                    let xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function ()
                    {
                        if (this.readyState === 4 && this.status === 200)
                        {
                            var resp = this.responseText.trim();
                            if (resp === "success")
                            {
                                document.getElementById("cn").innerHTML = "";
                                Swal.fire({
                                    position: 'top-end',
                                    icon: 'success',
                                    title: 'Category Added Successfully',
                                    showConfirmButton: false,
                                    timer: 1500
                                });
                            } else
                            {
                                document.getElementById("cn").innerHTML = "ALREADY EXISTS";
                            }
                        }
                    };
                    xhr.open("POST", "./adminCat", true);
                    xhr.send(formdata);
                }

            }
        </script>
        <script>
            function DelCat(catname)
            {
                catname = encodeURIComponent(catname);
                let xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function ()
                {
                    if (this.readyState === 4 && this.status === 200) {
                        let resp = this.responseText.trim();
                        alert(resp);
                        if (resp === "success")
                        {
                            window.location.href = "admin-categories.jsp";
                        } else
                        {
                            Swal.fire({
                                position: 'top-end',
                                icon: 'error',
                                title: '',
                                showConfirmButton: false,
                                timer: 1500
                            });
                        }

                    }
                };
                xhr.open("POST", "./adminDelCat?catname=" + catname, true);
                xhr.send();
            }
        </script>
    </head>
    <!-----------------------------------------------------------------------------------------------HEAD----------------------------------------------------------------------------------------------------------------------------------------------->
    <%
        String admin2 = (String)(session.getAttribute("user"));
        if(admin2!=null)
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


            <div class="col-lg-10 dashboard__content bgc-gmart-gray">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="dashboard_title_area">
                            <h2>Hello Admin!</h2>
                            <p></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class= "dashboard_product_list account_user_deails col-lg-12">
                            <div class="order_table table-responsive">
                                <h2 class="title mb30">Shopping Category</h2>
                                <div class="ui_kit_tab style2">
                                    <!-- nav tab Nav List Start -->
                                    <ul class="nav nav-tabs mb15" id="myTab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="t20-tab" data-bs-toggle="tab" data-bs-target="#t20" type="button" role="tab" aria-controls="t20" aria-selected="true">Add a NEW Category!</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="baby-tab" data-bs-toggle="tab" data-bs-target="#baby" type="button" role="tab" aria-controls="baby" aria-selected="false">Edit Existing Category</button>
                                        </li>
                                    </ul>
                                    <!-- nav tab Nav List End -->
                                    <!-- nav tab contents Start -->
                                    <div class="tab-content pt20 row" id="myTabContent">
                                        <div class="tab-pane fade show active col-lg-12" id="t20" role="tabpanel" aria-labelledby="t20-tab">
                                            <div class="account_details_page form_grid">
                                                <form class="contact_form" name="contact_form" method="post" enctype="multipart/form-data">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="catname">Category Name</label>
                                                                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                                                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                                                &emsp;&emsp;&emsp;&emsp;
                                                                <span id="cn" style="color:red"></span>
                                                                <input class="form-control" type="text" id="catname" name="catname" placeholder="Enter Category Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="catphoto">Category photo</label>
                                                                <input class="form-control" type="file" id="catphoto" name="catphoto" placeholder="Choose Photo">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-12">
                                                            <div class="form-group d-flex mb0">
                                                                <button type="button" class="btn btn-thm me-3" onclick="addCat()">Add</button>
                                                                <button type="button" class="btn btn-white" onclick="back()">Cancel</button>
                                                                <script>
                                                                    function back() {
                                                                        window.location.href = "admin-categories.jsp";
                                                                    }</script>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade col-xl-12" id="baby" role="tabpanel" aria-labelledby="baby-tab">
                                            <div class="dashboard_product_list account_user_deails">
                                                <div class="order_table table-responsive">
                                                    <table class="table">
                                                        <thead class="table-light">
                                                            <tr>
                                                                <th scope="col"><b>Category name</b></th>
                                                                <th scope="col"></th>
                                                                <th scope="col"></th>
                                                                <th scope="col"><b>Category URL</b></th>
                                                                <th scope="col"><b>Action</b></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                ResultSet rs = DBLoader.executeQuery("select * from admincategory");
                                                                while(rs.next())
                                                                {
                                                                    String catname =rs.getString("catname");
                                                                    String photo = rs.getString("photos");
                                                                    String icon = rs.getString("icon");
                                                            %>
                                                            <tr>
                                                                <td><img style="height: 200px; width: 200px"  src="<%=photo%>"></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td><b><%=catname%></b></td>
                                                                <td class="editing_list align-middle">
                                                                    <ul>
                                                                        <li class="list-inline-item mb-1">
                                                                            <button class="btn btn-thm2-light" onclick="DelCat('<%=catname%>')">delete</button>
                                                                        </li>
                                                                    </ul>
                                                                </td>
                                                            </tr>
                                                            <%
                                                             }
                                                            %>
                                                        </tbody>
                                                    </table>
                                                </div
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
                                    <a class="btn-thm btn_error" href="AdminPage.jsp">Go Back To Admin Login</a>
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
