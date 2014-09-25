package pbs;

import java.sql.*;

public class DB2 {
    
    private Connection con;
    private Statement st;
    int pbs;
    
    /** Creates a new instance of DB2 */
    public void getConnection() throws SQLException, ClassNotFoundException {
    	Class.forName("com.ibm.db2.jcc.DB2Driver");
        con = DriverManager.getConnection("jdbc:db2://localhost:50000/PBS","db2admin","db2admin");

    }
    
    public Statement getStatement() throws SQLException{
        this.st = this.con.createStatement();
        return this.st;
    }
    
    public void closeStatement() throws SQLException{
        this.st.close();
    }
    public void closeConnection() throws SQLException{
        this.con.close();
    }

    PreparedStatement PreparedStatement(String query) {
        throw new UnsupportedOperationException("Not yet implemented");
    }
}
