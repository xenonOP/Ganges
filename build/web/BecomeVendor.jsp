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

            <section class="inner_page_breadcrumb style4">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5">
                            <div class="breadcrumb_content style4">
                                <h2 class="breadcrumb_title">Become Seller @Ganges</h2>
                                <p>More than half the units sold in our stores are from independent sellers.</p>
                                <a class="btn btn-thm" href="BecomeVendor.jsp#div1">Sign up</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="dashboard__main pl0">
                <div class="dashboard__content bgc-gmart-gray">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="dashboard_setting_box" id='div1' >
                                <div class="ui_kit_tab style2">
                                    <!-- nav tab Nav List Start -->
                                    <ul class="nav nav-tabs mb15" id="myTab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="editprofile-tab" data-bs-toggle="tab" data-bs-target="#editprofile" type="button" role="tab" aria-controls="editprofile" aria-selected="true">Create Account</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="password-tab" data-bs-toggle="tab" data-bs-target="#password" type="button" role="tab" aria-controls="password" aria-selected="false">Change Password of existing account</button>
                                        </li>
                                    </ul>
                                    <!-- nav tab Nav List End -->
                                    <!-- nav tab contents Start -->
                                    <div class="tab-content pt20 row" id="myTabContent">
                                        <div class="tab-pane fade show active col-lg-12" id="editprofile" role="tabpanel" aria-labelledby="editprofile-tab">
                                            <div class="account_details_page form_grid">
                                                <form class="contact_form">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="d-flex align-items-center bb1 mb30 pb30">
                                                                <div class="flex-shrink-0">
                                                                    <img src="images/resource/avatar.png" class="img img-fluid rounded-circle" style="width:150px; height: 150px" id="img11" alt="avatar">
                                                                </div>
                                                                <div class="flex-grow-1 ms-4 editing_list">
                                                                    <h5 class="mb0">Your avatar</h5>
                                                                    <p class="fz14 heading-color">PNG or JPG no bigger than 800px wide and tall.</p>
                                                                    <ul>
                                                                        <li class="list-inline-item mb-1">
                                                                            <input type="file" id="fileChooser" onchange="read(this)"  style="display:none">
                                                                            <button type="button" onclick="chooseFile()" class="btn btn-thm" style="width: 50px; height: 37px">edit</button>
                                                                        </li><script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                                                                        <script>
                                                                                function read(input)
                                                                                {
                                                                                    if (input.files && input.files[0])
                                                                                    {
                                                                                        var reader = new FileReader();
                                                                                        reader.onload = function (e) {
                                                                                            $('#img11')
                                                                                                    .attr('src', e.target.result);
                                                                                        };

                                                                                        reader.readAsDataURL(input.files[0]);
                                                                                    }
                                                                                }
                                                                        </script>
                                                                        <li class="list-inline-item mb-1">
                                                                            <input type="button" class=" btn btn-thm" value="Del" id="delbtt" onclick="ddel()" />
                                                                        </li>
                                                                        <script>
                                                                            function chooseFile()
                                                                            {
                                                                                document.getElementById('fileChooser').click();
                                                                            }
                                                                            function ddel()
                                                                            {
                                                                                document.getElementById("img11").src = "images/resource/avatar.png";
                                                                            }
                                                                        </script>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for ="shopid">Choose Shop ID</label>
                                                                <input class="form-control" id="shopid" name="shopid" type="number" placeholder="Your ID">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="shopname">Shop Name</label>
                                                                <input class="form-control" id="shopname" name="shopname" type="text" placeholder="Shop Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="phnno">Shop Phone Number</label>
                                                                <input class="form-control" id="phnno" name="phnno" type="text" placeholder="Phone Number">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" fo="shopowner">Shop Owner Name</label>
                                                                <input class="form-control" type="text" id="shopowner" name="shopowner" placeholder="Owner Name">
                                                            </div>
                                                        </div>
                                                        <script>
                                                            function Emailcheck()
                                                            {
                                                                const email = document.getElementById("shopemail").value;
                                                                if (email === "")
                                                                {
                                                                    document.getElementById("em1").innerHTML = "*";
                                                                } else
                                                                {
                                                                    const isValid = isValidEmail(email);
                                                                    if (isValid)
                                                                    {
                                                                        document.getElementById("em1").innerHTML = "";
                                                                        return true;
                                                                    } else
                                                                    {
                                                                        document.getElementById("em1").innerHTML = "*";
                                                                        return false;
                                                                    }
                                                                }
                                                            }
                                                            function isValidEmail(email)
                                                            {
                                                                // regular expression pattern for email validation
                                                                const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                                                                return emailPattern.test(email);
                                                            }
                                                        </script> 
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="shopemail">Shop Email</label><span id="em1" style="color:red"></span>
                                                                <input class="form-control email" type="email" id="shopemail" name="shopemail" placeholder="Enter Email" onkeyup="Emailcheck()">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="dashboard_page sidebar_location_filter">
                                                                <div class="form-group mb-3">
                                                                    <label class="form-label" for="country">Country</label>
                                                                    <div class="checkout_country_form actegory">
                                                                        <select class="selectpicker show-tick" id="Country" name="Country">
                                                                            <option value="">Select</option>
                                                                            <option value="India">India</option>
                                                                            <option value="United Kingdom">United Kingdom</option>
                                                                            <option value="United States">United States</option>
                                                                            <option value="Ukraine">Ukraine</option>
                                                                            <option value="Uruguay">Uruguay</option>
                                                                            <option value="UK">UK</option>
                                                                            <option value="Uzbekistan">Uzbekistan</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="address">Address Line</label>
                                                                <input class="form-control" type="text" id="address"  name="address" placeholder="Address Line">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="FIRSTShoppass">Set password</label><span id="psd12" style="color:green"></span>
                                                                <input class="form-control" type="text" id="FIRSTShoppass" placeholder="Your Password" onkeyup="Strengthy()">
                                                            </div>
                                                        </div>
                                                        <script>
                                                            function Strengthy()
                                                            {
                                                                const password = document.getElementById("FIRSTShoppass").value;
                                                                if (password === "")
                                                                {
                                                                    document.getElementById("psd12").innerHTML = "*";
                                                                    document.getElementById("psd12").style.display = "block";
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
                                                                        document.getElementById("psd12").style.color = "green";
                                                                        document.getElementById("psd12").innerHTML = "&nbsp;(Strong)";
                                                                    } else if (strength >= 2)
                                                                    {
                                                                        document.getElementById("psd12").style.color = "yellow";
                                                                        document.getElementById("psd12").innerHTML = "&nbsp;(Average)";
                                                                    } else
                                                                    {
                                                                        document.getElementById("psd12").style.color = "red";
                                                                        document.getElementById("psd12").innerHTML = "&nbsp;(Weak)";
                                                                    }
                                                                }
                                                            }
                                                        </script>
                                                        <div class="col-sm-12">
                                                            <div class="form-group d-grid d-sm-flex mb0">
                                                                <button type="button" class="style2 btn btn-thm me-3 mb15-520" onclick="SIGN()">Sign-Up</button>
                                                                <script>

                                                                    function SIGN()
                                                                    {
                                                                        let shopidFinal = document.getElementById("shopid").value;
                                                                        let shopnameFinal = document.getElementById("shopname").value;
                                                                        let phnnoFinal = document.getElementById("phnno").value;
                                                                        let shopownerFinal = document.getElementById("shopowner").value;
                                                                        let shopemailFinal = document.getElementById("shopemail").value;
                                                                        let CountryFinal = document.getElementById("Country").value;
                                                                        let addressFinal = document.getElementById("address").value;
                                                                        let FIRSTShoppassFinal = document.getElementById("FIRSTShoppass").value;
                                                                        if (shopidFinal === "" || shopnameFinal === "" || phnnoFinal === "" || shopownerFinal === "" || shopemailFinal === "" || CountryFinal === "" || addressFinal === "" || FIRSTShoppassFinal === "")
                                                                        {
                                                                            Swal.fire('fill properly', '', 'error');
                                                                        } else
                                                                        {
                                                                            let data = new FormData();
                                                                            data.append("idd", document.getElementById("shopid").value);
                                                                            data.append("named", document.getElementById("shopname").value);
                                                                            data.append("phnd", document.getElementById("phnno").value);
                                                                            data.append("ownerd", document.getElementById("shopowner").value);
                                                                            data.append("maild", document.getElementById("shopemail").value);
                                                                            data.append("addrd", document.getElementById("address").value);
                                                                            data.append("Countryd", document.getElementById("Country").value);
                                                                            data.append("passd", document.getElementById("FIRSTShoppass").value);
                                                                            data.append("f33", document.getElementById("fileChooser").files[0]);
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
                                                                                            title: 'Welcome to Ganges',
                                                                                            showConfirmButton: false,
                                                                                            timer: 2000
                                                                                        });
                                                                                        document.getElementById("shopid").value = "";
                                                                                        document.getElementById("shopname").value = "";
                                                                                        document.getElementById("shopowner").value = "";
                                                                                        document.getElementById("shopemail").value = "";
                                                                                        document.getElementById("Country").value = "";
                                                                                        document.getElementById("address").value = "";
                                                                                        document.getElementById("phnno").value = "";
                                                                                        document.getElementById("FIRSTShoppass").value="";
                                                                                        document.getElementById("img11").src = "images/resource/avatar.png";
                                                                                        window.location.href = "BecomeVendor.jsp#div1";

                                                                                    } else
                                                                                    {
                                                                                        Swal.fire({
                                                                                            position: 'top-end',
                                                                                            icon: 'info',
                                                                                            title: 'Some Error Occured',
                                                                                            showConfirmButton: false,
                                                                                            timer: 2000
                                                                                        });
                                                                                    }
                                                                                }
                                                                            };
                                                                            xhr.open("POST", "./DispImg", true);

                                                                            xhr.send(data);
                                                                        }
                                                                    }
                                                                </script>
                                                                <button type="button" class="style2 btn btn-white" onclick="bck()">Cancel</button>
                                                                <script>
                                                                    function bck()
                                                                    {

                                                                        document.getElementById("shopid").value = "";
                                                                        document.getElementById("shopname").value = "";
                                                                        document.getElementById("shopowner").value = "";
                                                                        document.getElementById("shopemail").value = "";
                                                                        document.getElementById("Country").value = "";
                                                                        document.getElementById("address").value = "";
                                                                        document.getElementById("phnno").value = "";
                                                                        window.location.href = "BecomeVendor.jsp#div1";

                                                                    }
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade col-xl-6" id="password" role="tabpanel" aria-labelledby="password-tab">
                                            <div class="account_details_page form_grid">
                                                <form class="contact_form" method="post" enctype="multipart/form-data">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for ="shopid">Choose Shop ID</label>
                                                                <input class="form-control" id="shopid1" name="shopid1" type="number" placeholder="Your ID">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="Shoppass">Enter password</label><span id="psd1" style="color:green; display: none">&#10004;</span><span id="psd" style="color:red; display: none">Incorrect Password</span>
                                                                <input class="form-control" type="text" id="Shoppass" placeholder="Your Password" onkeyup="PassCheck()">
                                                            </div>
                                                        </div>
                                                        <script>
                                                            function PassCheck()
                                                            {
                                                                let id = document.getElementById("shopid1").value;
                                                                let pass = document.getElementById("Shoppass").value;
                                                                let xhr = new XMLHttpRequest();
                                                                xhr.onreadystatechange = function () {
                                                                    if (this.readyState === 4 && this.status === 200)
                                                                    {
                                                                        let resp = this.responseText.trim();
                                                                        if (resp === "success")
                                                                        {
                                                                            document.getElementById("psd1").style.display = "block";
                                                                            document.getElementById("psd").style.display = "none";
                                                                        } else
                                                                        {
                                                                            document.getElementById("psd1").style.display = "none";
                                                                            document.getElementById("psd").style.display = "block";
                                                                        }
                                                                    }
                                                                };
                                                                xhr.open("GET", "./ShopPassCheck?id=" + id + "&pass=" + pass, true);
                                                                xhr.send();
                                                            }
                                                        </script>

                                                        <div class="col-md-12">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="createpass">Create password</label>
                                                                <input class="form-control" type="password" id="createpass" placeholder="Your Password">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group mb-4">
                                                                <label class="form-label" for="confirmpass">Confirm password</label></span><span id="cnfrm" style="color:red; display: none">Passwords Don't Match</span>
                                                                <input class="form-control" type="password"  id="confirmpass" placeholder="Your Password" onkeyup="confirm()">
                                                            </div>
                                                        </div>
                                                        <script>
                                                            function confirm()
                                                            {
                                                                // Get the values of the "New Password" and "Confirm Password" fields
                                                                const newPassword = document.getElementById("createpass").value;
                                                                const confirmPassword = document.getElementById("confirmpass").value;

                                                                // Check if the two passwords match
                                                                if (newPassword === confirmPassword)
                                                                {
                                                                    document.getElementById("cnfrm").style.display = "none";
                                                                    return true;
                                                                } else
                                                                {
                                                                    // Passwords do not match, show an error message
                                                                    document.getElementById("cnfrm").style.display = "block";
                                                                    return false;
                                                                }

                                                            }
                                                        </script>
                                                        <div class="col-sm-12">
                                                            <div class="form-group d-grid d-sm-flex mb0">
                                                                <button type="button" class="style2 btn btn-thm me-3 mb15-520" onclick="updt()">Update Password</button>
                                                                <script>
                                                                    function updt()
                                                                    {
                                                                        if ((confirm() === true) && (document.getElementById("Shoppass").value !== ""))
                                                                        {
                                                                            let newpasss = document.getElementById("createpass").value;
                                                                            let id1 = document.getElementById("shopid1").value;
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
                                                                                            title: 'Password changed',
                                                                                            showConfirmButton: false,
                                                                                            timer: 2000
                                                                                        });
                                                                                    } else
                                                                                    {
                                                                                        Swal.fire({
                                                                                            position: 'top-end',
                                                                                            icon: 'info',
                                                                                            title: 'failed to change',
                                                                                            showConfirmButton: false,
                                                                                            timer: 2000
                                                                                        });
                                                                                    }
                                                                                }
                                                                            };
                                                                            xhr.open("GET", "./ChangePassShop?newpasss=" + newpasss + "&shopidid=" + id1);
                                                                            xhr.send();
                                                                        }
                                                                    }
                                                                </script>
                                                                <button type="button" class="style2 btn btn-white" onclick="bck2()">Cancel</button>
                                                                <script>function bck2() {
                                                                        document.getElementById("shopid").value = "";
                                                                        document.getElementById("shopname").value = "";
                                                                        document.getElementById("shopowner").value = "";
                                                                        document.getElementById("shopemail").value = "";
                                                                        document.getElementById("Country").value = "";
                                                                        document.getElementById("address").value = "";
                                                                        document.getElementById("phnno").value = "";
                                                                        window.location.href = "BecomeVendor.jsp#div1";
                                                                    }</script>
                                                            </div>
                                                        </div>
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
                </div></div>
            <!-------------------------------------------------------------------------------------------------------------------BODY----------------------------------------------------------------------------------------------------------------------------->
        </div>       
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
        <%@include file ="footer.jsp" %>
        <!-------------------------------------------------------------------------------------------------------------------Footer----------------------------------------------------------------------------------------------------------------------------->
    </body>
</html>
