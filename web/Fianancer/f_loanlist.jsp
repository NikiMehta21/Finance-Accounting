<%-- 
    Document   : f_loanlist
    Created on : 23 Jan, 2019, 2:10:34 AM
    Author     : ASUS
--%>

<%@page import="controller.user_mastercontroller"%>
<%@page import="modal.usermastermodal"%>
<%@page import="java.sql.*"%>
<%@page import="controller.loan_masterController"%>
<%@page import="modal.loan_masterModal"%>
<%
    String name="",a="";
    Integer userid=0;
    if(session.getAttribute("user")!=null)
    {
        a = session.getAttribute("user").toString();
       // out.print("<script>window.location.href='Fianancer.jsp?page=financerprofile.jsp&edit="+name1);
        usermastermodal umModal = new usermastermodal();
        //umModal.setuser_id(Integer.parseInt(session.getAttribute("user").toString()));
        user_mastercontroller userccontroller = new user_mastercontroller();
      userid=Integer.parseInt(session.getAttribute("user").toString())  ;
        ResultSet rs = userccontroller.user_mastergetdata(umModal);
        if (rs.next()) {
            name = rs.getString("user_name");
           // id1=rs.getInt("user_id");
        }

    }
    
     if(request.getParameter("delete") != null)
    {
        Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/growfunds_db", "root", "");
     PreparedStatement  st= con.prepareStatement("delete from loan_master where loan_id=? ");
     st.setString(1, request.getParameter("delete"));
     st.executeUpdate();
      out.print("<script>alert('Successfully Updated Loan.')</script>");
       

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
                    <h3 class="content-header-title mb-0 d-inline-block">Loan Account</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Fianancer.jsp">Dashboard</a>
                                </li>
                                <li class="breadcrumb-item active">Loan List
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Fianancer.jsp?page=f_loanmaster.jsp"><i class="icon-plus"></i> Add New Loan</a></div>
                </div>
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
                                    <p class="mb-0">Customer name</p>
                                </div>
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Loan Issue Date</p>
                                </div>
                                 <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Loan Type</p>
                                </div>
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Edit</p>
                                </div>
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Delete</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="transactions-table-tbody">
                        
                         

                        
                      <section class="card pull-up">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="col-12">
                                        <div class="row">
                                           
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Loan Id : </span> <%=rs.getString("loan_id") %>  </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700"> Customer Name : </span><%=rs.getString("customer_name") %>   </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Loan Issue Date : </span> <i class="cc ETH-alt"></i><%= rs.getString("loanissue_date")  %> </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Loan Type: </span> <i class="cc ETH-alt"></i><%= rs.getString("loanlast_date")  %> </p>
                                            </div>
                                             <div class="col-md-2 col-12 py-1">
                                                 <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Edit : </span> <a href="Fianancer.jsp?page=f_loanmaster.jsp&edit=<%=rs.getString("loan_id")%>" class="mb-0 btn-sm btn btn-outline-dark round"><i class="icon-pencil"></i>&nbsp;Edit</a> </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <span class="d-inline-block d-md-none text-bold-700">Delete : </span> <a href="Fianancer.jsp?page=f_loanmaster.jsp&delete=<%=rs.getString("loan_id")%>" class="mb-0 btn-sm btn btn-outline-warning round"><i class="icon-trash"></i>&nbsp;Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    
                      <%--   <section class="card pull-up">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="col-12">
                                        <div class="row">
                                           
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger ID : </span>  1 </p>
                                            </div>
                                            <div class="col-md-3 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger Parent : </span>  Expense </p>
                                            </div>
                                            <div class="col-md-3 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger : </span> <i class="cc ETH-alt"></i> Loan</p>
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
                    --%>
                      
                        
                    </div>
                </div>
            </div>
        </div>
    
    </body>
</html>
