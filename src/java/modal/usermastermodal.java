/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modal;

/**
 *
 * @author ASUS
 */
public class usermastermodal {
    private int user_id,userrole_id;
    private String contactperson_name,user_name,email,status,mobile_no,password,register_date,last_logindate;

    
    //terms_id getset
    public int getuser_id()
    {
        return user_id;
    }
    public void setuser_id(int user_id)
    {
        this.user_id = user_id;
    }
    //parent_id getset
    public int getuserrole_id()
    {
        return userrole_id;
    }
    public void setuserrole_id(int userrole_id)
    {
        this.userrole_id = userrole_id;
    }
    // getsetterms
     public String getuser_name()
    {
        return user_name;
    }
    
    public void setuser_name(String user_name)
    {
        this.user_name = user_name;
    }
    //getsettexonomy
    public String getcontactperson_name()
    {
        return contactperson_name;
    }
    
    public void setcontactperson_name(String contactperson_name)
    {
        this.contactperson_name = contactperson_name;
    }
    //getsetdescription
    public String getemail()
    {
        return email;
    }
    
    public void setemail(String email)
    {
        this.email = email;
    }
    //status
     public String getmobile_no()
    {
        return mobile_no;
    }
    
    public void setmobile_no(String mobile_no)
    {
        this.mobile_no = mobile_no;
    }
    //Extra_1
    public String getpassword()
    {
        return password;
    }
    
    public void setpassword(String password)
    {
        this.password = password;
    }
    //Extra_2
    public String getregister_date()
    {
        return register_date;
    }
    
    public void setregister_date(String register_date)
    {
        this.register_date = register_date;
    }
    
    //Extra_3
    
    public String getlast_logindate()
    {
        return last_logindate;
    }
    
    public void setlast_logindate(String last_logindate)
    {
        this.last_logindate = last_logindate;
    }
    
    public String getstatus()
    {
        return status;
    }
    
    public void setstatus(String status)
    {
        this.status = status;
    }
}
