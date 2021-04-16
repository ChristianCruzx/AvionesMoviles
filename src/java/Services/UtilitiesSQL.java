/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Entities.Perfil;
import java.beans.Statement;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.stream.Collectors;



/**
 *
 * @author jose
 */
public final class UtilitiesSQL {


    /*Perfil*/
    private static final String INSERTAR_PERFIL = "{call prc_insert_Perfil(?,?,?,?,?,?)}";
//    private static final String MODIFICAR_PERFIL = "{call prc_update_Perfil(?,?,?,?,?,?)}";
//    private static final String BUSCAR_PERFIL = "{?=call prc_buscar_Perfil(?)}";
//    private static final String LISTAR_PERFIL = "{?=call listar_Perfil()}";
     private static final String ELIMINAR_PERFIL = "{call prc_delete_Perfil(?)}";

//    private static Perfil newPerfil(ResultSet rs) throws SQLException {
//        return new Perfil(rs.getString("nombre"),rs.getString("apellidos"),rs.getString("correloElectronico"),rs.getString("direccion"),rs.getString("telefono"),rs.getString("fechaNacimiento"));
//    }
//
//    private static CallabletestStatement searchPerfil(Connection connection, String id) throws SQLException {
//        CallableStatement cstmt;
//        cstmt = connection.prepareCall(BUSCAR_ALUMNO);
//        cstmt.registerOutParameter(1, OracleTypes.CURSOR);
//        cstmt.setString(2, id);
//        return cstmt;
//    }                                                                                   

//    private static CallableStatement listAlumno(Connection connection) throws SQLException {
//        CallableStatement cstmt;
//        cstmt = connection.prepareCall(LISTAR_ALUMNO);
//        cstmt.registerOutParameter(1, OracleTypes.CURSOR);
//        return cstmt;
//    }

    private static CallableStatement insertPerfil(Connection connection, Perfil perfil) throws SQLException {
        CallableStatement cstmt;
        cstmt = connection.prepareCall(INSERTAR_PERFIL);
        cstmt.setString(1, perfil.getNombre());
        cstmt.setString(2, perfil.getApellido());
        cstmt.setString(3, perfil.getCorreo());
        cstmt.setString(4, perfil.getDireccion());
        cstmt.setString(5, perfil.getTelefono());
//        cstmt.setString(6, perfil.getFechaNacimiento());
        return cstmt;
    }

//    private static PreparedStatement updateAlumno(Connection connection, Alumno alumno) throws SQLException {
//        PreparedStatement pstmt;
//        pstmt = connection.prepareStatement(MODIFICAR_ALUMNO);
//        pstmt.setString(1, alumno.getCedula_alumno());
//        pstmt.setString(2, alumno.getNombre());
//        pstmt.setString(3, alumno.getTelefono());
//        pstmt.setString(4, alumno.getEmail());
//        pstmt.setDate(5, java.sql.Date.valueOf(alumno.getFecha_nacimiento()));
//        pstmt.setString(6, alumno.getCarrera());
//        return pstmt;
//    }

    private static PreparedStatement deletePerfil(Connection connection, String id) throws SQLException {
        PreparedStatement pstmt;
        pstmt = connection.prepareStatement(ELIMINAR_PERFIL);
        pstmt.setString(1, id);
        return pstmt;
    }

 
    /*InicioSesion*/
//    public static Boolean validateCredentials(final String cedula, final String clave) {
//        ArrayList<Usuario> lista_usuarios = new ArrayList();
//        lista_usuarios.add(new Usuario("system", "root", "SYS-DBA"));
//        ArrayList<Usuario> filtrado = new ArrayList(lista_usuarios.stream().filter(user -> user.getCedula().equals(cedula) && user.getClave().equals(clave)).collect(Collectors.toList()));
//        return !filtrado.isEmpty();
//    }

//=======================

    public static Object newObject(Class<?> entityClass, ResultSet rs) throws SQLException {
        switch (entityClass.getSimpleName()) {
            case "Perfil":
//                return newPerfil(rs);
            default:
                return null;
        }
    }

    public static CallableStatement crtCallableStmnt(Connection con, String operation, Class<?> entityClass, Object obj) throws SQLException {
        switch (entityClass.getSimpleName()) {
            case "Perfil":
                return  operation.equals("INSERT") ? insertPerfil(con, (Perfil) obj)
                        //:operation.equals("SEARCH") ? searchPerfil(con, (String) obj)
                        //: operation.equals("LIST") ? listPerfil(con) 
                        : null;
            default:
                return null;
        }
    }

//    public static PreparedStatement crtPreparedStmnt(Connection con, String operation, Class<?> entityClass, Object obj) throws SQLException {
//        switch (entityClass.getSimpleName()) {
//            case "Perfil":
//                return operation.equals("UPDATE") ? updatePerfil(con, (Perfil) obj)
//                        : operation.equals("DELETE") ? deletePerfil(con, (String) obj) : null;
//            default:
//                return null;
//        }
//    }

    public static Statement createStatement(Connection con, String operation, Class<?> entityClass, Object obj) throws SQLException {
        switch (entityClass.getSimpleName()) {
            case "Perfil":
                return  operation.equals("INSERT") ? (Statement) insertPerfil(con, (Perfil) obj)
                        //:operation.equals("SEARCH") ? (Statement) searchAlumno(con, (String) obj)
                        //: operation.equals("LIST") ? (Statement) listAlumno(con)
                        //: operation.equals("UPDATE") ? (Statement) updateAlumno(con, (Alumno) obj)
                        //: operation.equals("DELETE") ? (Statement) deleteAlumno(con, (String) obj) 
                        : null;
            default:
                return null;
        }
    }

}
