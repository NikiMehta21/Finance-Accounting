/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dbconnection.databaseconn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author ASUS
 */
public class account_typemasterController extends databaseconn {
  public ResultSet accounttype_masterGetData()throws Exception
  {
        PreparedStatement st = mycon().prepareStatement("Select * from accounttype_master");
        return st.executeQuery();
  }
}
