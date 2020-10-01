/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import modal.usermastermodal;
import dbconnection.databaseconn;
import java.sql.*;

/**
 *
 * @author ASUS
 */

public class user_mastercontroller extends databaseconn {

    public String user_masterInsertUpdate(usermastermodal umModal) throws ClassNotFoundException, SQLException {
        try {

            CallableStatement st = mycon().prepareCall("CALL user_masterInsertUpdate(?,?,?,?,?,?,?,?,?)");
            st.setInt(1, umModal.getuser_id());
            st.setInt(2, umModal.getuserrole_id());
            st.setString(3, umModal.getcontactperson_name());
            st.setString(4, umModal.getuser_name());
            st.setString(5, umModal.getemail());
            st.setString(6, umModal.getmobile_no());
            st.setString(7, umModal.getpassword());
            st.setString(8, umModal.getstatus());
            st.registerOutParameter(9, java.sql.Types.TINYINT);
            st.setInt(9, 0);
            st.executeUpdate();
            byte rVal = st.getByte(9);
            return String.valueOf(rVal);

        } catch (ClassNotFoundException | SQLException ex) {
            return ex.toString();
        }
    }

    public ResultSet user_mastergetdata(usermastermodal umModal) throws Exception {
        if(umModal.getuser_id() > 0)
        {
            PreparedStatement st = mycon().prepareStatement("Select * from user_master Where user_id=?");
            st.setInt(1, umModal.getuser_id());
            return st.executeQuery();
        }
        else
        {
            PreparedStatement st = mycon().prepareStatement("Select * from user_master");
            return st.executeQuery();
        }
    }
    public String user_masterLoginController  (usermastermodal umModal) throws ClassNotFoundException, SQLException
    {
         CallableStatement cs = mycon().prepareCall("CALL user_masterLogin(?,?,?,?,?)"); 
         cs.setString(1, umModal.getuser_name());
         cs.setString(2, umModal.getpassword());
         cs.registerOutParameter(3,java.sql.Types.TINYINT);
         cs.setInt(3, 0);
         cs.registerOutParameter(4, java.sql.Types.INTEGER);
         cs.setInt(4, 0);
         cs.registerOutParameter(5, java.sql.Types.INTEGER);
         cs.setInt(5, 0);
        cs.executeUpdate();
      System.out.print(umModal.getuser_name());
      System.out.print("hello");
         byte rVal = cs.getByte(3);
         String userid = cs.getString(4);
         String userroleid = cs.getString(5);
        return String.valueOf(rVal)+"|"+userid+"|"+userroleid;
    }
}
