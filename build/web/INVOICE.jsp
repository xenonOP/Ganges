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
            <style>
                
@page {
  size: 7.5in 8.5in;
}
                .print{
    page-break-after: always;}
                @media print{
                    body * {
                        visibility: hidden;
                        html{height: 99%;}
                    }
                    .print-container, .print-container * {
                        visibility: visible;
                    }
                    .print-container{
                        position: relative; 
                        top:0px; left:0px;
                    }
                }
            </style>

            <% int orderid = Integer.parseInt(request.getParameter("orderid"));%>
            <% int totaly = Integer.parseInt(request.getParameter("total"));%>
            <script>

                window.onload = function ()
                {
                    let orderid11 = '<%=orderid%>';
                    let total11 = '<%=totaly%>';
                    

                    let xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function ()
                    {
                        if (this.readyState == 4 && this.status === 200)
                        {
                            let resp = this.responseText.trim();
                            let mainobj = JSON.parse(resp);
                            let arr1= mainobj.ans2;
                            let arr2= mainobj.ans;
                            let ans = "<div class=\"row mb20 \">";
                            ans += "<div class=\"col-lg-7\">";
                            ans += "<div class=\"main_logo\"><span class=\"logo_title\">Ganges<span class=\"text-thm\">.</span></span></div></div>";
                            ans += "<div class=\"col-lg-5\"><div class=\"invoice_deails\"><h3 class=\"float-start\">Invoice #</h3>";
                            ans += "<span class=\"float-end\">" + orderid11 + "</span>";
                            ans += "</div></div></div>";
                            ans += "<div class=\"row mt50\"><div class=\"col-sm-6 col-lg-7\"><div class=\"invoice_date mb70\">";
                            ans += "<div class=\"title\">Invoice date:</div><h5 class=\"mb0\">31/03/2023</h5></div>";
                            ans += "<div class=\"invoice_address\"><h3 class=\"mb20\">Supplier</h3><h5>Ganges.</h5><p>@vmmeducation, Queens Road, <br>Amritsar</p></div></div>";
                            for (let i = 0; i < arr1.length; i++) {
                                let obj = arr1[i];
                                ans += "<div class=\"col-sm-6 col-lg-5\">";
                                ans += "<div class=\"invoice_date mb70\"><div class=\"title\">Due date:</div><h5 class=\"mb0\">In 3-4 Working Days.</h5></div><div class=\"invoice_address\"><h3 class=\"mb20\">Customer</h3><h5>" + obj.first + "&nbsp;" + obj.last + "</h5>";
                                ans += "<p>" +obj.phn+", "+ obj.addr + "</p>";
                                ans += "</div></div></div>";
                            }
                            ans += "<div class=\"row mt50\"><div class=\"col-lg-12\"><div class=\"table-responsive invoice_table_list\"><table class=\"table\">";
                            ans += "<thead class=\"thead-light\"><tr class=\"tblh_row\"><th class=\"tbleh_title\" scope=\"col\">Description</th><th class=\"tbleh_title\" scope=\"col\">Price</th>";
                            ans += "<th class=\"tbleh_title\" scope=\"col\">Quantity</th><th class=\"tbleh_title\" scope=\"col\">Total</th></tr>";
                            ans += "</thead><tbody>";
                            for (let j = 0; j < arr2.length; j++)
                            {
                                let obj = arr2[j];
                                ans += "<tr class=\"bb1\">";
                                ans += "<th class=\"tbl_title\" scope=\"row\">" + decodeURIComponent(obj.prdname) + "</th>";
                                ans += "<td class=\"tbl_title\">&#8377;"+ (obj.offp*1).toLocaleString("en-US") + "</td>";
                                ans += "<td class=\"tbl_title\">"+ obj.quant + "</td>";
                                ans += "<td class=\"tblpr_title\">&#8377;" + (obj.offp * obj.quant).toLocaleString("en-US") + "</td>";
                                ans += "</tr>";
                            }
                            ans += "<tr><th scope=\"row\" class=\"tblp_title\">Total Due</th><td></td><td></td><td class=\"tblp_title\">&#8377;" + total11.toLocaleString("en-US") + "</td></tr>";
                            ans += "</tbody> </table></div></div></div></div>";
                            ans += "<div class=\"invoice_footer\"><div class=\"row justify-content-center\"><div class=\"col-lg-8\"><div class=\"invoice_footer_content text-center\"><ul>";
                            ans += "<li class=\"list-inline-item\"><a href=\"#\">www.ganges.com</a></li><li class=\"list-inline-item\"><a href=\"#\">invoice@ganges.com</a></li><li class=\"list-inline-item\"><a href=\"#\">+(91)-6284593018</a></li>";
                            ans += "</ul></div></div></div></div>";

                            document.getElementById("inv").innerHTML = ans;
                        }
                    };
                    xhr.open("GET", "./invoice?orderid="+orderid11+"&total="+total11, true);
                    xhr.send();
                };

            </script>
            <section class="our-invoice bgc-gmart-gray pb200">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-lg-4 m-auto">
                            <div class="main-title text-center mb50">
                                <h1 class="title">Thank you for choosing us.</h1>
                                <h4 class="sub_title">Your Order is Placed.</h4>
                            </div>
                        </div>
                    </div>
                    <div class="row mb30">
                        <div class="col-lg-12">
                            <div class="float-end">
                                <button onclick="window.print()"<a class="invoice_down_print btn-thm" href="#">Print</a></button>
                            </div>
                        </div>
                    </div>
                    <div class="row print-container">
                        <div class="col-lg-12">
                            <div class="invoice_table ">
                                <div class="wrapper" id="inv">

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
