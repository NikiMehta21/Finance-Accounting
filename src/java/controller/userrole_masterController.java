/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.sql.*;
import dbconnection.databaseconn;
//import modal.userrole_masterModal;

/**
 *
 * @author ASUS
 */
public class userrole_masterController extends databaseconn{
 
    public ResultSet userrole_masterGetData() throws Exception{
        PreparedStatement st = mycon().prepareStatement("Select * from userrole_master");
        return st.executeQuery();
    }
    
    
}
