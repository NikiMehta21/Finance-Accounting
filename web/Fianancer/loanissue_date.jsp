<%-- 
    Document   : loanissue_date
    Created on : 10 Mar, 2019, 7:37:27 AM
    Author     : ASUS
--%>
<%@page import="controller.user_mastercontroller"%>
<%@page import="modal.usermastermodal"%>
<%@page import="java.sql.*"%>
<%@page import="controller.loan_masterController"%>
<%@page import="modal.loan_masterModal"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String name="";
    Integer userid=0;
    if(session.getAttribute("user")!=null)
    {
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
    
    

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        <link href="button.css" rel="stylesheet" type="text/css"/>
<!--===============================================================================================-->

        <title>JSP Page</title>
    </head>
    	<div class="limiter">
            <div class="knockout">Loan Issue List</div>

		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1">
					
					
					<div class="wrap-table100-nextcols js-pscroll">
						<div class="table100-nextcols">
							<table>
								<thead>
									<tr class="row100 head">
										<th class="cell100 column2">Loan Id</th>
										<th class="cell100 column3">Customer Name</th>
                                                                                <th class="cell100 column3">Last Date</th>
										<th class="cell100 column4">Issue date</th>
										<th class="cell100 column5">Loan Amount</th>
										
                                                                                <th class="cell100 column5">Installment Amount</th>
									</tr>
								</thead>
								<tbody>
                                                                     <%
                           String sql="";
                       Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/growfunds_db", "root", "");
                 Statement st = con.createStatement();
                   
                         sql="select * from loan_master where loanlast_date=curdate() and finance_id="+userid;
                        
                        
                
                 
                 ResultSet rs=st.executeQuery(sql);
                 while(rs.next())
                 {
                     
                        %>


									<tr class="row100 body">
										<td class="cell100 column2"><%= rs.getInt("loan_id")%></td>
										<td class="cell100 column3"><%= rs.getString("customer_name")%></td>
										<td class="cell100 column4"><%= rs.getString("loanlast_date")%></td>
                                                                                <td class="cell100 column5"><%= rs.getString("loanissue_date")%></td>
										<td class="cell100 column5"><%= rs.getString("amount")%></td>
								
										<td class="cell100 column5"><%= rs.getString("installmentamount1")%></td>
										
									</tr>
                                                            <%}%>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
                            


			</div>
                    
                                                            <button class="btn" type="button" onclick="window.print();"><span>Print</span></button>

                </div>
	</div>


<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})

			$(this).on('ps-x-reach-start', function(){
				$(this).parent().find('.table100-firstcol').removeClass('shadow-table100-firstcol');
			});

			$(this).on('ps-scroll-x', function(){
				$(this).parent().find('.table100-firstcol').addClass('shadow-table100-firstcol');
			});

		});

		
		
		
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>

    </html>
