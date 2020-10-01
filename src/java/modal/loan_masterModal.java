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
public class loan_masterModal {
    private int customer_id,loantype_id,amount,fianance_id,loan_id,installamount;
    private String loanlast_date,status,paymentBy;

    
    public int getcustomer_id()
    {
        return customer_id;
    }
    public void setcustomer_id(int customer_id)
    {
        this.customer_id = customer_id;
    }
    
    
     public int getinstallamount()
    {
        return installamount;
    }
    public void setinstallamount(int installamount)
    {
        this.installamount = installamount;
    }
   
    
    
    
    public int getloan_id()
    {
        return loan_id;
    }
    public void setloan_id(int loan_id)
    {
        this.loan_id = loan_id;
    }
    
    
    public int getfianance_id()
    {
        return fianance_id;
    }
    public void setfianance_id(int fianance_id)
    {
        this.fianance_id = fianance_id;
    }
    
    
    public int getloantype_id()
    {
        return loantype_id;
    }
    public void setloantype_id(int loantype_id)
    {
        this.loantype_id = loantype_id;
    }

    public int getamount()
    {
        return amount;
    }
    public void setamount(int amount)
    {
        this.amount = amount;
    }
    
    
    public String getloanlast_date()
    {
        return loanlast_date;
    }
    
    public void setloanlast_date(String loanlast_date)
    {
        this.loanlast_date = loanlast_date;
    }

    public String getstatus()
    {
        return status;
    }
    
    public void setstatus(String status)
    {
        this.status = status;
    }

    
    public String getpaymentBy()
    {
        return paymentBy;
    }
    
    public void setpaymentBy(String paymentBy)
    {
        this.paymentBy = paymentBy;
    }

}
