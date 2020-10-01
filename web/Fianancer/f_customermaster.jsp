<%-- 
    Document   : customermaster
    Created on : 19 Jan, 2019, 12:51:06 AM
    Author     : ASUS
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modal.customermasterModal" %>
<%@page import="controller.customermasterController" %>

<%
    String user = "", name = "", lienceno = "", voterid = "", mobileno = "", status = "", email = "", photo = "";
    String userid = "";
    if (request.getParameter("edit") != null) {
        user = request.getParameter("edit");
        userid = request.getParameter("edit");
        customermasterModal cmModal = new customermasterModal();
        customermasterController cmController = new customermasterController();
        cmModal.setuser_id(Integer.parseInt(user));
        ResultSet rs = cmController.customer_masterGetData1(cmModal);
        while (rs.next()) {
            name = rs.getString("customer_name");
            mobileno = rs.getString("customer_mobileno");
            // lienceno=rs.getString("customer_lienceno");
            voterid = rs.getString("customer_votercardno");
            status = rs.getString("status");
            email = rs.getString("email");
            photo = rs.getString("customer_voterphoto");

        }

    }

    if (request.getParameter("btnSave") != null) {
        out.print("hello");
        customermasterModal cmModal = new customermasterModal();
        //cmModal.setcustomer_name(request.getParameter("txtcustomername"));
        // cmModal.setemail(request.getParameter("txtemail"));
        // cmModal.setcustomer_mobileno(request.getParameter("txtmobileno"));
        //cmModal.setuser_id("user");
        // cmModal.setuser_id(Integer.parseInt(request.getParameter("hidd1")));
      //  out.print("<img src='" + request.getParameter("hid2") + "' style='width:100px; height:100px;'/>");
        if (request.getParameter("edit") != null) {
            //.print("<p>update user_master set user_name='"+request.getParameter("txtcustomername")+"',email='"+request.getParameter("txtemail")+"', mobile_no='"+request.getParameter("txtmobileno")+"'  where user_id="+Integer.parseInt(request.getParameter("hidd1"))+";</p>");
            //out.print("<p>update 	customer_master set customer_name='"+request.getParameter("txtcustomername")+"',customer_mobileno='"+request.getParameter("txtmobileno")+"',customer_votercardno='"+request.getParameter("txtvoterno")+"',customer_voterphoto='"+request.getParameter("hid2")+"',status='"+request.getParameter("dropStatus")+"' where user_id="+Integer.parseInt(request.getParameter("hidd1"))+"</p>");
            cmModal.setemail(request.getParameter("txtemail"));
            Integer userid1 = Integer.parseInt(session.getAttribute("user").toString());
            cmModal.setfinance_id(userid1);
            cmModal.setcustomer_name(request.getParameter("txtcustomername"));
            cmModal.setcustomer_mobileno(request.getParameter("txtmobileno"));
            cmModal.setcustomer_votercardno(request.getParameter("txtvoterno"));
            cmModal.setcustomer_voterphoto(request.getParameter("hid2"));
            cmModal.setstatus(request.getParameter("dropStatus"));
            cmModal.setuser_id(Integer.parseInt(request.getParameter("hidd1")));
            customermasterController cmController = new customermasterController();
            String val="";
          /* if(Integer.parseInt(request.getParameter("hidd1")) > 0)
           {
               out.print("In Update");
             val = cmController.customermasterUpdate(cmModal);   
           }
           else
           {*/
                val = cmController.customermasterInsertUpdate(cmModal);
           //}
            
            
           
            if (val.equals("2")) {
                out.print("<script>alert('Successfully .')</script>");
            } else {
                out.print("<script>alert('Something went Wrong')</script>");
            }

        } else {

            //cmModal.setuser_id("");
                    
            cmModal.setemail(request.getParameter("txtemail"));
              Integer userid1 = Integer.parseInt(session.getAttribute("user").toString());
            cmModal.setfinance_id(userid1);
            //out.print(userid1);
            cmModal.setcustomer_name(request.getParameter("txtcustomername"));
            cmModal.setcustomer_mobileno(request.getParameter("txtmobileno"));
            // cmModal.setcustomer_lienceno(request.getParameter("txtlienceno"));
            cmModal.setcustomer_votercardno(request.getParameter("txtvoterno"));
            // cmModal.setcustomer_liencephoto(request.getParameter("hid1"));
            cmModal.setcustomer_voterphoto(request.getParameter("hid2"));
            //cmModal.setcustomer_voterphoto("11");
            //String a=request.getParameter("hid2");
            //out.print(a);
            cmModal.setstatus(request.getParameter("dropstatus"));
            customermasterController cmController = new customermasterController();
            String val = cmController.customermasterInsertUpdate(cmModal);
            out.print(val);
            if (val.equals("1")) {
                out.print("<script>alert('Successfully Saved With Us.')</script>");
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
        <input type="hidden" name="hidd1" value="<%=user%>">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-8 col-12 mb-2 breadcrumb-new">
                    <h3 class="content-header-title mb-0 d-inline-block">Add New Customer</h3>
                    <div class="row breadcrumbs-top d-inline-block">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="fianancer.jsp?page=f_customerlist.jsp">Customer Data</a>
                                </li>
                                <li class="breadcrumb-item active">Add New Customer
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="content-header-right col-md-4 col-12 d-none d-md-inline-block">
                    <div class="btn-group float-md-right"><a class="btn-gradient-secondary btn-sm white" href="Fianancer.jsp?page=f_customerlist.jsp"><i class="icon-arrow-left"></i> Back</a></div>
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
                                        <input type="text" class="form-control" name="txtcustomername" placeholder="Your Customername" value="<%=name%>" required="" autofocus="" onkeypress="return onlyAlphabets(event,this);">
                                        <label for="Customer-name">Customer-name</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="number" class="form-control" name="txtmobileno" id="txtmobileno" placeholder="Enter Mobileno" value="<%=mobileno%>" required="" autofocus="" pattern="[0-9]{10hfb}" onblur="checkNumber(this)">
                                        <label for="Customer-mobileno">Customer-Mobileno</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="text" class="form-control" name="txtvoterno" placeholder="Enter lienceno" value="<%=voterid%>" required="" autofocus="" onblur="ValidatePAN(this);" >
                                        <label for="Customer-votercardno">Customer-votercardno</label>
                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="file" class="form-control" name="file2" id="file2" placeholder="Enter liencephoto"  required="" autofocus="" value="<%=photo%>">
                                        <img src="<%=photo%>" height="100" width="100" />
                                        <label for="Customer-Voterphoto">Customer-Voterphoto</label>
                                    </fieldset>
                                    <div id="Voterphoto"></div>
                                    <fieldset class="form-label-group">
                                        <input type="hidden" class="form-control" name="hid2" id="hid2" placeholder="Enter liencephoto" value="<%=photo%>" required="" autofocus="">

                                    </fieldset>
                                    <fieldset class="form-label-group">
                                        <input type="email" class="form-control" name="txtemail" placeholder="Enter Email" value="<%=email%>" required="" autofocus="">
                                        <label for="Email">Email</label>
                                    </fieldset>


                                    <fieldset class="form-group">
                                        <label for="first-name">Status</label>
                                        <select name="dropStatus" id="dropStatus" class="form-control">
                                            <option value="Active">Active</option>
                                            <option value="Deactive">Deactive</option>
                                        </select>
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




        <script type="text/javascript">

            var fuProductImgBrowse = document.getElementById("file2");

            fuProductImgBrowse.addEventListener("change", function () {
                //	function changeFile()
                //{
                // debugger;
                var elPreview = document.getElementById("Voterphoto");
                // Let's store the FileList Array into a variable:
                // https://developer.mozilla.org/en-US/docs/Web/API/FileList
                var files = this.files;
                // Let's create an empty `errors` String to collect eventual errors into:
                var errors = "";

                if (!files) {
                    errors += "File upload not supported by your browser.";
                }

                // Check for `files` (FileList) support and if contains at least one file:
                if (files && files[0]) {

                    // Iterate over every File object in the FileList array
                    for (var i = 0; i < files.length; i++) {

                        // Let's refer to the current File as a `file` variable
                        // https://developer.mozilla.org/en-US/docs/Web/API/File
                        var file = files[i];

                        // Test the `file.name` for a valid image extension:
                        // (pipe `|` delimit more image extensions)
                        // The regex can also be expressed like: /\.(png|jpe?g|gif)$/i
                        if ((/\.(png|jpeg|jpg|gif)$/i).test(file.name)) {
                            // SUCCESS! It's an image!
                            // Send our image `file` to our `readImage` function!
                            readImage(file, elPreview, 254, 254, "hid2");
                        } else {
                            errors += file.name + " Unsupported Image extension\n";
                        }
                    }
                }
                // Notify the user for any errors (i.e: try uploading a .txt file)
                if (errors) {
                    alert(errors);
                }
                //}
            });
            
            
            
            
            
            
             function checkNumber(check)
    {   
        var a = document.getElementById("txtmobileno").value;
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


      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode;
         if (charCode > 31 && (charCode < 48 || charCode > 57))
             return false;
         
         return true;
             //var phoneNo = document.getElementById('txtmobile');

            
            

         
         
                   

      }
   
   
   
   
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

    </body>
</html>
