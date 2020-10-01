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
public class financerprofileModal {
    private int user_id,finance_id;
    private String financer_name,financer_city,financer_mobileno,financer_lienceno,financer_state,financer_pincode,financer_address,financer_status;
     public int getuser_id()
    {
        System.out.println("In function");
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
     public String getfinancer_name()
    {
        return financer_name;
    }
    
    public void setfinancer_name(String financer_name)
    {
        this.financer_name = financer_name;
    }
    
   public String getfinancer_mobileno()
    {
        return financer_mobileno;
    }
    
    public void setfinancer_mobileno(String financer_mobileno)
    {
        this.financer_mobileno = financer_mobileno;
    }  
    
    public String getfinancer_lienceno()
    {
        return financer_lienceno;
    }
    
    public void setfinancer_lienceno(String financer_lienceno)
    {
        this.financer_lienceno = financer_lienceno;
    }  
   
     public String getfinancer_state()
    {
        return financer_state;
    }
    
    public void setfinancer_state(String financer_state)
    {
        this.financer_state = financer_state;
    }  
   
    
     public String getfinancer_pincode()
    {
        return financer_pincode;
    }
    
    public void setfinancer_pincode(String financer_pincode)
    {
        this.financer_pincode = financer_pincode;
    }  
     public String getfinancer_address()
    {
        return financer_address;
    }
    
    public void setfinancer_address(String financer_address)
    {
        this.financer_address = financer_address;
    }  
   
      public String getfinancer_status()
    {
        return financer_status;
    }
    
    public void setfinancer_status(String financer_status)
    {
        this.financer_status = financer_status;
    }  
   
public String getfinancer_city()
    {
        return financer_city;
    }
    
    public void setfinancer_city(String financer_city)
    {
        this.financer_city = financer_city;
    } 

}
