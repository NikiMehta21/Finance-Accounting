<%-- 
    Document   : A_LedegerAccountTypeList
    Created on : 25 Dec, 2018, 1:30:01 AM
    Author     : ASUS
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="controller.account_typemasterController"%>
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
                    <h3 class="content-header-title mb-0 d-inline-block">Ledger Account Type</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Dashboard</a>
                                </li>
                                <li class="breadcrumb-item active">Ledger Account Type
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Admin.jsp?page=A_LedgerAccountsType.jsp"><i class="icon-plus"></i> Add New</a></div>
                </div>
            </div>
            <div class="content-body">
                
                <div id="transactions">
                    <div class="transactions-table-th d-none d-md-block">
                        <div class="col-12">
                            <div class="row px-1">
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Role Id</p>
                                </div>
                                <div class="col-md-4 col-12 py-1">
                                    <p class="mb-0">Role</p>
                                </div>
                                <div class="col-md-3 col-12 py-1">
                                    <p class="mb-0">Edit</p>
                                </div>
                                <div class="col-md-3 col-12 py-1">
                                    <p class="mb-0">Delete</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="transactions-table-tbody">
                        
                        
                        <%
                            account_typemasterController ttmController = new account_typemasterController();
                            ResultSet rs = ttmController.accounttype_masterGetData();
                            while(rs.next())
                            {

                            
                        %>
                       <section class="card pull-up">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="col-12">
                                        <div class="row">
                                           
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Role Id : </span>  <%=rs.getString("account_type_id")%> </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Role : </span> <i class="cc ETH-alt"></i> <%=rs.getString("account_type")%> </p>
                                            </div>
                                             <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Status : </span>  <%=rs.getString("status")%> </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Parent name : </span>  <%=rs.getString("parent_name")%> </p>
                                            </div>
                                           <div class="col-md-2 col-12 py-1">
                                                 <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Edit : </span> <a href="#" class="mb-0 btn-sm btn btn-outline-dark round"><i class="icon-pencil"></i>&nbsp;Edit</a> </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <span class="d-inline-block d-md-none text-bold-700">Delete : </span> <a href="#" class="mb-0 btn-sm btn btn-outline-warning round"><i class="icon-trash"></i>&nbsp;Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        
                        
                        <%
                        }
                        
                        %>
<!--                        <section class="card pull-up">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="col-12">
                                        <div class="row">
                                           
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Role Id : </span>  1 </p>
                                            </div>
                                            <div class="col-md-4 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Role : </span> <i class="cc ETH-alt"></i> User</p>
                                            </div>
                                             <div class="col-md-3 col-12 py-1">
                                                 <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Edit : </span> <a href="#" class="mb-0 btn-sm btn btn-outline-dark round"><i class="icon-pencil"></i>&nbsp;Edit</a> </p>
                                            </div>
                                            <div class="col-md-3 col-12 py-1">
                                                <span class="d-inline-block d-md-none text-bold-700">Delete : </span> <a href="#" class="mb-0 btn-sm btn btn-outline-warning round"><i class="icon-trash"></i>&nbsp;Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>-->
                        
                        
                    </div>
                </div>
            </div>
        </div>




    </body>
</html>
