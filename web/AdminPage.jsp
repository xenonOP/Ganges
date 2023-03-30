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
            <script>
                function admincheck()
                {
                    let u = document.getElementById("adminuser").value;
                    let p = document.getElementById("adminpass").value;
                    var xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function()
                    {
                        
                        if (this.readyState === 4 && this.status === 200)
                        {
                            var resp = this.responseText.trim();
                            if (resp === "success")
                            {
                                window.location.href = "admin.jsp";
                            } 
                            else if (resp === "Enter correct username")
                            {
                                document.getElementById("admin1").innerHTML = "*";
                                Swal.fire({
                                    title: 'Enter Username Correctly',
                                    confirmButtonColor: '#f5c34b'
                                });
                            } else if (resp === "Enter correct password")
                            {
                                document.getElementById("admin2").innerHTML = "*";
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
                    xhr.open("GET", "./AdminServlet?usrA1=" + u + "&pssA1=" + p, true);
                    xhr.send();

                }
            </script>
            <div class="body_content_wrapper position-relative">
                <!-- Our SigIn -->
                <section class="our-log-reg bgc-f5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-xl-5 col-xxl-4 m-auto">
                                <div class="log_reg_form mt70-992">
                                    <h2 class="title">ADMIN LOGIN</h2>
                                    <div class="login_form">
                                        <form method = "POST" enctype="multipart/form-data">
                                            <div class="mb-2 mr-sm-2">
                                                <label class="form-label" for="adminuser">Username</label><span id ="admin1" style="color:red"></span>
                                                <input type="text" class="form-control" placeholder="Enter Username" id="adminuser" name ="adminuser" required>
                                            </div>
                                            <div class="form-group mb5">
                                                <label class="form-label" for ="adminpass">Password</label><span id ="admin2" style="color:red"></span>
                                                <input type="password" class="form-control" placeholder="Password" id="adminpass" name = "adminpass" required>
                                            </div>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="chk1">
                                                <a class="btn-fpswd float-end" href="#">Lost your password?</a>
                                            </div>
                                            <button type="button" class="btn btn-log btn-thm mt20" onclick="admincheck()">Login</button>
                                        </form>
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
</html>
