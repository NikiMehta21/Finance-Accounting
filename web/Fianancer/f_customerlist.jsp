<%-- 
    Document   : f_customerform
    Created on : 20 Jan, 2019, 9:40:17 PM
    Author     : ASUS
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
  String name="";
          name=  session.getAttribute("user").toString();
         
            if(request.getParameter("delete") != null)
    {
        Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/growfunds_db", "root", "");
     PreparedStatement  st= con.prepareStatement("delete from customer_master where user_id=? ");
     st.setString(1, request.getParameter("delete"));
     st.executeUpdate();
      out.print("<script>alert('Successfully Updated Userrole.')</script>");
       

    }
   %>


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.customermasterController"%>
<%@page import="modal.customermasterModal"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer list</title>
    </head>
    <body>

        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">Customer List</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Fianancer.jsp"></a>
                                </li>
                                <li class="breadcrumb-item active">Customer List
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Fianancer.jsp?page=f_customermaster.jsp"><i class="icon-plus"></i> Add New</a></div>
                </div>
            </div>
            <div class="content-body">

                <div id="transactions">
                    <div class="transactions-table-th d-none d-md-block">
                        <div class="col-12">
                            <div class="row px-1">
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Customer Id</p>
                                </div>
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Customer Name</p>
                                </div>
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Customer MobileNo</p>
                                </div>
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Customer email</p>
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
                        <%
                            customermasterController cmcontroller = new customermasterController();
                            customermasterModal cm =new customermasterModal();
                            cm.setfinance_id(Integer.parseInt(name));
                            ResultSet rs = cmcontroller.customer_masterGetData(cm);
                            while (rs.next()) {


                        %>


                        <section class="card pull-up">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="col-12">
                                        <div class="row">

                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger ID : </span>  <%= rs.getString("user_id")%> </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger Parent : </span> <%= rs.getString("customer_name")%>  </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger : </span> <i class="cc ETH-alt"></i> <%= rs.getString("customer_mobileno")%></p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger : </span> <i class="cc ETH-alt"></i> <%= rs.getString("email")%></p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Edit : </span> <a href="Fianancer.jsp?page=f_customermaster.jsp&edit=<%=rs.getString("user_id")%>" class="mb-0 btn-sm btn btn-outline-dark round"><i class="icon-pencil"></i>&nbsp;Edit</a> </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <span class="d-inline-block d-md-none text-bold-700">Delete : </span> <a href="Fianancer.jsp?page=f_customerlist.jsp&delete=<%=rs.getString("user_id")%>" class="mb-0 btn-sm btn btn-outline-warning round"><i class="icon-trash"></i>&nbsp;Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <%
                            }
                        %>
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
