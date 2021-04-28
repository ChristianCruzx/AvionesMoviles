/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Entities.Duracion;
import Entities.Horario;
import Entities.Ruta;
import Entities.TipoAvion;
import Entities.Vuelo;
import java.util.ArrayList;

/**
 *
 * @author Chris
 */
public class ModelT {

    private static ModelT uniqueInstance;
    private ArrayList RutasList;
    private ArrayList VuelosList;
    private ArrayList TipoAvionList;

    public ModelT() {
        this.RutasList = new ArrayList<Ruta>();
        this.VuelosList = new ArrayList<Vuelo>();
        this.TipoAvionList = new ArrayList<TipoAvion>();

        Duracion d1 = new Duracion("2", "35");
        Duracion d2 = new Duracion("8", "0");
        Horario h1 = new Horario("04/05/2021", d1);
        Horario h2 = new Horario("08/05/2022", d2);

        Ruta r1 = new Ruta("1", "Dallas", "Rio de Jainero", d1, h1);
        Ruta r2 = new Ruta("2", "Toronto", "Ciudad Metropolis", d2, h2);

        TipoAvion tp1 = new TipoAvion("2020", "Ryzen 4500u", "Tesla", 4, 3, 12);

        Vuelo v1 = new Vuelo(r1, tp1, tp1.getCant_asientos(), d1, "22-04-31");
        v1.setId_vuelo("1");
        v1.setPrecio(100);
        Vuelo v2 = new Vuelo(r2, tp1, tp1.getCant_asientos(), d2, "22-04-31");
        v2.setId_vuelo("3");
        v2.setPrecio(110);
        this.VuelosList.add(v2);
        this.VuelosList.add(v1);

    }

    public static ModelT instance() {
        if (uniqueInstance == null) {
            uniqueInstance = new ModelT();
        }
        return uniqueInstance;
    }

    public static ModelT getUniqueInstance() {
        return uniqueInstance;
    }

    public static void setUniqueInstance(ModelT uniqueInstance) {
        ModelT.uniqueInstance = uniqueInstance;
    }

    public ArrayList getRutasList() {
        return RutasList;
    }

    public void setRutasList(ArrayList RutasList) {
        this.RutasList = RutasList;
    }

    public ArrayList getVuelosList() {
        return VuelosList;
    }

    public void setVuelosList(ArrayList VuelosList) {
        this.VuelosList = VuelosList;
    }

    public ArrayList getTipoAvionList() {
        return TipoAvionList;
    }

    public void setTipoAvionList(ArrayList TipoAvionList) {
        this.TipoAvionList = TipoAvionList;
    }

    @Override
    public String toString() {
        return "ModelT{" + "RutasList=" + RutasList.toString() + ", VuelosList=" + VuelosList.toString() + ", TipoAvionList=" + TipoAvionList.toString() + '}';
    }
    
    

}
