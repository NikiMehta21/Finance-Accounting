<%-- 
    Document   : f_searchinstallment
    Created on : 6 Feb, 2019, 12:55:29 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
       <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">Search Installment</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Fianancer.jsp?page=f_loanlist.jsp">Loan List</a>
                                </li>
                                <li class="breadcrumb-item active">Search New Installment
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Fianancer.jsp?page=f_pay.jsp"><i class="icon-arrow-left"></i> Back</a></div>
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
                                        <input type="number" class="form-control" id="txtid" name="txtid"  required="" autofocus="">
                                        <label for="Loan-Id" >Loan-Id</label>
                                    </fieldset>

                                     <fieldset class="form-label-group">
                                        <input type="date" class="form-control" id="txtissuedate" name="txtissuedate"  required="" autofocus="">
                                        <label for="Date" >Date</label>
                                    </fieldset>


                                    <fieldset class="form-label-group">
                                        <input type="date" class="form-control" id="txtlastdate" name="txtlastdate"  required="" autofocus="">
                                        <label for="Date" >Date</label>
                                    </fieldset>


                                    <fieldset class="form-group">
                                        <label for="Loan Type">Loan Type</label>
                                        <select name="droploantype" id="droplaontype" class="form-control" >
                                            <option value="1">Daily Finance</option>
                                            <option value="2">Monthly Finance</option>
                                        </select>
                                    </fieldset>
                                      <fieldset class="form-label-group">
                                        <input type="number" class="form-control" id="txtamount" name="txtamount"  required="" autofocus="">
                                        <label for="Loan-Amount" >Loan-Amount</label>
                                    </fieldset>
                                   <fieldset class="form-label-group">
                                        <input type="number" class="form-control" id="txtinstallment" name="txtinstallment"  required="" autofocus="">
                                        <label for="Installment-Amount" >Installment-Amount</label>
                                    </fieldset>

                                    </div>

                                <div class="col-12 text-right">
                                    <button type="submit" class="btn-gradient-primary my-1" name="btnSave">Search</button>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </body>
</html>
