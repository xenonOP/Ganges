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
    <!-- Inner Page Breadcrumb -->
      <section class="inner_page_breadcrumb style2">
      <div class="container">
        <div class="row">
          <div class="col-xl-6">
            <div class="breadcrumb_content">
              <h2 class="breadcrumb_title">Contact Us</h2>
              
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Our Contact -->
    <section class="our-contact p0">
      <div class="container-fluid">
        <div class="row">
          <div class="h600" id="map-canvas"></div>
        </div>
      </div>
    </section>

    <!-- Our Contact -->
    <section class="our-contact pt55 pb30">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="contact_page_content">
              <div class="main-title">
                <h2 class="mtitle">Get in touch with us <br class="d-none d-md-block"> today</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam <br class="d-none d-md-block"> purus sit amet luctus venenatis lectus.</p>
              </div>
              <div class="contact_icon_box mt30">
                <div class="contact_iconbox d-flex mb30">
                  <div class="icon"><span class="flaticon-phone-call"></span></div>
                  <div class="details ms-4">
                    <h4 class="title">Monday-Friday: 08am-9pm</h4>
                    <a href="#">+(1) 123 456 7890</a>
                  </div>
                </div>
                <div class="contact_iconbox d-flex">
                  <div class="icon"><span class="flaticon-email"></span></div>
                  <div class="details ms-4">
                    <h4 class="title">Need help with your order?</h4>
                    <a href="#">support@Hmart.com</a>
                  </div>
                </div>
              </div>
              <div class="footer_social_widget mt30 mb30-md">
                <h4 class="title mb0">Follow us</h4>
                <div class="social_icon_list mt10">
                  <ul class="mb20">
                    <li class="list-inline-item"><a href="#"><i class="fab fa-facebook"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-instagram"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="form_grid">
              <div class="wrapper">
                <form class="contact_form" name="contact_form" action="#" method="post" novalidate>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group mb-4">
                        <label class="form-label">Name</label>
                        <input class="form-control" type="text" placeholder="Ali Tufan">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group mb-4">
                        <label class="form-label">Email</label>
                        <input class="form-control email" type="email" placeholder="Your Mail">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group mb-4">
                        <label class="form-label">Subject</label>
                        <input class="form-control" type="text" placeholder="Ali Tufan">
                      </div>
                    </div>
                    <div class="col-sm-12">
                      <div class="form-group mb-4">
                        <label class="form-label">Message</label>
                        <textarea name="form_message" class="form-control" rows="8" placeholder="Write your comments here"></textarea>
                      </div>
                      <div class="form-group mb0">
                        <button type="button" class="btn btn-thm">Send Message</button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="row mt60 pt55 bdrt1">
          <div class="col-lg-6">
            <div class="main-title">
              <h2 class="mtitle">Come and visit one of our offices <br class="d-none d-md-block"> around the world</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam <br class="d-none d-md-block"> purus sit amet luctus venenatis lectus.</p>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="row">
              <div class="col-md-6">
                <div class="location_lists">
                  <div class="wrapper">
                    <h4 class="title">London Shop</h4>
                    <ul>
                      <li><a href="#">PO Box 16122 Collins Street West</a></li>
                      <li><a href="#">Victoria 8007 Australia</a></li>
                      <li><a href="#">+61 3 8376 6284</a></li>
                      <li><a href="#">london@zenmart.com</a></li>
                    </ul>
                    <a href="#" class="locate_map_btn">See Map</a>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="location_lists">
                  <div class="wrapper">
                  <h4 class="title">New York Shop</h4>
                    <ul>
                      <li><a href="#">PO Box 16122 Collins Street West</a></li>
                      <li><a href="#">Victoria 8007 Australia</a></li>
                      <li><a href="#">+61 3 8376 6284</a></li>
                      <li><a href="#">london@zenmart.com</a></li>
                    </ul>
                    <a href="#" class="locate_map_btn">See Map</a>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="location_lists">
                  <div class="wrapper">
                    <h4 class="title">Istanbul Shop</h4>
                    <ul>
                      <li><a href="#">PO Box 16122 Collins Street West</a></li>
                      <li><a href="#">Victoria 8007 Australia</a></li>
                      <li><a href="#">+61 3 8376 6284</a></li>
                      <li><a href="#">london@zenmart.com</a></li>
                    </ul>
                    <a href="#" class="locate_map_btn">See Map</a>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="location_lists">
                  <div class="wrapper">
                  <h4 class="title">Paris Shop</h4>
                    <ul>
                      <li><a href="#">PO Box 16122 Collins Street West</a></li>
                      <li><a href="#">Victoria 8007 Australia</a></li>
                      <li><a href="#">+61 3 8376 6284</a></li>
                      <li><a href="#">london@zenmart.com</a></li>
                    </ul>
                    <a href="#" class="locate_map_btn">See Map</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row mt20 pt55 bdrt1">
          <div class="col-lg-6 offset-lg-3">
            <div class="main-title text-center">
              <h2>Frequently Asked Questions</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-8 offset-lg-2">
            <div class="shortcode_widget_accprdons mb0">
              <div class="faq_according text-start">
                <div class="accordion" id="accordionExample">
                  <div class="card">
                    <div class="card-header" id="headingOne">
                      <h2 class="mb-0">
                        <button class="btn btn-link text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><span>01</span> What is the monthly cost of your app?</button>
                      </h2>
                    </div>
                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingTwo">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"><span>02</span> Do you have any local branches?</button>
                      </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingThree">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"><span>03</span> What do I need to create an account?</button>
                      </h2>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingFour">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour"><span>04</span> Do you have iOS and Android apps?</button>
                      </h2>
                    </div>
                    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingFive">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive"><span>05</span> How do I create an account?</button>
                      </h2>
                    </div>
                    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row pt55 bdrt1">
          <div class="col-sm-6 col-xl-3">
            <div class="icon_boxes">
              <div class="icon">
                <span class="flaticon-fast-delivery"></span>
              </div>
              <div class="details">
                <h5 class="title">Free Shipping</h5>
                <p class="para">Free Shipping for orders over $200</p>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-xl-3">
            <div class="icon_boxes">
              <div class="icon">
                <span class="flaticon-shield"></span>
              </div>
              <div class="details">
                <h5 class="title">Money Guarantee</h5>
                <p class="para">Within 30 days for an exchange.</p>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-xl-3">
            <div class="icon_boxes">
              <div class="icon">
                <span class="flaticon-headphones"></span>
              </div>
              <div class="details">
                <h5 class="title">Online Support</h5>
                <p class="para">24 hours a day, 7 days a week</p>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-xl-3">
            <div class="icon_boxes">
              <div class="icon">
                <span class="flaticon-credit-card"></span>
              </div>
              <div class="details">
                <h5 class="title">Flexible Payment</h5>
                <p class="para">Pay with Multiple Credit Cards</p>
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

