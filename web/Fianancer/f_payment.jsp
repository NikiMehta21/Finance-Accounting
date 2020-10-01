<%-- 
    Document   : f_payment
    Created on : 18 Feb, 2019, 1:04:10 AM
    Author     : ASUS
--%>
<%@page import="modal.loan_masterModal"%>
<%@page import="controller.loan_masterController"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.user_mastercontroller"%>
<%@page import="modal.usermastermodal"%>
<%@page import="modal.loan_intallmentModal"%>
<%@page import="controller.loan_installmentmasterController"%>
<%
    String name = "";
    Integer id = 0,id1=0;
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
    if (request.getParameter("edit") != null) {
        id = Integer.parseInt(request.getParameter("edit"));
    }

    if (request.getParameter("btnPay") != null) {
        
        int amount=0,installment=0;
       loan_masterController lm = new loan_masterController();
       loan_masterModal lmodal = new loan_masterModal();
       lmodal.setloan_id(Integer.parseInt(request.getParameter("edit")));
       
       ResultSet rs = lm.loan_masterGetamount1(lmodal);
       if(rs.next()){ amount=rs.getInt("amount");}
       out.print(amount);
       
       
       
       // installments
       loan_installmentmasterController lcon = new loan_installmentmasterController();
        loan_intallmentModal lmod = new loan_intallmentModal();
        lmod.setloan_id(Integer.parseInt(request.getParameter("edit")));
         String val1 = lcon.installmentamount(lmod);
         id1=Integer.parseInt(request.getParameter("edit"));
      
       if (val1.equals("1"))
       {
           out.print(val1);
       }
       else
       { 
 
           installment =Integer.parseInt(val1);
        }
        if(amount < installment)
       {
           out.print("<script>alert('Installments completely filled')</script>");
           // out.print("<script>window.location.href='Fianancer.jsp?page=f_loaninstallment.jsp</script>");


       }
       else
        {
        
        
        
        
        
        
        loan_intallmentModal lmModal = new loan_intallmentModal();

        lmModal.setloan_id(Integer.parseInt(request.getParameter("txtid")));
        lmModal.setreceptionistid(id);
        lmModal.setinstallmentamount(Integer.parseInt(request.getParameter("txtamount")));
        lmModal.setinstallmentdate(request.getParameter("txtidate"));
        lmModal.setpayment_by(request.getParameter("txtpayment"));
        loan_installmentmasterController lmController = new loan_installmentmasterController();
        String val = lmController.loan_installment_masterInsertUpdate(lmModal);
        response.sendRedirect("f_pay.jsp");
        if (val.equals("1")) {
            out.print("<script>alert('Successfully Saved')</script>");
            out.print("<script>window.location.href='Fianancer.jsp?page=f_loaninstallment.jsp'</script>");

        } else {
            out.print("<script>alert('" + val + "')</script>");
        }
        }
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">Add Installment</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Fianancer.jsp?page=f_pay.jsp">Installment List </a>
                                </li>
                                <li class="breadcrumb-item active">Add Installment
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
                                        <input type="number" class="form-control" id="txtid" name="txtid"  required="" autofocus="" readonly="true" value="<%=id%>">

                                        <label for="Loan-Id" >Loan-Id</label>
                                    </fieldset>  
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtname" name="txtname"  required="" autofocus="" readonly="true" value="<%=name%>">
                                        <label for="Financer-Name" >Financer-Name</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="number" class="form-control" id="txtamount" name="txtamount"  required="" autofocus="" >
                                        <label for="Amount" >Amount</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="Date" class="form-control" id="txtdate" name="txtidate"  required="" autofocus="" >
                                        <label for=" Date" > Date</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtpayment" name="txtpayment"  required="" autofocus="" pattern="^([a-zA-z\s]{4,32})$" >
                                        <label for="Payment by" >Payment by</label>
                                    </fieldset>

                                </div>

                                <div class="col-12 text-right">
                                    <button type="submit" class="btn-gradient-primary my-1" name="btnPay">Pay Now</button>
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
