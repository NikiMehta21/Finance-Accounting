<%-- 
    Document   : A_UserRoleList
    Created on : 21 Dec, 2018, 2:05:55 AM
    Author     : ASUS
--%>
<%@page import="controller.userrole_masterController" %>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
if(request.getParameter("delete") != null)
    {
        Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/growfunds_db", "root", "");
     PreparedStatement  st= con.prepareStatement("delete from userrole_master where userrole_id=? ");
     st.setString(1, request.getParameter("delete"));
     st.executeUpdate();
      out.print("<script>alert('Successfully Updated Userrole.')</script>");
       

    }
   %>


<!DOCTYPE html>
<html>
    <head>

        <title>UserRole</title>
    </head>
    <body>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">User Role</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Dashboard</a>
                                </li>
                                <li class="breadcrumb-item active">User Role
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Admin.jsp?page=A_UserRoleForm.jsp"><i class="icon-plus"></i> Add New</a></div>
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
                            userrole_masterController userRoleController=new userrole_masterController();
                            ResultSet rs = userRoleController.userrole_masterGetData();
                            while(rs.next())
                            {

                            
                        %>
                       <section class="card pull-up">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="col-12">
                                        <div class="row">
                                           
                                            <div class="col-md-2 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Role Id : </span>  <%=rs.getString("userrole_id")%> </p>
                                            </div>
                                            <div class="col-md-4 col-12 py-1">
                                                <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Role : </span> <i class="cc ETH-alt"></i> <%=rs.getString("userrole")%> </p>
                                            </div>
                                             <div class="col-md-3 col-12 py-1">
                                                 <p class="mb-0"><span class="d-inline-block d-md-none text-bold-700">Edit : </span> <a href="Admin.jsp?page=A_UserRoleForm.jsp&edit=<%=rs.getString("userrole_id")%>" class="mb-0 btn-sm btn btn-outline-dark round"><i class="icon-pencil"></i>&nbsp;Edit</a> </p>
                                            </div>
                                            <div class="col-md-3 col-12 py-1">
                                                <span class="d-inline-block d-md-none text-bold-700">Delete : </span> <a href="Admin.jsp?page=A_UserRoleForm.jsp&edit=<%=rs.getString("userrole_id")%>" class="mb-0 btn-sm btn btn-outline-warning round"><i class="icon-trash"></i>&nbsp;Delete</a>
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
