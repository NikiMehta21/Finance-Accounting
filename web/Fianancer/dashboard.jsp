<%-- 
    Document   : dashboard
    Created on : 25 Feb, 2019, 3:04:38 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="dashboard.css" rel="stylesheet" type="text/css"/>
        <link href="../fontawesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
 
    </head>
    
    <body>
        <div class="main">
         <div class="header">   
             <h2>DashBoard</h2>
         </div>
           <div class="border"></div>
     </div>   
          <div class="container1">
               <div class="box1">
                   
                   <div class="icon1">
                       <i class="fa fa-money" aria-hidden="true"> </i>
                   </div>
                   <div class="content1">
                       <a href="todayincome.jsp"><h1>Today Income</h1></a>
                         
                       <label>you can see daily income</label>
                   </div>
               </div>
              
              <div class="box1">
                   
                   <div class="icon1">
                       <i class="fa fa-user" aria-hidden="true"> </i>
                   </div>
                   <div class="content1">
                       <a href="customerreport.jsp"><h1>Customer Reports</h1></a>
                       <label>Your Customer is Your Worth</label>
                   </div>
               </div>
              
              <div class="box1">
                   
                   <div class="icon1">
                       <i class="fa fa-search" aria-hidden="true"> </i>
                   </div>
                   <div class="content1">
                      <a href="loanreport.jsp"><h1>Loan Reports</h1></a>
                       <label>you can do anything with it</label>
                   </div>
               </div>
              
              <div class="box1">
                   
                   <div class="icon1">
                       <i class="fa fa-pie-chart" aria-hidden="true"> </i>
                   </div>
                   <div class="content1">
                      <a href="todayloanreport.jsp"><h1>Today Loan Reports</h1></a>
                       <label>you can see Today work</label>
                   </div>
               </div>
              
              <div class="box1">
                   
                   <div class="icon1">
                       <i class="fa fa-university" aria-hidden="true"> </i>
                   </div>
                   <div class="content1">
                       <a href="loanissue_date.jsp"><h1>Today Loan Issue</h1></a>

                       <label>you can earn it</label>
                   </div>
               </div>
              
              <div class="box1">
                   
                   <div class="icon1">
                       <i class="fa fa-search" aria-hidden="true"> </i>
                   </div>
                   <div class="content1">
                        <a href="Fianancer.jsp?page=f_loaninstallment.jsp"><h1>Search Installment</h1></a>
                       <label>you can do anything with it</label>
                   </div>
               </div>
           </div>
       
    </body>
</html>
