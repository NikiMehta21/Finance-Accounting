/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import modal.customermasterModal;
import dbconnection.databaseconn;
import java.sql.*;

/**
 *
 * @author ASUS
 */
public class customermasterController extends databaseconn {

   

    public String customermasterInsertUpdate(customermasterModal cmModal) throws ClassNotFoundException, SQLException {
        
        try {
            
            CallableStatement st = mycon().prepareCall("CALL customermasterInsertUpdate(?,?,?,?,?,?,?,?,?)");
            st.setInt(1, cmModal.getuser_id());
            st.setString(2, cmModal.getemail());
            //String a=cmModal.getemail();
            //System.out.print(a);
            st.setInt(3, cmModal.getfinance_id());
            st.setString(4, cmModal.getcustomer_name());
            String b=cmModal.getcustomer_name();
            System.out.print(b);
            st.setString(5, cmModal.getcustomer_mobileno());
           // st.setString(5, cmModal.getcustomer_lienceno());
            st.setString(6, cmModal.getcustomer_votercardno());
            //st.setString(7, cmModal.getcustomer_liencephoto());
            st.setString(7, cmModal.getcustomer_voterphoto());
            st.setString(8, cmModal.getstatus());
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
    public String customermasterUpdate(customermasterModal cmModal) throws ClassNotFoundException, SQLException {
        
        try {
            
            CallableStatement st = mycon().prepareCall("CALL CustomerMasterUpdate(0,?,?,?,?,?,?,?,?)");
            st.setString(1, cmModal.getemail());
            //String a=cmModal.getemail();
            //System.out.print(a);
            st.setInt(2, cmModal.getfinance_id());
            st.setString(3, cmModal.getcustomer_name());
            String b=cmModal.getcustomer_name();
            System.out.print(b);
            st.setString(4, cmModal.getcustomer_mobileno());
           // st.setString(5, cmModal.getcustomer_lienceno());
            st.setString(5, cmModal.getcustomer_votercardno());
            //st.setString(7, cmModal.getcustomer_liencephoto());
            st.setString(6, cmModal.getcustomer_voterphoto());
            st.setString(7, cmModal.getstatus());
            st.registerOutParameter(8, java.sql.Types.INTEGER);
            st.setInt(8, 0);
              st.executeUpdate();
             byte rVal = st.getByte(8);
            return String.valueOf(rVal);
           //return "1";
           
        } catch (Exception ex) {
            return ex.toString();
        }

    }

    public ResultSet customer_masterGetData(customermasterModal cmModal) throws Exception{
        PreparedStatement st = mycon().prepareStatement("Select * from customer_master  as cm inner join user_master as um  on cm.user_id= um.user_id where userrole_id=3 and finance_id=?");      
        st.setInt(1, cmModal.getfinance_id());
        return st.executeQuery();
    }
 
    public ResultSet customer_masterGetData1(customermasterModal cmModal) throws Exception{
        PreparedStatement st = mycon().prepareStatement("Select * from customer_master  as cm inner join user_master as um  on cm.user_id= um.user_id where cm.user_id=?");
        st.setInt(1, cmModal.getuser_id());
        return st.executeQuery();
    }
   

}
