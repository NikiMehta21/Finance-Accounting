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
public class loan_intallmentModal {
    private int loan_id,loan_receptionistid,installmentamount;
    private String installmentdate,payment_by;
    
    public int getloan_id()
    {
        return loan_id;
    }
    public void setloan_id(int loan_id)
    {
        this.loan_id=loan_id;
    }
    
    
    
    public int getloan_receptionistid()
    {
        return loan_receptionistid;
    }
    public void setreceptionistid(int loan_receptionistid)
    {
        this.loan_receptionistid = loan_receptionistid;
    }
    
    public int getinstallmentamount()
    {
        return installmentamount;
    }
    public void setinstallmentamount(int installmentamount)
    {
        this.installmentamount = installmentamount;
    }
    
    
    public String getinstallmentdate()
    {
        return installmentdate;
    }
    public void setinstallmentdate(String installmentdate)
    {
        this.installmentdate=installmentdate;
    }
    
    public String getpayment_by()
    {
        return payment_by;
    }
    public void setpayment_by(String payment_by)
    {
        this.payment_by=payment_by;
    }
}
