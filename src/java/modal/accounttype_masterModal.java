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
public class accounttype_masterModal {
    private int account_type_id;
    private String  account_type;
    private int reference_id;
    private String status;
    private String parent_name;
    
    
    
    
    //Account_Type_id
    
    public int getaccount_type_id()
    {
        return account_type_id;
    }
    public void setaccount_type_id(int account_type_id)
    {
        this.account_type_id=account_type_id;
    }
    //account-type
    public String getaccount_type()
    {
        return account_type;
    }
    public void setaccount_type(String account_type)
    {
        this.account_type=account_type;
    }
    //reference id
    public int getreference_id()
    {
        return reference_id;
    }
    public void setaccount_type(int reference_id)
    {
        this.reference_id=reference_id;
    }
    
     //status
    public String status()
    {
        return status;
    }
    public void setstatus(String status)
    {
        this.status=status;
    }
    
    //parent_name
    public String parent_name()
    {
        return parent_name;
    }
    public void setparent_name(String parent_name)
    {
        this.parent_name=parent_name;
    }
    
}
