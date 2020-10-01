/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;
import modal.financerprofileModal;
import dbconnection.databaseconn;
import java.sql.*;

/**
 *
 * @author ASUS
 */
public class financerProfileController extends databaseconn{
     public String financerprofileInsertUpdate(financerprofileModal fmModal) throws ClassNotFoundException, SQLException {
        
        try {
            
            CallableStatement st = mycon().prepareCall("CALL financerInsertUpdate(?,?,?,?,?,?,?,?,?)");
            st.setInt(1, fmModal.getuser_id());
          
            st.setString(2, fmModal.getfinancer_name());
            st.setString(3, fmModal.getfinancer_mobileno());
            st.setString(4, fmModal.getfinancer_city());
            st.setString(5, fmModal.getfinancer_state());
            st.setString(6, fmModal.getfinancer_pincode());
            st.setString(7, fmModal.getfinancer_address());
            st.setString(8, fmModal.getfinancer_lienceno());
          //  st.setString(9, fmModal.getfinancer_status());

            st.registerOutParameter(9, java.sql.Types.INTEGER);
            st.setInt(9, 0);
              st.executeUpdate();
             byte rVal = st.getByte(9);
            return String.valueOf(rVal);
           //return "1";
           
        } catch (Exception ex) {
            return ex.toString();
        }

    }
     public ResultSet financer_masterGetData1(financerprofileModal fmModal) throws Exception{
        PreparedStatement st = mycon().prepareStatement("Select * from financeprofile_master  as fm inner join user_master as um  on fm.user_id= um.user_id where fm.user_id=?");
        st.setInt(1, fmModal.getuser_id());
        return st.executeQuery();
    }
   
}
