/*
 * patient.java
 *
 * Created on December 12, 2008, 1:25 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package pbs;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Date;
 

import java.sql.*;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ipsit
 */
public class patient {

   private String query;
   PreparedStatement psmt=null;
    
    /** Creates a new instance of patient */
    public patient() {
    }
    
   
    
    public ResultSet selectpatient(String query){
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
   
    
     public boolean deletepatient(String patient_id){
        boolean status = false;
        DB2 patient = new DB2();
        try {
            patient.getConnection();
            Statement st = patient.getStatement();
            st.executeUpdate("DELETE FROM IPSIT.PATIENT WHERE PATIENT_ID = "+patient_id);
            patient.closeStatement();
            patient.closeConnection();
            status = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return status;
    }
     
     public boolean deleteuser(String user_id){
         boolean status = false;
         DB2 patient = new DB2();
         try {
             patient.getConnection();
             Statement st = patient.getStatement();
             st.executeUpdate("DELETE FROM IPSIT.LOGIN WHERE USERID = "+user_id);
             patient.closeStatement();
             patient.closeConnection();
             status = true;
         } catch (SQLException ex) {
             ex.printStackTrace();
         } catch (ClassNotFoundException ex) {
             ex.printStackTrace();
         }
         return status;
     }
     
     public boolean update(String user, String password, String password1)
     {
      boolean status = false;
      
        DB2 con = new DB2();
        
        try {
            con.getConnection();       

       
            Statement st = con.getStatement();
            ResultSet rs = st.executeQuery("select * from IPSIT.login where username='" + user + "'");
                         
                if (rs.next()) {
                    if (rs.getString("password").equals(password))
                    {
      st.executeUpdate("update IPSIT.login set password = '"+password1+"' where username = '"+user+"'");
     status =true;
                } 
        
                }
        }catch (SQLException ex) {
            ex.printStackTrace();
        } catch 

(ClassNotFoundException ex) {
            ex.printStackTrace();
        }
      
        
        return status;
     
     }

    public boolean updatepatient(String id, String diagnose ,String balance)
    {
    	
         boolean status = false;
      
        DB2 con = new DB2();
        try {
        con.getConnection();
            Statement st = con.getStatement();
            st.executeUpdate("update IPSIT.patient set diagnose = '"+diagnose+"' ,balance ='"+balance+"' where patient_id ="+id);
            con.closeStatement();
            con.closeConnection();
            status = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
        }
       
        return status;
    }
    
    public boolean updatelogin(String date, String username )
    {
    	
         boolean status = false;
      
        DB2 con = new DB2();
        try {
        con.getConnection();
            Statement st = con.getStatement();
            st.executeUpdate("update IPSIT.login set lastlogin = '"+date+"' , where username ="+username);
            con.closeStatement();
            con.closeConnection();
            status = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
       
        return status;
    }
    
    public boolean discharge(String id, String discharge)
    {
         boolean status = false;
      double y=2;
      String x=y+"";
        DB2 con = new DB2();
        try {
        con.getConnection();
            Statement st = con.getStatement();
            st.executeUpdate("update IPSIT.patient set status = "+x+" , discharge ='"+discharge+"' where patient_id ="+id);
            con.closeStatement();
            con.closeConnection();
            status = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
       
        return status;
    }
    
    
    public boolean updateaddress(String hname, String haddress)
    {
         boolean status = false;
      
        DB2 con = new DB2();
        try {
        con.getConnection();
            Statement st = con.getStatement();
            st.executeUpdate("update IPSIT.hospital set hname = '"+hname+"',haddress='"+haddress+"' where id =1");
            con.closeStatement();
            con.closeConnection();
            status = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
       
        return status;
    }

    public boolean newpatient(String name, String age, String sex, String blood, String address, String phone, String email, String doctor, String room , String admit) {
        boolean status = false;
      
        DB2 con = new DB2();
        try {
        con.getConnection();
        
        double y=1;
        String stat = y+"";
      
	
query="insert into IPSIT.patient(pname,age,sex,blood,address,phone,email,doctor,room,admit,status) values ('"+name+"', '"+age+"','"+sex+"',"+blood+",'"+address+"','"+phone+"','"+email+"',"+doctor+","+room+",'"+admit+"',"+stat+")";
		Statement st = con.getStatement();
		st.executeUpdate(query);
        con.closeStatement();
            con.closeConnection();
                status = true;
        
    }catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
     
      return status;
    }
    
    public boolean newuser(String username, String password, String level)
    {
        boolean status = false;
      
        DB2 con = new DB2();
        try {
        con.getConnection();
       
	
query="insert into IPSIT.login(username,password,level) values ('"+username+"', '"+password+"',"+level+")";
		Statement st = con.getStatement();
		st.executeUpdate(query);
        con.closeStatement();
            con.closeConnection();
                status = true;
        
    }catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
     
      return status;
    }
    
    public String getStatus(String statusId){
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select status from IPSIT.STATUS where statid = "+statusId);
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
    
        
    public String getdoc(String Id)
    {
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select dname from IPSIT.DOCTOR where did = "+Id);
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
    
    
    public String name(String Id)
    {
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select pname from IPSIT.patient where patient_id = "+Id);
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

    public String getdocdept(String Id)
    {
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select department from IPSIT.DOCTOR where did = "+Id);
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
    
    public String getblood(String Id)
    {
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select blood from IPSIT.BLOOD where bloodid = "+Id);
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
    
    public String getbalance(String Id)
    {
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select balance from IPSIT.patient where patient_id = "+Id);
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
    
    public String getroom(String Id)
    {
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select bed from IPSIT.roomdetails where did = "+Id+"");
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
    
    public String getroomcost(String Id)
    {
        String status =null;
        DB2 stat = new DB2();
        try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select charge from IPSIT.roomdetails where did = "+Id+"");
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
    
    
   public String balance(String statusId){
     
       
	   DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
	   long diff;
	   long days=0;
	   
	   Date d = new Date();
	   Date present;
	   Date admitt;
		int y = d.getYear() + 1900;
		int m= d.getMonth() + 1;
		String today =  d.getDate()+ "/" +m+ "/" +y;
        String status =null;
       int l=1;
       int p=2;
       int n=3;
       int o=4;
       String room;
        String date;
       String a=l+"";
       String b=p+"";
       String c=n+"";
       String f=o+"";
       
        DB2 stat = new DB2();
  try {
            stat.getConnection();
            Statement st = stat.getStatement();
            ResultSet rs = st.executeQuery("select admit,room from IPSIT.patient where patient_id = "+statusId);
            while(rs.next()){
            date = rs.getString(1);
            room = rs.getString(2);
            
            	present   = df.parse(today);
                admitt = df.parse(date); 
                diff = present.getTime() - admitt.getTime();
                
                                             //System.out.println("Today = " + df.format(discharge));
             if(room.equals(a))
             {days = (long) Math.floor(4500*diff / (24 * 60 * 60 * 1000));}
             else if(room.equals(b))
             {days = (long) Math.floor(3000*diff / (24 * 60 * 60 * 1000));}
             else if(room.equals(c))
             {days = (long) Math.floor(1500*diff / (24 * 60 * 60 * 1000));}
             else if(room.equals(f))
             {days = (long) Math.floor(1300*diff / (24 * 60 * 60 * 1000));}
             else
             {days = (long) Math.floor(300*diff / (24 * 60 * 60 * 1000));}
            
           
            
            }
            
 
  
  status = "Rs."+days+"";
  
  
  
  
  }catch (ParseException e)
  {
      e.printStackTrace();
  }
        catch (SQLException ex) {
            Logger.getLogger(patient.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(patient.class.getName()).log(Level.SEVERE, null, ex);
        } 
    return status ;
   }
    
   }
    
    

    
    
    
    

 

