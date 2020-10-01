<%-- 
    Document   : financermanage
    Created on : 10 Mar, 2019, 10:39:35 PM
    Author     : ASUS
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
         
            if(request.getParameter("delete") != null)
    {
        Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/growfunds_db", "root", "");
     PreparedStatement  st= con.prepareStatement("delete from user_master where user_id=? ");
     st.setString(1, request.getParameter("delete"));
     st.executeUpdate();
      out.print("<script>alert('Successfully Deleted .')</script>");
       

    }
   %>


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.user_mastercontroller"%>
<%@page import="modal.usermastermodal"%>
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
                    <h3 class="content-header-title mb-0 d-inline-block">Financer List</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="dashboard_2.jsp"></a>
                                </li>
                                <li class="breadcrumb-item active">Financer List
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                   
                </div>
            </div>
            <div class="content-body">

                <div id="transactions">
                    <div class="transactions-table-th d-none d-md-block">
                        <div class="col-12">
                            <div class="row px-1">
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Financer Id</p>
                                </div>
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Financer Name</p>
                                </div>
                                
                                <div class="col-md-2 col-12 py-1">
                                    <p class="mb-0">Delete</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="transactions-table-tbody">
                        <%
                            String sql="";
                       Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/growfunds_db", "root", "");
                 Statement st = con.createStatement();
                   
                         sql="select * from user_master where userrole_id=1";
                        
                        
                
                 
                 ResultSet rs=st.executeQuery(sql);
                 while(rs.next())
                 {

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
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger Parent : </span> <%= rs.getString("contactperson_name")%>  </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Ledger : </span> <i class="cc ETH-alt"></i> <%= rs.getString("mobile_no")%></p>
                                            </div>
                                            
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Edit : </span> <a href="Admin.jsp?page=A_UserRoleForm.jsp&edit=<%=rs.getString("user_id")%>" class="mb-0 btn-sm btn btn-outline-dark round"><i class="icon-pencil"></i>&nbsp;Edit</a> </p>
                                            </div>
                                            <div class="col-md-2 col-12 py-1">
                                                <span class="d-inline-block d-md-none text-bold-700">Delete : </span> <a href="Admin.jsp?page=financermanage.jsp&delete=<%=rs.getString("user_id")%>" class="mb-0 btn-sm btn btn-outline-warning round"><i class="icon-trash"></i>&nbsp;Delete</a>
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
