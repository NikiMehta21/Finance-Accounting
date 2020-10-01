<%-- 
    Document   : f_loanmaster
    Created on : 23 Jan, 2019, 2:00:39 AM
    Author     : ASUS
--%>
<%@page import="controller.loan_installmentmasterController"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modal.loan_masterModal" %>
<%@page import="modal.loan_intallmentModal" %>
<%@page import="modal.customermasterModal" %>
<%@page import="controller.loan_masterController" %>
<%@page  import="controller.customermasterController"%>
<%
    
    String name="",payment="",status="",date="";
    int amount1=0,id=0,loantype=0;
    String name1="";
          name1=  session.getAttribute("user").toString();
  
    if(request.getParameter("edit")!=null)
    {
        loan_masterModal lmModal = new loan_masterModal();
        loan_masterController lmController = new loan_masterController();
        lmModal.setloan_id(Integer.parseInt(request.getParameter("edit")));
        ResultSet rs = lmController.loan_masterGetDataid1(lmModal);
        while (rs.next()) {
           id=rs.getInt("customer_id");
           payment=rs.getString("paymentby");
           amount1=rs.getInt("amount");
           status=rs.getString("status");
           date=rs.getString("loanlast_date");
           loantype=rs.getInt("loantype_id");
        }

    }    
    
    
    
    
    if (request.getParameter("btnSave") != null) {
      //  out.print("Hello");
        loan_masterModal lmModal = new loan_masterModal();
        if(request.getParameter("edit")!=null)
        {
            lmModal.setloan_id(Integer.parseInt(request.getParameter("edit")));
            lmModal.setfianance_id(Integer.parseInt(session.getAttribute("user").toString()));
            int cid = Integer.parseInt(request.getParameter("dropname"));
            lmModal.setcustomer_id(cid);
            int loanid = Integer.parseInt(request.getParameter("droploantype"));
        lmModal.setloantype_id(loanid);
        lmModal.setloanlast_date(request.getParameter("txtlastdate"));
        lmModal.setstatus(request.getParameter("dropStatus"));
        lmModal.setpaymentBy(request.getParameter("txtpayment"));
        int amount = Integer.parseInt(request.getParameter("txtamount"));
        lmModal.setamount(amount);
         lmModal.setinstallamount(Integer.parseInt(request.getParameter("txtiamount")));
        loan_masterController lmController = new loan_masterController();
        String val = lmController.loan_masterInsertUpdate(lmModal);
        if (val.equals("2")) {
            out.print("<script>alert('Successfully Updated Loan')</script>");
        } else {
            out.print("<script>alert('Something went Wrong')</script>");
        }
     // 
      
        }
        else
        {
            try
            {
        //Integer userid = Integer.parseInt(session.getAttribute("user").toString());
          
            loan_masterController lmController = new loan_masterController();
            
            
            
            loan_installmentmasterController llm =new loan_installmentmasterController();
            loan_intallmentModal lmModal1 = new loan_intallmentModal();
             
             
        lmModal.setfianance_id(Integer.parseInt(session.getAttribute("user").toString()));
        int cid = Integer.parseInt(request.getParameter("dropname"));
        lmModal.setcustomer_id(cid);
        int loanid = Integer.parseInt(request.getParameter("droploantype"));
        out.print(loanid);
      /*  if(loanid==1)
        {
            lmModal.setinstallamount(Integer.parseInt(request.getParameter("txtiamount")));
        }
        else
        {
            lmModal.setinstallamount(0);
        }*/
        lmModal.setloantype_id(loanid);
        lmModal.setloanlast_date(request.getParameter("txtlastdate"));
        lmModal.setstatus(request.getParameter("dropStatus"));
        lmModal.setpaymentBy(request.getParameter("txtpayment"));
        int amount = Integer.parseInt(request.getParameter("txtamount"));
        lmModal.setamount(amount);
        lmModal.setinstallamount(Integer.parseInt(request.getParameter("txtiamount")));
       // lmModal.setinstallamount(0);
        String val = lmController.loan_masterInsertUpdate(lmModal);
        out.print(val);
        if (val.equals("1")) {
            out.print("<script>alert('Successfully Created Loan')</script>");
        } else {
            out.print("<script>alert('" + val + "')</script>");
        }
     //   out.print("<script>alert('In Click')</script>");
            }catch(Exception e)
            {
                out.print(e);
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
        <form method="post">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">Add Loan Role</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Fianancer.jsp?page=f_loanlist.jsp">Loan List</a>
                                </li>
                                <li class="breadcrumb-item active">Add New Loan
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Fianancer.jsp?page=f_loanlist.jsp"><i class="icon-arrow-left"></i> Back</a></div>
                </div>
            </div>
            <div class="content-body">
                <!-- User Profile -->
                <section class="card">
                    <div class="card-content">
                        <div class="card-body">

                            <div class="form-horizontal form-user-profile row mt-2">
                                                                <div class="col-12">
                                    <fieldset class="form-label-group">
                                        <input type="number" class="form-control" id="txtamount" name="txtamount"  required="" autofocus="" value="<%=amount1%>">
                                        <label for="Amount" >Amount</label>
                                    </fieldset>




                                    <fieldset class="form-label-group">
                                        <input type="date" class="form-control" id="txtlastdate" name="txtlastdate"  required="" autofocus="" value="<%=date%>">
                                        <label for="Date" >Date</label>
                                    </fieldset>


                                    <fieldset class="form-group">
                                        <label for="Loan Type">Loan Type</label>
                                        <select name="droploantype" id="droplaontype" class="form-control" value="<%=loantype%>">
                                            <option value="1">Daily Finance</option>
                                            <option value="2">Monthly Finance</option>
                                        </select>
                                    </fieldset>

                                    <fieldset class="form-group">

                                        <label for="Customer">Customer Name</label>


                                        <select name="dropname" id="dropname" class="form-control" value="<%=id%>">
                                            <%                                                customermasterController cmController = new customermasterController();
                                                        customermasterModal cmModal = new customermasterModal();
                                                        cmModal.setfinance_id(Integer.parseInt(name1));
                                                ResultSet rs = cmController.customer_masterGetData(cmModal);

                                                while (rs.next()) {


                                            %>
                                            <option value="<%=rs.getString("user_id")%>"><%=rs.getString("customer_name")%></option>
                                            <%
                                                }
                                            %>
                                        </select>

                                    </fieldset>

                                        <fieldset class="form-label-group">
                                        <input type="number" class="form-control" id="txtiamount" name="txtiamount"  required="" autofocus=""value="<%=payment%>">
                                        <label for="Installment Amount" >Installment Amount</label>
                                    </fieldset>

                                    
                                        

                                   

                                    

                                <div class="col-12 text-right">
                                    <button type="submit" class="btn-gradient-primary my-1" name="btnSave">Save</button>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
                                        </form>
    </body>
</html>
