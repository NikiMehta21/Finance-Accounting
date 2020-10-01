<%-- 
    Document   : tabledesign
    Created on : 9 Mar, 2019, 9:31:39 AM
    Author     : ASUS
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
  String name="";
          name=  session.getAttribute("user").toString();
         
             %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.customermasterController"%>
<%@page import="modal.customermasterModal"%>

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
            <div class="knockout">Customer List</div>

		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1">
					
					
					<div class="wrap-table100-nextcols js-pscroll">
						<div class="table100-nextcols">
							<table>
								<thead>
									<tr class="row100 head">
										<th class="cell100 column2">Customer Id</th>
										<th class="cell100 column3">Customer Name</th>
										<th class="cell100 column4">Customer MobileNo</th>
										<th class="cell100 column5">Customer Email</th>
										
									</tr>
								</thead>
								<tbody>
                                                                     <%
                            customermasterController cmcontroller = new customermasterController();
                            customermasterModal cm =new customermasterModal();
                            cm.setfinance_id(Integer.parseInt(name));
                            ResultSet rs = cmcontroller.customer_masterGetData(cm);
                            while (rs.next()) {


                        %>

									<tr class="row100 body">
										<td class="cell100 column2"><%= rs.getString("user_id")%></td>
										<td class="cell100 column3"><%= rs.getString("customer_name")%></td>
										<td class="cell100 column4"><%= rs.getString("customer_mobileno")%></td>
										<td class="cell100 column5"><%= rs.getString("email")%></td>
										
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
