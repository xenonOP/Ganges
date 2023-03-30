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
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script>
                function kkk()
                {
                    let u = document.getElementById("usernamelogin").value;
                    let p = document.getElementById("passwordlogin").value;
                    var xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function ()
                    {
                        if (this.readyState === 4 && this.status === 200)
                        {
                            var resp = this.responseText.trim();
                            if (resp === "success")
                            {
                                window.location.href = "MainPage.jsp";
                            } else if (resp === "Enter correct username")
                            {
                                document.getElementById("sp1").innerHTML = "*";
                                Swal.fire({
                                    title: 'Enter Username Correctly',
                                    confirmButtonColor: '#f5c34b'
                                });
                            } else if (resp === "Enter correct password")
                            {
                                document.getElementById("sp2").innerHTML = "*";
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
            <div class="body_content_wrapper position-relative">
                <!-- Our SigIn -->
                <section class="our-log-reg bgc-f5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-xl-5 col-xxl-4 m-auto">
                                <div class="log_reg_form mt70-992">
                                    <h2 class="title">Welcome Back!</h2>
                                    <div class="login_form">
                                        <form method = "POST" enctype="multipart/form-data">
                                            <div class="mb-2 mr-sm-2">
                                                <label class="form-label" for="usernamelogin">Username or email address</label><span id ="sp1" style="color:red"></span>
                                                <input type="text" class="form-control" placeholder="Enter Username" id="usernamelogin" name ="usernamelogin" required>
                                            </div>
                                            <div class="form-group mb5">
                                                <label class="form-label" for ="passwordlogin">Password</label><span id ="sp2" style="color:red"></span>
                                                <input type="password" class="form-control" placeholder="Password" id="passwordlogin" name = "passwordlogin" required>
                                            </div>
                                            <div class="custom-control custom-checkbox">
                                                <a class="btn-fpswd float-end" href="#">Lost your password?</a>
                                            </div>
                                            <button type="button" class="btn btn-log btn-thm mt20" onclick="kkk()">Login</button>
                                            <p class="text-center mb25 mt10">Don't have an account? <a href="page-register.jsp">Create account</a></p>
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
