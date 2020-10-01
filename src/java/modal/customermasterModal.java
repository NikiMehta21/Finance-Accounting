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
public class customermasterModal {
    private int user_id,finance_id;
    private String customer_name,customer_mobileno,email,customer_lienceno,customer_votercardno,customer_liencephoto,customer_voterphoto,status;


    public int getuser_id()
    {
        return user_id;
    }
    public void setuser_id(int user_id)
    {
        this.user_id = user_id;
    }

    public int getfinance_id()
    {
        return finance_id;
    }
    public void setfinance_id(int finance_id)
    {
        this.finance_id = finance_id;
    }

    public String getcustomer_name()
    {
        return customer_name;
    }
    
    public void setcustomer_name(String customer_name)
    {
        this.customer_name = customer_name;
    }
    
   public String getcustomer_mobileno()
    {
        return customer_mobileno;
    }
    
    public void setcustomer_mobileno(String customer_mobileno)
    {
        this.customer_mobileno = customer_mobileno;
    }  
    
    public String getcustomer_lienceno()
    {
        return customer_lienceno;
    }
    
    public void setcustomer_lienceno(String customer_lienceno)
    {
        this.customer_lienceno = customer_lienceno;
    }  
   
     public String getcustomer_votercardno()
    {
        return customer_votercardno;
    }
    
    public void setcustomer_votercardno(String customer_votercardno)
    {
        this.customer_votercardno = customer_votercardno;
    }
    
   public String getcustomer_liencephoto()
    {
        return customer_liencephoto;
    }
    
    public void setcustomer_liencephoto(String customer_liencephoto)
    {
        this.customer_liencephoto = customer_liencephoto;
    } 
    
    public String getcustomer_voterphoto()
    {
        return customer_voterphoto;
    }
    
    public void setcustomer_voterphoto(String customer_voterphoto)
    {
        this.customer_voterphoto = customer_voterphoto;
    } 
   
      public String getstatus()
    {
        return status;
    }
    
    public void setstatus(String status)
    {
        this.status = status;
    } 
   
    public String getemail()
    {
        return email;
    }
    
    public void setemail(String email)
    {
        this.email = email;
    }
}
