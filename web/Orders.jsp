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
            <%String ghrak = (String)(session.getAttribute("user"));%>
<section class="our-dashbord dashbord pb80">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-xl-12">
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="account_user_deails pl40 pl0-lg">
                                        <h2 class="title mb30">Hey <%=ghrak%>,&nbsp; Your Orders</h2>
                                        <div class="order_table table-responsive">
                                            <table class="table">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th scope="col">ID</th>
                                                        <th scope="col">Product</th>
                                                        <th scope="col">Date</th>
                                                        <th scope="col">Payment</th>
                                                        <th scope="col">Status</th>
                                                        <th scope="col">Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="odo">
                                                <script>
                                                  window.onload=  function ordr()
                                                    {
                                                        let susr = '<%=ghrak%>';
                                                        let url = "Order?user="+susr;
                                                        fetch(url).then(data=>data.json()).then(resp=>{
                                                            let ans = "";
                                                            let arr = resp.ans;
                                                            for(let i = 0; i<arr.length; i++)
                                                            {
                                                                let obj = arr[i];
                                                                let mystr = obj.prdname;
                                                                mystr= decodeURIComponent(mystr);
                                                                let tt = obj.total;
                                                                tt = tt.toLocaleString();
                                                                ans+="<tr>";
                                                                ans+="<th scope=\"row\">#"+obj.orderid+"</th>";
                                                                ans+="<td>"+mystr+"</td>";
                                                                ans+="<td>Apr 3, 2020</td>";
                                                                ans+="<td>"+obj.payment+"</td>";
                                                                ans+="<td class=\"status\"><span class=\"style1\">Delivered</span></td>";
                                                                ans+="<td>"+tt+"</td>";
                                                                ans+="</tr>";
                                                            }
                                                            document.getElementById("odo").innerHTML= ans;
                                                        });
                                                    }
                                                    </script>
                                                    <tr>
                                                        <th scope="row">#1923</th>
                                                        <td>Lenovo IdeaPad 3 15.6" Laptop - Sand</td>
                                                        <td>Aug 15, 2020</td>
                                                        <td>Paid</td>
                                                        <td class="status"><span class="style1">Delivered</span></td>
                                                        <td>$56.00</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">#1923</th>
                                                        <td>Lenovo IdeaPad 3 15.6" Laptop - Sand</td>
                                                        <td>Aug 15, 2020</td>
                                                        <td>Paid</td>
                                                        <td class="status"><span class="style2">Cancel</span></td>
                                                        <td>$56.00</td>
                                                        <td class="action"><span class="details">...</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">#1923</th>
                                                        <td>Lenovo IdeaPad 3 15.6" Laptop - Sand</td>
                                                        <td>Aug 15, 2020</td>
                                                        <td>Paid</td>
                                                        <td class="status"><span class="style3">In Progress</span></td>
                                                        <td>$56.00</td>
                                                        <td class="action"><span class="details">...</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">#1923</th>
                                                        <td>Lenovo IdeaPad 3 15.6" Laptop - Sand</td>
                                                        <td>Aug 15, 2020</td>
                                                        <td>Paid</td>
                                                        <td class="status"><span class="style1">Delivered</span></td>
                                                        <td>$56.00</td>
                                                        <td class="action"><span class="details">...</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">#1923</th>
                                                        <td>Lenovo IdeaPad 3 15.6" Laptop - Sand</td>
                                                        <td>Aug 15, 2020</td>
                                                        <td>Paid</td>
                                                        <td class="status"><span class="style2">Cancel</span></td>
                                                        <td>$56.00</td>
                                                        <td class="action"><span class="details">...</span></td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">#1923</th>
                                                        <td>Lenovo IdeaPad 3 15.6" Laptop - Sand</td>
                                                        <td>Aug 15, 2020</td>
                                                        <td>Paid</td>
                                                        <td class="status"><span class="style3">In Progress</span></td>
                                                        <td>$56.00</td>
                                                        <td class="action"><span class="details">...</span></td>
                                                    </tr>
                                                </tbody>
                                            </table>
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

