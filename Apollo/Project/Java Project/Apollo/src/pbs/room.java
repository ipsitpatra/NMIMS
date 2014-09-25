/*
 * patient.java
 *
 * Created on April 12, 2007, 1:25 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package pbs;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ipsit
 */
public class room {

   
    
    /** Creates a new instance of patient */
    public room() {
    }
    
   
    public ResultSet selectroom(String query){
        ResultSet rs = null;
        DB2 patient = new DB2();
        
        try {
            patient.getConnection();
            Statement st = patient.getStatement();
            rs = st.executeQuery(query);
            
            return rs;
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
    }
    public boolean updateStatus(String Id)
    {
        boolean rs= false;
        char statusId='2';
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            st.executeUpdate("update IPSIT.patient set status ="+statusId+" where status!='2' AND patient_id="+Id);
            stat.closeStatement();
            stat.closeConnection();
            rs = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return rs;
    }
   
    public String getroom(String Id){
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select bed from roomdetails where bedid = "+Id);
            while(rs.next()){
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return status;
    }
    
    public String getroomcost(String Id){
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select charge from roomdetails where bedid = "+Id);
            while(rs.next()){
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return status;
    }
    
}
