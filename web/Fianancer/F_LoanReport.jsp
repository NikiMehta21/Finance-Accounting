<%-- 
    Document   : F_LoanReport
    Created on : 7 Mar, 2019, 10:31:48 PM
    Author     : ASUS
--%>


<%@page import="controller.user_mastercontroller"%>
<%@page import="modal.usermastermodal"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.loan_masterController"%>
<%@page import="modal.loan_masterModal"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../app-assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Loan List
            <button onclick="window.print();"  class="d-print-none">Print</button>
        </h1>
        <hr>
        <div id="transactions">
            <table style="width: 100%;">
                        
                            <tr class="row px-1">
                                <th class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Loan Id</p>
                                </th>
                                <th class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Customer name</p>
                                </th>
                                <th class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Loan Issue Date</p>
                                </th>
                                 <th class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Loan Type</p>
                                </th>
                              
                            </tr>
                                    <%
                            loan_masterController lmcontroller = new loan_masterController();
                            loan_masterModal lmModal= new loan_masterModal();
                            lmModal.setfianance_id(0);
                            ResultSet rs = lmcontroller.loan_masterGetData();
                            while (rs.next()) {


                        %>

                        
                      <tr >
                  
                                           
                                            <td class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Loan Id : </span> <%=rs.getString("loan_id") %>  </p>
                                            </td>
                                            <td class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700"> Customer Name : </span><%=rs.getString("customer_name") %>   </p>
                                            </td>
                                            <td class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Loan Issue Date : </span> <i class="cc ETH-alt"></i><%= rs.getString("loanissue_date")  %> </p>
                                            </td>
                                            <td class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Loan Type: </span> <i class="cc ETH-alt"></i><%= rs.getString("loanlast_date")  %> </p>
                                            </td>
                                             
                            
                        </tr>
                    <%
                    }
                    %>
                            
                     
                    </table>
                
                </div>
    </body>
</html>
