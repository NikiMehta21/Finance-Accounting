/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import modal.loan_masterModal;
import dbconnection.databaseconn;
import java.sql.*;

/**
 *
 * @author ASUS
 */
public class loan_masterController extends databaseconn {

    public String loan_masterInsertUpdate(loan_masterModal lmModal) throws ClassNotFoundException, SQLException {
        try {
            
            CallableStatement st = mycon().prepareCall("CALL loan_masterInsertUpdate(?,?,?,?,?,?,?,?,?,?)");
            st.setInt(1, lmModal.getloan_id());
            st.setInt(2, lmModal.getfianance_id());
            st.setInt(3, lmModal.getcustomer_id());
            st.setInt(4, lmModal.getloantype_id());
            st.setString(5, lmModal.getloanlast_date());
            st.setString(6, lmModal.getstatus());
            st.setString(7, lmModal.getpaymentBy());
            st.setInt(8, lmModal.getamount());
            st.setInt(9, lmModal.getinstallamount());
            st.registerOutParameter(10, java.sql.Types.INTEGER);
            st.setInt(10, 0);
            st.executeUpdate();
            byte rVal = st.getByte(10);
            return String.valueOf(rVal);
            
        } catch (Exception ex) {
            return ex.toString();
        }
        
    }
    
    public ResultSet loan_masterGetData() throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select * from loan_master  as lm inner join customer_master as cm  on cm.finance_id= lm.finance_id ");
        return st.executeQuery();
    }

    public ResultSet loan_masterGetDataid1(loan_masterModal lmModal) throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select * from loan_master  as lm inner join customer_master as cm  on cm.finance_id= lm.finance_id where lm.finance_id=?");
        st.setInt(1, lmModal.getfianance_id());
        return st.executeQuery();
    }
    
    public ResultSet loan_masterGetamount1(loan_masterModal lmModal) throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select amount from loan_master  as lm inner join customer_master as cm  on lm.customer_id where lm.loan_id =?");
        st.setInt(1, lmModal.getloan_id());
        return st.executeQuery();
    }
    
    
    public ResultSet loan_masterGetloan(loan_masterModal lmModal) throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select * from loan_master  as lm inner join customer_master as cm  on cm.finance_id= lm.finance_id where cm.customer-name like ?");
        return st.executeQuery();
    }
    
    
     public ResultSet loan_masterGetamount() throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select amount from loan_master  as lm inner join customer_master as cm  on cm.user_id= lm.customer_id where lm.customer_id=?");
        return st.executeQuery();
    }
   
    
    public ResultSet loan_masterGetloandata1(loan_masterModal lmModal) throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select * from loan_master  as lm inner join customer_master as cm  on cm.user_id= lm.customer_id where lm.customer_id =? and cm.status=?");
        st.setInt(1, lmModal.getcustomer_id());
        st.setString(2, lmModal.getstatus());
        return st.executeQuery();
    }
    
    
    public ResultSet loan_masterGetloandata2(loan_masterModal lmModal) throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select * from loan_master  as lm inner join customer_master as cm  on cm.user_id= lm.customer_id where loan_id=?");
        st.setInt(1, lmModal.getloan_id());
        
        return st.executeQuery();
    }
     public ResultSet loan_masterGetloan1() throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select * from loan_master  as lm inner join customer_master as cm  on cm.user_id= lm.customer_id ");
        return st.executeQuery();
    }
   
}
