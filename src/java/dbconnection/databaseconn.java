/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnection;
import  java.sql.*;

/**
 *
 * @author ASUS
 */
public class databaseconn {
    public Connection mycon() throws  ClassNotFoundException,SQLException
    {
    
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost/growfunds_db","root","");
    }
}
