/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dbconnection.databaseconn;
import modal.loan_intallmentModal;
import java.sql.*;


/**
 *
 * @author ASUS
 */
public class loan_installmentmasterController extends databaseconn {
    
    public String loan_installment_masterInsertUpdate(loan_intallmentModal lmModal) throws ClassNotFoundException, SQLException
    {
        try
        {
          CallableStatement st = mycon().prepareCall("CALL loan_installment_masterInsertUpdate(?,?,?,?,?,?)");
          st.setInt(1, lmModal.getloan_id());
          st.setInt(2, lmModal.getloan_receptionistid());
          st.setInt(3, lmModal.getinstallmentamount());
          st.setString(4, lmModal.getinstallmentdate());
          st.setString(5,lmModal.getpayment_by());
          st.registerOutParameter(6, java.sql.Types.INTEGER);
          st.setInt(6, 0);
          st.executeUpdate();
          byte rVal = st.getByte(6);
          return String.valueOf(rVal);
        
        }catch(Exception ex)
        {
         return ex.toString();

        }
       
   
    }
    public String installmentamount(loan_intallmentModal lmModal)throws ClassNotFoundException, SQLException
    {
     try
        {
            Integer val=0;
          CallableStatement st = mycon().prepareCall("CALL installmentamount(?,?)");
          st.setInt(1, lmModal.getloan_id());
          
       st.registerOutParameter(2, java.sql.Types.INTEGER);
          st.setInt(2, 0);
          st.executeUpdate();
          Integer rVal = st.getInt(2);
         
        
         /* while(r.next())
          {
             val =  r.getInt("installmentamount");
          }*/
         return String.valueOf(rVal);
       
        }catch(Exception ex)
        {
         return ex.toString();

        }
       
    
    }
    
     public ResultSet loan_installmentmastergetdata(loan_intallmentModal lmModal1) throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select * from loan_installment_master  as lm inner join loan_master as lom  on lm.loan_id= lom.loan_id where lm.loan_id=?");
        st.setInt(1, lmModal1.getloan_id());
        
      
                                  return st.executeQuery();

               
    }
   
     
     public ResultSet loan_masterGetamount1(loan_intallmentModal lmModal1) throws Exception {
        PreparedStatement st = mycon().prepareStatement("Select SUM(lm.installmentamount) from loan_installment_master  as lm inner join loan_master as llm  on lm.loan_id=llm.loan_id where lm.loan_id =?");
        st.setInt(1, lmModal1.getloan_id());
        return st.executeQuery();
    }
    
    
}
