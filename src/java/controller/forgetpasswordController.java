/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dbconnection.databaseconn;
import java.sql.*;
import modal.forgetpassword;

/**
 *
 * @author ASUS
 */
public class forgetpasswordController extends databaseconn {
    public String forgetpassword(forgetpassword fmModal) throws ClassNotFoundException, SQLException {
        try {
            
            CallableStatement st = mycon().prepareCall("CALL forgetpassword(?,?)");
            st.setString(1, fmModal.getemail());
            st.registerOutParameter(2, java.sql.Types.INTEGER);
            st.setInt(2, 0);
            st.executeUpdate();
            byte rVal = st.getByte(2);
            return String.valueOf(rVal);
            
        } catch (Exception ex) {
            return ex.toString();
        }
        
    }
    
 
}
