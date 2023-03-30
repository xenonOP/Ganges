<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

    <!-----------------------------------------------------------------------------------------------HEAD---------------------------------------------------------------------------------------------------------------------------------------------->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="keywords" content="auto parts, baby store, ecommerce, electronics, fashion, food, marketplace, modern, multi vendor, multipurpose, organic, responsive, shop, shopping, store">


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
         <section class="our-invoice bgc-gmart-gray pb200">
    <div class="container">
      <div class="row mb30">
        <div class="col-lg-12">
          <div class="float-end">
            <a class="invoice_down_print btn-thm" href="#">Print</a>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="invoice_table">
            <div class="wrapper">
              <div class="row mb20">
                <div class="col-lg-7">
                  <div class="main_logo"><span class="logo_title">Ganges<span class="text-thm">.</span></span></div>
                </div>
                <div class="col-lg-5">
                  <div class="invoice_deails">
                    <h3 class="float-start">Invoice #</h3>
                    <span class="float-end">0043128641</span>
                  </div>
                </div>
              </div>
              <div class="row mt50">
                <div class="col-sm-6 col-lg-7">
                  <div class="invoice_date mb70">
                    <div class="title">Invoice date:</div>
                    <h5 class="mb0">03/10/2022</h5>
                  </div>
                  <div class="invoice_address">
                    <h3 class="mb20">Supplier</h3>
                    <h5>Jobio LLC.</h5>
                    <p>2301 Ravenswood Rd Madison, <br> WI 53711</p>
                  </div>
                </div>
                <div class="col-sm-6 col-lg-5">
                  <div class="invoice_date mb70">
                    <div class="title">Due date:</div>
                    <h5 class="mb0">In 3-4 Working Days.</h5>
                  </div>
                  <div class="invoice_address">
                    <h3 class="mb20">Customer</h3>
                    <h5>John Doe.</h5>
                    <p>329 Queensberry Street, North Melbourne VIC <br> 3051, Australia.</p>
                  </div>
                </div>
              </div>
              <div class="row mt50">
                <div class="col-lg-12">
                  <div class="table-responsive invoice_table_list">
                    <table class="table">
                      <thead class="thead-light">
                        <tr class="tblh_row">
                          <th class="tbleh_title" scope="col">Description</th>
                          <th class="tbleh_title" scope="col">Price</th>
                          <th class="tbleh_title" scope="col">VAT (20%)</th>
                          <th class="tbleh_title" scope="col">Total</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="bb1">
                          <th class="tbl_title" scope="row">Standard Plan</th>
                          <td class="tbl_title">$443.00</td>
                          <td class="tbl_title">$921.80</td>
                          <td class="tblpr_title">$9243</td>
                        </tr>
                        <tr class="bb1">
                          <th class="tbl_title" scope="row">Extra Plan</th>
                          <td class="tbl_title">$443.00</td>
                          <td class="tbl_title">$921.80</td>
                          <td class="tblpr_title">$9243</td>
                        </tr>
                        <tr>
                          <th scope="row" class="tblp_title">Total Due</th>
                          <td></td>
                          <td></td>
                          <td class="tblp_title">$9,750</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="invoice_footer">
              <div class="row justify-content-center">
                <div class="col-lg-8">
                  <div class="invoice_footer_content text-center">
                    <ul>
                      <li class="list-inline-item"><a href="#">www.ganges.com</a></li>
                      <li class="list-inline-item"><a href="#">invoice@ganges.com</a></li>
                      <li class="list-inline-item"><a href="#">+(91)-6284593018</a></li>
                    </ul>
                  </div>
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
