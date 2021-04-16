/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Exceptions.GlobalException;
import Exceptions.NoDataException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author jose
 */
public class Service {

    protected Connection connection;
    protected CallableStatement cstmt;
    protected PreparedStatement pstmt;
    protected ResultSet resultSet;

    public Service() {
        connection = null;
        cstmt = null;
        pstmt = null;
    }

    protected void Connect() throws GlobalException, NoDataException {
        try {
            //Class.forName("oracle.jdbc.driver.OracleDriver");
//            String url = "jdbc:postgresql://localhost/VuelosDB";
//            Properties props = new Properties(); 
//            props.setProperty("user","fred");
//            props.setProperty("password","secret");
//            props.setProperty("ssl","true");
//            Connection conn = DriverManager.getConnection(url, props);
            String url = "jdbc:postgresql://localhost/VuelosDB?user=postgres&password=root&ssl=true";
            connection = DriverManager.getConnection(url);
            resetStatement();
        } 
        //catch (ClassNotFoundException e) {
          //  throw new GlobalException("No se ha localizado el driver");
        //} 
        catch (SQLException e) {
            throw new NoDataException("La base de datos no se encuentra disponible");
        }
    }

    protected void Disconnect() throws SQLException {
        closeResultSet();
        closeStatement();
        if (!connection.isClosed()) {
            connection.close();
        }
    }

    private void resetStatement() {
        cstmt = null;
        pstmt = null;
    }

    private void closeStatement() throws SQLException {
        if (cstmt != null) {
            cstmt.close();
        }
        if (pstmt != null) {
            pstmt.close();
        }
    }

    private void closeResultSet() throws SQLException {
        if (resultSet != null) {
            resultSet.close();
        }
    }
}
