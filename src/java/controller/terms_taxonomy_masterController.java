/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import modal.terms_taxonomy_masterModal;
import dbconnection.databaseconn;
import java.sql.*;

/**
 *
 * @author ASUS
 */
public class terms_taxonomy_masterController extends databaseconn {

    public String term_termsTaxonomyInsertUpdate(terms_taxonomy_masterModal ttmModal) throws ClassNotFoundException, SQLException {
        try {

            CallableStatement st = mycon().prepareCall("CALL term_termsTaxonomyInsertUpdate(?,?,?,?,?,?,?,?,?,?)");
            st.setInt(1, ttmModal.getterms_id());
            st.setString(2, ttmModal.getterms());
            st.setString(3, ttmModal.gettexonomy());
            st.setInt(4, ttmModal.getparent_id());
            st.setString(5, ttmModal.getdescription());
            st.setString(6, ttmModal.getstatus());
            st.setString(7, ttmModal.getextra_1());
            st.setString(8, ttmModal.getextra_2());
            st.setString(9, ttmModal.getextra_3());
            st.registerOutParameter(10, java.sql.Types.TINYINT);
            st.setInt(10, 0);
            st.executeUpdate();
            byte rVal = st.getByte(10);
            return String.valueOf(rVal);

        } catch (Exception ex) {
            return ex.toString();
        }
    }
        public ResultSet terms_taxonomy_mastergetdata() throws Exception
        {
            PreparedStatement st=mycon().prepareStatement("Select * from termstexonomy_master");
            return st.executeQuery();
        }

    /**
     *
     */
    
}
