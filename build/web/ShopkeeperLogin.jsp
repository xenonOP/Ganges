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

            <div class="body_content_wrapper position-relative">
                <!-- Our SigIn -->
                <section class="our-log-reg bgc-f5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-xl-5 col-xxl-4 m-auto">
                                <div class="log_reg_form mt70-992">
                                    <h2 class="title">Welcome Dukandar!</h2>
                                    <div class="login_form">
                                        <form>
                                            <div class="form-group mb5">
                                                <label class="form-label" for ="Dukanid">Shop Id</label><span id ="dukanSpan" style="color:red"></span>
                                                <input type="text" class="form-control" placeholder="Password" id="Dukanid" name = "Dukanid" required>
                                            </div>
                                            <div class="form-group mb5">
                                                <label class="form-label" for ="Spass">Password</label><span id ="admin2" style="color:red"></span>
                                                <input type="password" class="form-control" placeholder="Password" id="Spass" name = "Spass" required>
                                            </div>
                                            <div class="custom-control custom-checkbox">
                                                <a class="btn-fpswd float-end" href="BecomeVendor.jsp#createpass">Lost Account?</a>
                                            </div>
                                            <button type="button" class="btn btn-log btn-thm mt20" onclick="Shopcheck()">Login</button>
                                            <script>
                                                function Shopcheck()
                                                {
                                                    let shpid = document.getElementById("Dukanid").value;
                                                    let spas = document.getElementById("Spass").value;
                                                    if (shpid === "" || spas === "")
                                                    {
                                                        Swal.fire('fill properly', '', 'error');
                                                    } else
                                                    {
                                                        let xhr = new XMLHttpRequest();
                                                        xhr.onreadystatechange = function ()
                                                        {
                                                            if (this.readyState === 4 && this.status === 200)
                                                            {
                                                                let resp = this.responseText.trim();
                                                                if (resp == "success")
                                                                {
                                                                    Swal.fire({
                                                                        position: 'top-end',
                                                                        icon: 'success',
                                                                        title: 'Welcome Dukandar',
                                                                        showConfirmButton: false,
                                                                        timer: 2000
                                                                    });
                                                                    window.location.href="DashBoard.jsp";
                                                                } else
                                                                {
                                                                    Swal.fire(
                                                                    {
                                                                        title: 'Invalid Details!',
                                                                        showCancelButton: true,
                                                                        showConfirmButton:false,
                                                                        cancelButtonColor: '#d33',
                                                                        cancelButtonText: 'ok!'
                                                                    });
                                                                }
                                                            }
                                                        };
                                                        xhr.open("GET", "./ShopPassCheck?id=" + shpid + "&pass=" + spas, true);
                                                        xhr.send();
                                                    }
                                                }
                                            </script>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
            </div>                   <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
        </div>       
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
        <%@include file ="footer.jsp" %>
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    </body>
</html>
