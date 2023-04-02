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
            <section class="inner_page_breadcrumb">
      <div class="container">
        <div class="row">
          <div class="col-xl-6">
            
          </div>
        </div>
      </div>
    </section>
            <!-- Listing Grid View -->
    <section class="our-listing pt10">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-xl-12 pl50 pl15-md">
            <div class="row">
              <div class="col-lg-12">
                <div class="main-title bb1 pb10"><%String catnamed = request.getParameter("catname");%>
                  <h2 class="title"><%=catnamed%></h2>
                  <p></p>
                </div>
              </div>
            </div>
              <div class="row" style="box-shadow: 18px 16px 67px -9px rgba(0,0,0,0.75);">
                  <div class="row">
                <div class="col-lg-12">
                  <div class="mbp_pagination mt30 text-center">
                    
                  </div>
                </div>
              </div>
              <div class="row" id="lsting">
                  
                  
                  <script>
                     window.onload=function hello()
                      {
                          let cat = '<%=catnamed%>';
                          cat = cat.trim();
                         
                          let url = "./MainPageLoad?catname="+cat;
                           if(cat==="Clothing"){url= "MainPageLoad?catname=cloth "}
                          fetch(url).then(data=>data.json()).then(resp=>{
                              let arr= resp.ans;
                              let ans = "";
                              for(let i = 0 ; i<arr.length; i++)
                              {
                                  let obj = arr[i];
                                  let myStr = obj.pname;
                                  myStr = decodeURIComponent(myStr);
                                  let dss = obj.Description;
                                  let disc = decodeURIComponent(dss);
                                  let firstWord = myStr.split(" ")[0];
                                  ans+="<div class=\"col-md-6 col-lg-12\">";
                                  ans+="<div class=\"shop_item list_style bdr1 my--1 align-items-center row\">";
                                  ans+="<div class=\"thumb text-center text-md-start col-xl-4 col-xxl-3\">";
                                  ans+="<img src=\""+obj.photo+"\" alt=\"Shop Item1\"></div>";
                                  ans+="<div class=\"details ps-0 ps-lg-4 col-xl-8 col-xxl-6\">";
                                  ans+="<div class=\"sub_title\">"+firstWord+"</div>";
                                  ans+="<div class=\"title\"><a href=\"UserPrdGal.jsp?pid="+obj.productid+"&catn="+obj.catname+"\">" + myStr+ "</a></div>";
                                  ans+="<div class=\"review d-block d-md-flex\"><ul class=\"m-0 mb-md-3 me-2\"></ul><div class=\"review_count\"></div></div>";
                                  ans+="<div class=\"shop_item_list_features mb10-lg\">";
                                  ans+="<ul class=\"mb0 order_list list-style-type-bullet\">";
                                  ans+="<li><a href=\"#\">"+disc.substring(0, (disc.length)/5)+"</a></li>";
                                  ans+="<li><a href=\"#\">"+disc.substring((disc.length)/5, (disc.length)/3)+"</a></li>";
                                  ans+="<li><a href=\"#\">"+disc.substring((disc.length)/3, (disc.length)/2)+"</a></li>";
                                  ans+="<li><a href=\"#\">"+disc.substring((disc.length)/2, (disc.length)/1.5)+"</a></li>";
                                  ans+="</ul></div></div>";
                                  ans+="<div class=\"si_right_content text-center col-xl-4 col-xxl-3\">";
                                  ans+="<div class=\"si_footer\">";
                                  ans+="<div class=\"price\">&#8377;"+obj.offerPrice+"<small><del>&#8377;"+obj.price+"</del></small></div>";
                                  ans+=" </div>";
                                  ans+="<div class=\"sifoter_bottom\">";
                                  ans+="<div class=\"shop_item_cart_btn mb20\">";
                                  ans+="<button class=\"btn btn-thm w100\" onclick=\"checkl(" + obj.productid +","+obj.offerPrice+ ")\">Add to Cart</button>";
                                  ans+="</div>";
                                  ans+="<div class=\"product_action_info\">";
                                  ans+="<ul class=\"mb0\">";
                                  ans+="</ul>";
                                  ans+=" </div>";
                                  ans+=" </div>";
                                  ans+=" </div>";
                                  ans+=" </div>";
                                  ans+=" </div>";
                              }
                              document.getElementById("lsting").innerHTML=ans;
                          });
                          
                          
                                                        function checkl(pid, pric)
                                                        {
                                                        <%String usr2 = (String)(session.getAttribute("user"));
                                                                    
                                                                if(usr2!=null)
                                                                {
                                                        %>
                                                                let user='<%=usr2%>';
                                                                
                                                            sendesh(pid, user, pric);
                                                        <%
                                                               }
                                                                else    
                                                               {
                                                        %>
                                                                Swal.fire({
                                                                icon: 'error',
                                                                title: 'User not Logged in',
                                                                text: 'Pls Login and Try again!',
                                                                footer: '<a class="header_top_iconbox home2_style text-start signin-filter-btn" href="LoginPage.jsp"><div>Login here</div></a>'
                                                            });
                                                        <%
                                                               }
                                                        %>
                                                        }

                                                        function sendesh(pid, user, price)
                                                        {
                                                            let xhr = new XMLHttpRequest();
                                                            xhr.onreadystatechange= function()
                                                            {
                                                                if(this.readyState==4&&this.status==200)
                                                                {
                                                                    if(this.responseText.trim()=="success")
                                                                    {
                                                                        window.location.href = "Cart.jsp?user="+user;
                                                                    }
                                                                    else
                                                                    {
                                                                        alert("error occured");
                                                                    }
                                                                }
                                                            };
                                                            xhr.open("GET", "./AddtoCart?user="+user+"&pid="+pid+"&price="+price, true);
                                                            xhr.send();
                                                        }
                      };
                      </script>
                
                      
                    </div>
                    
                      
                      
                      
                      
                        
                      
                      
                    
                    
               
              <div class="row">
                <div class="col-lg-12">
                  <div class="mbp_pagination mt30 text-center">
                    
                  </div>
                </div>
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
