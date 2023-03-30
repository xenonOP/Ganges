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
              <h2 class="breadcrumb_title">Frequently Asked Questions</h2>
            </div>
          </div>
        </div>
      </div>
    </section>

  	<!-- Our FAQ -->
  	<section class="our-faq pb10">
  		<div class="container">
        <div class="row">
          <div class="col-lg-6 offset-lg-3">
            <div class="main-title text-center">
              <h2>Purchase & Payment</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-8 offset-lg-2">
            <div class="shortcode_widget_accprdons">
              <div class="faq_according text-start">
                <div class="accordion" id="accordionExample">
                  <div class="card">
                    <div class="card-header active" id="headingOne">
                      <h2 class="mb-0">
                        <button class="btn btn-link text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><span>01</span> What is the monthly cost of your app?</button>
                      </h2>
                    </div>
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
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
        <div class="row">
          <div class="col-lg-6 offset-lg-3">
            <div class="main-title text-center">
              <h2>Orders & Return</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-8 offset-lg-2">
            <div class="shortcode_widget_accprdons">
              <div class="faq_according text-start">
                <div class="accordion" id="accordionExample2">
                  <div class="card">
                    <div class="card-header" id="headingSix">
                      <h2 class="mb-0">
                        <button class="btn btn-link text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="true" aria-controls="collapseSix"><span>01</span> What is the monthly cost of your app?</button>
                      </h2>
                    </div>
                    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample2">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingSeven">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven"><span>02</span> Do you have any local branches?</button>
                      </h2>
                    </div>
                    <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample2">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingEight">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight"><span>03</span> What do I need to create an account?</button>
                      </h2>
                    </div>
                    <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordionExample2">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingNine">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine"><span>04</span> Do you have iOS and Android apps?</button>
                      </h2>
                    </div>
                    <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordionExample">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingTen">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed text-start" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen"><span>05</span> How do I create an account?</button>
                      </h2>
                    </div>
                    <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordionExample">
                      <div class="card-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit id venenatis pretium risus euismod dictum egestas orci netus feugiat ut egestas ut sagittis tincidunt phasellus elit etiam cursus orci in. Id sed montes.
                      </div>
                    </div>
                  </div>
                </div>
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
