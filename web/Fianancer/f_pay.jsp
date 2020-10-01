<%-- 
    Document   : f_pay
    Created on : 4 Feb, 2019, 2:21:33 AM
    Author     : ASUS
--%>
<%@page import="controller.loan_masterController"%>
<%@page import="controller.user_mastercontroller"%>
<%@page import="modal.usermastermodal"%>
<%@page import="modal.loan_masterModal"%>
<%@page  import="modal.loan_intallmentModal"%>
<%@page  import="controller.loan_installmentmasterController"%>
<%@page import="java.sql.ResultSet"%>

<%
    int id = 0,user=0,amount1=0,loanid=0,loins=0,id1=0,installment=0;
    String name="",ldate="",idate="",type="";
    if(request.getParameter("edit")!=null)
    {
        id= Integer.parseInt(request.getParameter("edit"));
         loan_masterController lmcontroller = new loan_masterController();
         loan_masterModal lmModal = new loan_masterModal();
         
          lmModal.setloan_id(id);
          ResultSet rs1= lmcontroller.loan_masterGetloandata2(lmModal);
          while(rs1.next())
          {
          amount1=rs1.getInt("amount");
          ldate=rs1.getString("loanissue_date");
          idate=rs1.getString("loanlast_date");
          loanid=rs1.getInt("loantype_id");
          loins=rs1.getInt("installmentamount1");
          if(loanid==1)
          {
              type="daily Finance";
          }
          else
          {
              type="Monthly finance";
          }
          }
                         
    }
    if (session.getAttribute("user") != null) {
        out.print(session.getAttribute("user"));
       usermastermodal umModal = new usermastermodal();
        umModal.setuser_id(Integer.parseInt(session.getAttribute("user").toString()));
        user_mastercontroller userccontroller = new user_mastercontroller();

        ResultSet rs = userccontroller.user_mastergetdata(umModal);
        if (rs.next()) {
            name = rs.getString("user_name");
           
        }

       

    }
    
    if(request.getParameter("btnPay")!=null)
    { 
        
        
        
        
        loan_intallmentModal lmModal=new loan_intallmentModal();
        
        lmModal.setloan_id(Integer.parseInt(request.getParameter("txtid")));
        lmModal.setreceptionistid(id);
        lmModal.setinstallmentamount(Integer.parseInt(request.getParameter("txtamount")));
        lmModal.setinstallmentdate(request.getParameter("txtdate"));
        lmModal.setpayment_by(request.getParameter("txtpayment"));
        loan_installmentmasterController lmController = new loan_installmentmasterController();
        String val=lmController.loan_installment_masterInsertUpdate(lmModal);
        if (val.equals("1")) {
            out.print("<script>alert('Successfully inserted With Us.')</script>");
        } else {
            out.print("<script>alert('" + val + "')</script>");
        }
        
    }

    loan_installmentmasterController lcon = new loan_installmentmasterController();
        loan_intallmentModal lmod = new loan_intallmentModal();
        lmod.setloan_id(Integer.parseInt(request.getParameter("edit")));
         String val1 = lcon.installmentamount(lmod);
         id1=Integer.parseInt(request.getParameter("edit"));
        installment =Integer.parseInt(val1);
        
        int days=amount1/loins;
        int remainingrs= amount1-installment;
        if(amount1==installment)
        {
            out.print("<script>alert('Successfully Completed loan')</script>");

        }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment page</title>
    </head>
    <body>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">Add Loan Payment</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Admin.jsp?page=A_UserRoleList.jsp">Loan Details</a>
                                </li>
                                <li class="breadcrumb-item active">Loan Details
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Fianancer.jsp?page=f_loaninstallment.jsp"><i class="icon-arrow-left"></i> Back</a></div>
                </div>
            </div>
            <div class="content-body">
                <!-- User Profile -->
                <section class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <%
                            
                            
                            
                            %>

                            <div class="form-horizontal form-user-profile row mt-2" action="https://pixinvent.com/demo/crypto-ico-admin/html/ltr/vertical-menu/index.html">
                                <div class="col-12">
                                    <fieldset class="form-label-group">
                                        <input type="number" class="form-control" id="txtid" name="txtid" value="<%=id%>" required="" autofocus="" readonly="true">
                                        
                                        <label for="Loan-Id" >Loan-Id</label>
                                    </fieldset>  
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtname" name="txtname" value="<%=name%>" required="" autofocus="" readonly="true">
                                        <label for="Financer-Name" >Financer-Name</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="number" class="form-control" id="txtamount" name="txtamount" value="<%=amount1%>" required="" autofocus="" readonly="true">
                                        <label for="Loan-Amount" >Loan-Amount</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="Date" class="form-control" id="txtdate" name="txtidate" value="<%=idate%>" required="" autofocus="" readonly="true" >
                                        <label for="Loan Issue Date" >Loan Issue Date</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="date" class="form-control" id="txtpayment" name="txtldate" value="<%=ldate%>" required="" autofocus="" readonly="true">
                                        <label for="Loan last Date" >Loan last Date</label>
                                    </fieldset>
                                    
                                         <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtpayment" name="txtloantype" value="<%=type%>" required="" autofocus=""readonly="true" >
                                        <label for="Loan last Date" >Loan last Date</label>
                                    </fieldset>
                                </div>
                              
                                 
                                <%--  <div class="col-md-5 col-12 py-1">
                                     
                                    </div>
                                 </div> --%>
                            
                            
                            <div class="content-header-right col-md-12 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Fianancer.jsp?page=f_payment.jsp&edit=<%=id%>"><i class="icon-arrow-left"></i>Pay Now </a></div>
                </div>
                            
                        </div>
                <%
                
                
                %>
                    </div>
                </section>
            </div>
                
                
                 <div class="content-body">

                    <div id="transactions">
                        <div class="transactions-table-th d-none d-md-block">

                            <div class="col-12">
                                <div class="row px-1">
                                    <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0">Loan Id</p>
                                    </div>
                                    <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0">Installment amount</p>
                                    </div>
                                    <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0">Installment Date</p>
                                    </div>
                                    <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0">Payment By</p>
                                    </div>
                                    
                                    <%-- <div class="col-md-2 col-12 py-1">
                                        <p class="mb-0"></p> 
                                  </div> --%>
                                </div>
                            </div>
                        </div>
                        <div class="transactions-table-tbody">
                           <%
                                if(request.getParameter("edit")!=null)
                                {
                                     loan_installmentmasterController lmController1 = new loan_installmentmasterController();
                                     loan_intallmentModal lmModal1 = new loan_intallmentModal();
                                     lmModal1.setloan_id(id);
                                    ResultSet rs1= lmController1.loan_installmentmastergetdata(lmModal1);
                                  
                                    while(rs1.next())
                                    {
          
                                
                                
                           %>

                            <section class="card pull-up">
                                <div class="card-content">
                                    <div class="card-body">
                                        <div class="col-12">
                                            <div class="row">

                                                <div class="col-md-2 col-12 py-1">
                                                    <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger ID : </span> <%=rs1.getString("loan_id")%> </p>
                                                </div>
                                                <div class="col-md-2 col-12 py-1">
                                                    <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger Parent : </span><%=rs1.getString("installmentamount")%> </p>
                                                </div>
                                                <div class="col-md-2 col-12 py-1">
                                                    <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger : </span> <i class="cc ETH-alt"></i> <%=rs1.getString("installmentdate")%></p>
                                                </div>
                                                <div class="col-md-2 col-12 py-1">
                                                    <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger : </span> <i class="cc ETH-alt"></i><%=rs1.getString("Paymentby")%> </p>
                                                </div>
                                                

                                                <%--   <div class="col-md-2 col-12 py-1">
   <span class="d-inline-block d-md-none text-bold-700">Delete : </span> <a href="#" class="mb-0 btn-sm btn btn-outline-warning round"><i class="icon-trash"></i>&nbsp;Delete</a>
   </div> --%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>

                       <%
                           }
                                }
                       
                       %>
                        </div>
                    </div>
                </div>
        
                        
                        <div class="content-body">
                <!-- User Profile -->
                <section class="card">
                    <div class="card-content">
                        <div class="card-body">
                            
                            <div class="form-horizontal form-user-profile row mt-2" action="https://pixinvent.com/demo/crypto-ico-admin/html/ltr/vertical-menu/index.html">
                                <div class="col-12">
                                    <fieldset class="form-label-group">
                                        <input type="number" class="form-control" id="txtid" name="txtid" value="<%=loins%>" required="" autofocus="" readonly="true">
                                        
                                        <label for="Daily Pay " >Daily Pay</label>
                                    </fieldset>  
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtname" name="txtname" value="<%=remainingrs%>" required="" autofocus="" readonly="true">
                                        <label for="Remaining Installments" >Remaining Installments</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtamount" name="txtamount" value="<%=installment%>" required="" autofocus="" >
                                        <label for="Daily Payable" >Daily payable</label>
                                    </fieldset>
                                     <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtamount" name="txtamount" value="<%=amount1%>" required="" autofocus="" >
                                        <label for="Total Pay" >Total pay</label>
                                    </fieldset>

                                </div>
                              
                                 
                                <%--  <div class="col-md-5 col-12 py-1">
                                     
                                    </div>
                                 </div> --%>
                            
                            
                           
                            
                        </div>
                <%
                
                
                %>
                    </div>
                </section>
            </div>
        </div>
    </body>
</html>
