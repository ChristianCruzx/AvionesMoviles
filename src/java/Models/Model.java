/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entities.Perfil;
import Exceptions.GlobalException;
import Exceptions.NoDataException;
//import static Services.UtilitiesSQL.validateCredentials;
import Exceptions.*;
import Services.*;
import java.util.Collection;

/**
 *
 * @author jose
 */
public class Model {

    private static Model uniqueInstance;
    private final ServiceTemplate<Perfil, String> daoPerfil;
 //   private final ServiceTemplate<Usuario, String> daoInicioSesion;

    private Model() {
        daoPerfil = new ServiceTemplate<>(Perfil.class);
//        daoCarrera = new ServiceTemplate<>(Carrera.class);
//        daoCiclo = new ServiceTemplate<>(Ciclo.class);
//        daoCurso = new ServiceTemplate<>(Curso.class);
//        daoProfesor = new ServiceTemplate<>(Profesor.class);
//        daoInicioSesion = new ServiceTemplate<>(Usuario.class);
    }

    public static Model instance() {
        if (uniqueInstance == null) {
            uniqueInstance = new Model();
        }
        return uniqueInstance;
    }

    /*Buscar Objeto*/
    public Object buscar_objeto(Class<?> entityClass, Object id) throws GlobalException, NoDataException {
        switch (entityClass.getSimpleName()) {
            case "Perfil":
                return daoPerfil.buscar_objeto((String) id);
//            case "Carrera":
//                return daoCarrera.buscar_objeto((String) id);
//            case "Ciclo":
//                return daoCiclo.buscar_objeto((String) id);
//            case "Curso":
//                return daoCurso.buscar_objeto((String) id);
//            case "Profesor":
//                return daoProfesor.buscar_objeto((String) id);
            default:
                return null;
        }
    }

    /*Listar Objeto*/
    public Collection listar_objeto(Class<?> entityClass) throws GlobalException, NoDataException {
        switch (entityClass.getSimpleName()) {
            case "Perfil":
                return daoPerfil.listar_objeto();
//            case "Carrera":
//                return daoCarrera.listar_objeto();
//            case "Ciclo":
//                return daoCiclo.listar_objeto();
//            case "Curso":
//                return daoCurso.listar_objeto();
//            case "Profesor":
//                return daoProfesor.listar_objeto();
            default:
                return null;
        }
    }

    /*Insertar Objeto*/
    public void insertar_objeto(Class<?> entityClass, Object objeto) throws GlobalException, NoDataException {
        switch (entityClass.getSimpleName()) {
            case "Perfil":
                daoPerfil.insertar_objeto((Perfil) objeto);
                break;
//            case "Carrera":
//                daoCarrera.insertar_objeto((Carrera) objeto);
//                break;
//            case "Ciclo":
//                daoCiclo.insertar_objeto((Ciclo) objeto);
//                break;
//            case "Curso":
//                daoCurso.insertar_objeto((Curso) objeto);
//                break;
//            case "Profesor":
//                daoProfesor.insertar_objeto((Profesor) objeto);
//                break;
            default:
                break;
        }
    }

    /*Modificar Objeto*/
    public void modificar_objeto(Class<?> entityClass, Object objeto) throws GlobalException, NoDataException {
        switch (entityClass.getSimpleName()) {
            case "Perfil":
//                daoPerfil.modificar_objeto((Perfil) objeto);
//                break;
//            case "Carrera":
//                daoCarrera.modificar_objeto((Carrera) objeto);
//                break;
//            case "Ciclo":
//                daoCiclo.modificar_objeto((Ciclo) objeto);
//                break;
//            case "Curso":
//                daoCurso.modificar_objeto((Curso) objeto);
//                break;
//            case "Profesor":
//                daoProfesor.modificar_objeto((Profesor) objeto);
//                break;
            default:
                break;
        }
    }

    /*Eliminar Objeto*/
    public void eliminar_objeto(Class<?> entityClass, Object id) throws GlobalException, NoDataException {
        switch (entityClass.getSimpleName()) {
            case "Perfil":
 //               daoPerfil.eliminar_objeto((String) id);
                break;
//            case "Carrera":
//                daoCarrera.eliminar_objeto((String) id);
//                break;
//            case "Ciclo":
//                daoCiclo.eliminar_objeto((String) id);
//                break;
//            case "Curso":
//                daoCurso.eliminar_objeto((String) id);
//                break;
//            case "Profesor":
//                daoProfesor.eliminar_objeto((String) id);
//                break;
            default:
                break;
        }
    }

    //Service Inicio Sesion
    public Boolean iniciarSesion(final String cedula, final String clave) {
        return null;
  //      return validateCredentials(cedula, clave);
    }

}
