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
public class userrole_masterModal {
    private int userrole_id;
    private String userrole;
    private String status;
    
    //USER_ROLEID
    public int getUserrole_id()
    {
        return userrole_id;
    }
     public void setUserrole_id(int userrole_id)
    {
        this.userrole_id = userrole_id;
    }

     //USER_ROLE
    public String getUserrole()
    {
        return userrole;
    }
     public void setUserrole(String userrole)
    {
        this.userrole = userrole;
    }

       //STATUS
    public String getstatus()
    {
        return status;
    }
     public void setstatus(String status)
    {
        this.status = status;
    }
    
}
