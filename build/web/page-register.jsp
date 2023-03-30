<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

    <!-----------------------------------------------------------------------------------------------HEAD---------------------------------------------------------------------------------------------------------------------------------------------->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="keywords" content="auto parts, baby store, ecommerce, electronics, fashion, food, marketplace, modern, multi vendor, multipurpose, organic, responsive, shop, shopping, store">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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


            function go77() {
                const email = document.getElementById("emaillogin").value;
                if (email === "")
                {
                    document.getElementById("spEmaillogin").innerHTML = "";
                } else
                {
                    const isValid = isValidEmail(email);
                    if (isValid) {
                        document.getElementById("spEmaillogin").innerHTML = "";
                    } else {
                        document.getElementById("spEmaillogin").innerHTML = "*";
                    }
                }
            }
            function isValidEmail(email) {
                // regular expression pattern for email validation
                const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return emailPattern.test(email);
            }

            function getPasswordStrength()
            {
                const password = document.getElementById("pss1").value;
                if (password === "")
                {
                    document.getElementById("spPsssignup").innerHTML = "*";
                } else
                {
                    // regular expression patterns for password validation
                    const passwordLengthPattern = /.{8,}/;  // password should be at least 8 characters long
                    const passwordUppercasePattern = /[A-Z]+/;  // password should contain at least one uppercase letter
                    const passwordLowercasePattern = /[a-z]+/;  // password should contain at least one lowercase letter
                    const passwordNumberPattern = /\d+/;  // password should contain at least one number
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
                        document.getElementById("spPsssignup").style.color = "green";
                        document.getElementById("spPsssignup").innerHTML = "Strong";
                    } else if (strength >= 2)
                    {
                        document.getElementById("spPsssignup").style.color = "yellow";
                        document.getElementById("spPsssignup").innerHTML = "Average";
                    } else
                    {
                        document.getElementById("spPsssignup").style.color = "red";
                        document.getElementById("spPsssignup").innerHTML = "Weak";
                    }
                }
            }

            function go999()
            {
                var name = document.getElementById("nme1").value;
                var user = document.getElementById("usr1").value;
                var emaillogin = document.getElementById("emaillogin").value;
                var passwrd = document.getElementById("pss1").value;

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
                                window.location.href="MainPage.jsp";
                            }
                        }
                    };
                    xhr.open("POST", "./SignupServlet", true);
                    xhr.send(formdata);
                }
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
                                    <h2 class="title">Create your account</h2>
                                    <div class="sign_up_form">
                                        <form method="post" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label class="form-label" for="nme1">Your Name</label>
                                                <input type="text" class="form-control" placeholder="Enter Your Name" id="nme1" name ="nme" required>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label" for="usr">Username</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span id="spUsr" style="color: red"></span>
                                                <input type="text" class="form-control" id="usr1" name="usr1" placeholder="Enter Username" required>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label" for="emaillogin">Your Email</label><span id="spEmaillogin" style="color: red"></span>
                                                <input type="email" class="form-control" id="emaillogin" name="emaillogin" placeholder="abcxyz@gmail.com" onkeyup="go77()" required>
                                            </div>
                                            <div class="form-group mb20">
                                                <label class="form-label" for="spPsssignup">Password</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<span id="spPsssignup"></span>
                                                <input type="password" class="form-control" id="pss1" name="psssignup" placeholder="***************" onkeyup="getPasswordStrength()" required>
                                            </div>
                                            <button type="button" class="btn btn-signup btn-thm" onclick="go999()">Create Account</button>
                                            <p class="text-center mb25 mt10">Already have an account? <a href="LoginPage.jsp">Sign in</a></p>
                                        </form>
                                    </div>
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
</html>
