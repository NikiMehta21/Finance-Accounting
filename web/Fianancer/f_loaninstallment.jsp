<%-- 
    Document   : f_loaninstallment
    Created on : 23 Jan, 2019, 9:05:32 PM
    Author     : ASUS
--%>
<%@page import="modal.loan_masterModal"%>
<%@page import="controller.loan_masterController"%>
<%@page import="controller.customermasterController"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modal.customermasterModal" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    int userid2 = 0;
    String url = "";
    String id = "";
    if (request.getParameter("btnview") != null) {
  out.print("<script>window.location.href='Fianancer.jsp?page=f_loaninstallment.jsp&searchKey="+request.getParameter("txtname1")+"&custermerId="+request.getParameter("dropCustomer")+"';</script>");
    }
    if (request.getParameter("btnsearch") != null) {
        out.print("<script>window.location.href='Fianancer.jsp?page=f_loaninstallment.jsp&searchKey="+request.getParameter("txtname1")+"';</script>");

    }

%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan Installment Master</title>
    </head>
    <body>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">Loan Installment</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="fianancer.jsp?page=f_loanlist.jsp">Loan Installment</a>
                                </li>
                                <li class="breadcrumb-item active">Search Loan
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="fianancer.jsp?page=f_loanlist.jsp"><i class="icon-arrow-left"></i> Back</a></div>
                </div>
            </div>
            <div class="content-body">
                <!-- User Profile -->
                <section class="card">
                    <div class="card-content">
                        <div class="card-body">

                            <div class="form-horizontal form-user-profile row mt-2" action="">
                                <div class="col-12">




                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtname1" value="<%if (request.getParameter("searchKey") != null) {
                                                out.print(request.getParameter("searchKey"));
                                            }%>" name="txtname1"  required="" autofocus="">
                                        <label for="Customer-Name" >Search Customer Name</label>
                                    </fieldset> 

                                    <%                                        
                                    if (request.getParameter("searchKey") != null) {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/growfunds_db", "root", "");
                                            PreparedStatement st = con.prepareStatement("select * from  customer_master where customer_name like ? ");
                                            st.setString(1, request.getParameter("searchKey") + "%");
                                            ResultSet rs = st.executeQuery();


                                    %>
                                    <fieldset class="form-group">
                                        <label for="first-name">Customer Name</label>
                                        <select name="dropCustomer" id="dropCustomer" class="form-control" >
                                            <%                                                
                                                while (rs.next()) {

                                            %>
                                            <option  <% if(request.getParameter("custermerId") != null){out.print("selected");}%>  value="<%=rs.getString("user_id")%>"><%=rs.getString("customer_name")%></option>
                                            <%
                                                 //  userid2=Integer.parseInt(rs.getString("user_id"));
                                                }
                                            %>
                                        </select>
                                    </fieldset>
                                    <div class="row">
                                        <div class="col-6 text-right">
                                            <button type="submit" class="btn-gradient-primary my-1" name="btnview">View Data</button>
                                        </div>


                                        <%
                                            }
                                        %>
                                        <div class="col-3 text-right">
                                            <button type="submit" class="btn-gradient-primary my-1" name="btnsearch">Search</button>
                                        </div>

                                    </div>


                                </div>  








                            </div>
                        </div>
                    </div>
                </section>



                <%
                    if(request.getParameter("custermerId") != null) {
                       
                           loan_masterController lmController1 = new loan_masterController();
                        loan_masterModal lmModal1 = new loan_masterModal();
                        userid2 = Integer.parseInt(request.getParameter("custermerId"));
                        lmModal1.setcustomer_id(userid2);
                        lmModal1.setstatus("Active");
                        ResultSet rs3 = lmController1.loan_masterGetloandata1(lmModal1);
                    
  while(rs3.next())
  {
      
            String a= rs3.getString("customer_name");
            out.print(a);

               %>                    





                <div id="hide" class="hide"> 
                    <section class="card">
                        <div class="card-content">
                            <div class="card-body">

                                <div class="form-horizontal form-user-profile row mt-2" action="">
                                    <div class="col-12">

                                        <div class="row">   
                                            <div class="col-md-6">
                                                <fieldset class="form-label-group">
                                                    <input type="number" class="form-control"  id="txtname" name="txtname"  required="" autofocus="" readonly="true" value="<%=rs3.getString("user_id")%>">

                                                    <label for="Customer-Id">Customer-Id</label>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-6">
                                                <fieldset class="form-label-group">
                                                    <input type="text" class="form-control"  id="txtname" name="txtname"  required="" autofocus="" readonly="true" value="<%=rs3.getString("customer_name")%>" >
                                                    <label for="Customer-Name" >Customer-Name</label>
                                                </fieldset>
                                            </div>
                                        </div>   

                                        <div class="row">   
                                            <div class="col-md-6">
                                                <fieldset class="form-label-group">
                                                    <input type="number" class="form-control" id="txtmob" name="txtmob"  required="" autofocus="" readonly="true" value="<%=rs3.getString("customer_mobileno")%>">

                                                    <label for="Mobile-No"  >Mobile-No</label>
                                                </fieldset>
                                            </div>

                                            <div class="col-md-6">
                                                <fieldset class="form-label-group">
                                                    <input type="email" class="form-control" id="txtemail" name="txtemail"  required="" autofocus="" readonly="true" >

                                                    <label for="Customer-Email" >Customer-Email</label>
                                                </fieldset>
                                            </div>
                                        </div>

                                        <div class="row">   
                                            <div class="col-md-6">
                                                <fieldset class="form-label-group">
                                                    <input type="number" class="form-control" id="txtamount" name="txtamount"  required="" autofocus="" readonly="true" value="<%=rs3.getString("customer_votercardno")%>">

                                                    <label for="Loan Amount"  >Loan-Amount</label>
                                                </fieldset>
                                            </div>

                                            
                                        </div>
                                       
                                    </div>  








                                </div>
                            </div>
                        </div>
                    </section>
                </div>


                <%  
}
}

                
                %>        

                <%

                    if (request.getParameter("custermerId") != null) {

                        customermasterController cmcontroller = new customermasterController();
                        customermasterModal cmModal = new customermasterModal();
                        userid2 = Integer.parseInt(request.getParameter("custermerId"));
                        cmModal.setuser_id(userid2);
                        ResultSet rs = cmcontroller.customer_masterGetData1(cmModal);

                        loan_masterController lmController = new loan_masterController();
                        loan_masterModal lmModal = new loan_masterModal();
                        ResultSet rs1 = lmController.loan_masterGetloan1();
                
                    //  String a= request.getParameter("");

                %>
                <div class="content-body">

                    <div id="transactions">
                        <div class="transactions-table-th d-none d-md-block">

                            <div class="col-12">
                                <div class="row px-1">
                                    <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0">Loan Id</p>
                                    </div>
                                    <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0">Loan Issue Date</p>
                                    </div>
                                    <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0">Loan Last Date</p>
                                    </div>
                                    <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0">Amount</p>
                                    </div>
                                    <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0">Pay</p>
                                    </div>
                                    <%-- <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0"></p> 
                                  </div> --%>
                                </div>
                            </div>
                        </div>
                        <div class="transactions-table-tbody">
                            <%                          while (rs.next() && rs1.next()) {

                                    // out.print(rs.getString("customer_name"));
%>                   

                            <section class="card pull-up">
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="col-12">
                                            <div class="row">

                                                <div class="col-md-2 col-12 py-1">
                                                    <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger ID : </span><%= rs1.getString("loan_id")%>  </p>
                                                </div>
                                                <div class="col-md-2 col-12 py-1">
                                                    <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger Parent : </span><%= rs1.getString("loanissue_date")%>   </p>
                                                </div>
                                                <div class="col-md-2 col-12 py-1">
                                                    <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger : </span> <i class="cc ETH-alt"></i><%= rs1.getString("loanlast_date")%> </p>
                                                </div>
                                                <div class="col-md-2 col-12 py-1">
                                                    <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger : </span> <i class="cc ETH-alt"></i><%= rs1.getString("amount")%> </p>
                                                </div>
                                                <div class="col-md-2 col-12 py-1">
                                                    <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Pay : </span> <a href="Fianancer.jsp?page=f_pay.jsp&edit=<%=rs1.getString("loan_id")%>" class="mb-0 btn-sm btn btn-outline-dark round"><i class="icon-pencil"></i>&nbsp;Pay</a> </p>
                                                </div>


                                                <%--   <div class="col-md-2 col-12 py-1">
   <span class="d-inline-block d-md-none text-bold-700">Delete : </span> <a href="#" class="mb-0 btn-sm btn btn-outline-warning round"><i class="icon-trash"></i>&nbsp;Delete</a>
   </div> --%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>

                            <%} %>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        function myFunction() {
            var x = document.getElementById("");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }

    </script>
</html>
