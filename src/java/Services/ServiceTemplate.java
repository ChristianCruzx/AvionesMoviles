/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Exceptions.GlobalException;
import Exceptions.NoDataException;
import static Services.UtilitiesSQL.crtCallableStmnt;
//import static Services.UtilitiesSQL.crtPreparedStmnt;
import static Services.UtilitiesSQL.newObject;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author jose
 */
public class ServiceTemplate<T, K> extends Service {

    private final Class<T> objectType;
    private T dummy;
    private ArrayList coleccion;

    public ServiceTemplate(Class<T> objectType) {
        super();
        this.objectType = objectType;
        this.dummy = null;
        this.coleccion = null;
    }

    /*Buscar Objeto*/
    public T buscar_objeto(final K id) throws GlobalException, NoDataException {
        try {
            dummy = null;
            Connect();
            cstmt = crtCallableStmnt(connection, "SEARCH", objectType, id);
            boolean failedExecution = cstmt.execute();
            if (!failedExecution) {
                resultSet = (ResultSet) cstmt.getObject(1);
                while (resultSet.next()) {
                    dummy = (T) newObject(objectType, resultSet);
                }
            }
        } catch (SQLException e) {
            throw new GlobalException("Sentencia no valida");
        } finally {
            try {
                Disconnect();
            } catch (SQLException e) {
                throw new GlobalException("Estatutos invalidos o nulos");
            }
        }
        return dummy;
    }

    /*Listar Objetos*/
    public Collection listar_objeto() throws GlobalException, NoDataException {
        try {
            coleccion = new ArrayList();
            Connect();
            cstmt = crtCallableStmnt(connection, "LIST", objectType, null);
            boolean failedExecution = cstmt.execute();
            if (!failedExecution) {
                resultSet = (ResultSet) cstmt.getObject(1);
                while (resultSet.next()) {
                    dummy = (T) newObject(objectType, resultSet);
                    coleccion.add(dummy);
                }
            }
        } catch (SQLException e) {
            throw new GlobalException("Sentencia no valida");
        } finally {
            try {
                Disconnect();
            } catch (SQLException e) {
                throw new GlobalException("Estatutos invalidos o nulos");
            }
        }
        return coleccion;
    }

    /*Insertar Objeto*/
    public void insertar_objeto(final T objeto) throws GlobalException, NoDataException {
        try {
            Connect();
            cstmt = crtCallableStmnt(connection, "call prc_insert_Perfil('%1$s', '%2$s', '%3$s', '%4$s', '%5$s', '%6$s)", objectType, objeto);
            boolean failedExecution = cstmt.execute();
            if (failedExecution) {
                throw new NoDataException("No se realizo la Insercion");
            }
            System.out.println("\nInsercion Satisfactoria!");
        } catch (SQLException e) {
            throw new GlobalException("Primary Key duplicada");
        } finally {
            try {
                Disconnect();
            } catch (SQLException e) {
                throw new GlobalException("Estatutos invalidos o nulos");
            }
        }
    }
    

//    /*Modificar Objeto*/
//    public void modificar_objeto(final T objeto) throws GlobalException, NoDataException {
//        try {
//            Connect();
//            pstmt = crtPreparedStmnt(connection, "UPDATE", objectType, objeto);
//            int rowsUpdated = pstmt.executeUpdate();
//            if (rowsUpdated == 0) {
//                throw new NoDataException("No se realizo la actualizacion");
//            } else {
//                System.out.println("\nModificaci??n Satisfactoria!");
//            }
//        } catch (SQLException e) {
//            throw new GlobalException("Sentencia no valida");
//        } finally {
//            try {
//                Disconnect();
//            } catch (SQLException e) {
//                throw new GlobalException("Estatutos invalidos o nulos");
//            }
//        }
//    }
//
//    /*Eliminar Objeto*/
//    public void eliminar_objeto(final K id) throws GlobalException, NoDataException {
//        try {
//            Connect();
//            pstmt = crtPreparedStmnt(connection, "DELETE", objectType, id);
//            int rowsUpdated = pstmt.executeUpdate();
//            if (rowsUpdated == 0) {
//                throw new NoDataException("No se realizo el borrado");
//            } else {
//                System.out.println("\nEliminaci??n Satisfactoria!");
//            }
//        } catch (SQLException e) {
//            throw new GlobalException("Sentencia no valida");
//        } finally {
//            try {
//                Disconnect();
//            } catch (SQLException e) {
//                throw new GlobalException("Estatutos invalidos o nulos");
//            }
//        }
//    }
//
}
