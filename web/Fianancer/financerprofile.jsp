<%-- 
    Document   : financerprofile
    Created on : 20 Feb, 2019, 1:53:08 AM
    Author     : ASUS
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.financerProfileController"%>
<%@page import="modal.financerprofileModal"%>
<%@page import="controller.user_mastercontroller"%>
<%@page import="modal.usermastermodal"%>
<%
    String name="",name1="";
    String fname="",mob="",lie="",city="",state="",pin="",add="";
    Integer userid=0,id1=0;
    name1= session.getAttribute("user").toString();
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
   if(request.getParameter("edit")!=null)
    {
        financerprofileModal fmModal = new financerprofileModal();
        financerProfileController fmController = new financerProfileController();
        
               fmModal.setuser_id(Integer.parseInt(request.getParameter("edit")));
       ResultSet rs = fmController.financer_masterGetData1(fmModal);

        while (rs.next()) {
            fname= rs.getString("financer_name");
            mob=rs.getString("financer_contactno");
            lie=rs.getString("financer_liecense");
            add=rs.getString("financer_address");
            city=rs.getString("financer_city");
            state=rs.getString("financer_state");
            pin=rs.getString("financer_pincode");
        }

    
    } 
    if(request.getParameter("btnSave")!=null)
    {
        financerprofileModal fmModal = new financerprofileModal();
        financerProfileController fmController = new financerProfileController();
            //.print("<p>update user_master set user_name='"+request.getParameter("txtcustomername")+"',email='"+request.getParameter("txtemail")+"', mobile_no='"+request.getParameter("txtmobileno")+"'  where user_id="+Integer.parseInt(request.getParameter("hidd1"))+";</p>");
            //out.print("<p>update 	customer_master set customer_name='"+request.getParameter("txtcustomername")+"',customer_mobileno='"+request.getParameter("txtmobileno")+"',customer_votercardno='"+request.getParameter("txtvoterno")+"',customer_voterphoto='"+request.getParameter("hid2")+"',status='"+request.getParameter("dropStatus")+"' where user_id="+Integer.parseInt(request.getParameter("hidd1"))+"</p>");
            if(request.getParameter("edit")!=null)
            {
            
            fmModal.setuser_id(userid);
            fmModal.setfinancer_name(request.getParameter("txtfname"));
            fmModal.setfinancer_mobileno(request.getParameter("txtmobile"));
            fmModal.setfinancer_city(request.getParameter("txtcity"));
            fmModal.setfinancer_state(request.getParameter("txtstate"));
            
            fmModal.setfinancer_lienceno(request.getParameter("txtlie"));
             String val="";
              val = fmController.financerprofileInsertUpdate(fmModal);
               if (val.equals("2")) {
                out.print("<script>alert('Successfully Updated')</script>");
            } else {
                out.print("<script>alert('" + val + "')</script>");
            }

  
            
            }
            else
            {
            fmModal.setuser_id(userid);
            fmModal.setfinancer_name(request.getParameter("txtfname"));
            fmModal.setfinancer_mobileno(request.getParameter("txtmobile"));
            fmModal.setfinancer_city(request.getParameter("txtcity"));
            fmModal.setfinancer_state(request.getParameter("txtstate"));
            fmModal.setfinancer_pincode(request.getParameter("txtpin"));
            fmModal.setfinancer_address(request.getParameter("txtadd"));
            fmModal.setfinancer_lienceno(request.getParameter("txtlie"));
            //fmModal.setfinancer_mobileno(request.getParameter("txtmobile"));
           // financerProfileController fmController = new financerProfileController();
        String val = fmController.financerprofileInsertUpdate(fmModal);
        if (val.equals("1")) {
           out.print("<script>alert('Successfully Created Profile')</script>");
            
            
        } else {
            out.print("<script>alert('Something went Wrong')</script>");
        
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
                    <h3 class="content-header-title mb-0 d-inline-block">Add Profile</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Fianancer.jsp?page=f_loanlist.jsp">Profile Master</a>
                                </li>
                                <li class="breadcrumb-item active">Profile Master
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
                                        <input type="text" class="form-control" id="txtname" name="txtfname"  required="" autofocus="" value="<%=fname%>" onkeypress="return onlyAlphabets(event,this);">
                                        <label for="Name" > Name</label> 
                                    </fieldset>  
                            
                                   
                                    
                            
                                
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtcity" name="txtcity"  required="" autofocus="" value="<%=city%>" onkeypress="return onlyAlphabets(event,this);">
                                        <label for="City" >City</label>
                                    </fieldset>  
                           
                                    
                                    
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" id="txtstate" name="txtstate"  required="" autofocus="" value="<%=state%>" onkeypress="return onlyAlphabets(event,this);">
                                        <label for="State" >State</label>
                                    </fieldset>  
                                
                                    
                                
                                    
                                
                                <fieldset class="form-label-group">
                                    <input type="number" class="form-control" id="txtmobile" name="txtmobile"  required="" autofocus="" pattern="[0-9]{10}" value="<%=mob%>" onblur="checkNumber(this)"  onkeypress="return isNumberKey(event)">
                                        <label for="Mobile-No" >Mobile-No</label>
                                    </fieldset>  
                               
                                
                                
                                
                                
                                <fieldset class="form-label-group">
                                    <input type="text" class="form-control" id="txtlie" name="txtlie"  required="" autofocus=""  value="<%=lie%>" onblur="ValidatePAN(this);">
                                        <label for="Liecense-No" >Liecense-No</label>
                                    </fieldset>  
                                
                            </div>
                                
                                        <div class="col-12 text-right">
                                    <button type="submit" class="btn-gradient-primary my-1" name="btnSave">Save</button>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
            
                         
    </body>
    <script type="=text/javascript">
        function onlyAlphabets(e, t) {

            try {

                if (window.event) {

                    var charCode = window.event.keyCode;

                }

                else if (e) {

                    var charCode = e.which;

                }

                else { return true; }

                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))

                    return true;

                else

                    return false;

            }

            catch (err) {

                alert(err.Description);

            }

        } 
        
        
         function checkNumber(check)
    {   
        var a = document.getElementById("txtmobile").value;
        //var x=check.which;
        //var x = a.charCode;
        var x = a.keyCode;
        if(!(a >= 48 || a <= 57))
        {
            alert("enter only numbers");
            return false;
        }       
        else if(a=="" || a==null)
        {
            alert("field is blank");
            return false;
        }
// if no is more then the value 
        else if (a.length <= 9 || a.length > 10)
        {
            alert("enter minimum 10 characters");
            return false;
        }
        alert("done");
        return true;        
    }

 function checkNumber1(check)
    {   
        var a = document.getElementById("txtpin").value;
        //var x=check.which;
        //var x = a.charCode;
        var x = a.keyCode;
        if(!(a >= 48 || a <= 57))
        {
            alert("enter only numbers");
            return false;
        }       
        else if(a=="" || a==null)
        {
            alert("field is blank");
            return false;
        }
// if no is more then the value 
        else if (a.length <= 5  || a.length > 6)
        {
            alert("enter minimum 6 characters");
            return false;
        }
        //alert("done");
        return true;        
    }




      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode;
         if (charCode > 31 && (charCode < 48 || charCode > 57))
             return false;
         
         return true;
             //var phoneNo = document.getElementById('txtmobile');

            
            

         
         
                   

      }
      
      
      

      
      function ValidatePAN() { 
  var Obj = document.getElementById("txtlie");
        if (Obj.value != "") {
            ObjVal = Obj.value;
            var panPat = /^([a-zA-Z]{5})(\d{4})([a-zA-Z]{1})$/;
            if (ObjVal.search(panPat) == -1) {
                alert("Invalid Pan No");
                Obj.focus();
                return false;
            }
          else
            {
              alert("Correct Pan No");
              }
        }
  }          

</script>
</html>
