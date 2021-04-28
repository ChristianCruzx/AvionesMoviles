<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
        <%@include file="/Presentation/head.jsp"%>
        

            <meta name="Content-type" content="text/html; charset=utf-8" type="equiv">
		<meta name="X-UA-Compatible" content="IE=edge" type="equiv">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" type="name">
    <link rel="shortcut icon" type="image/x-icon" href="https://demo.tastyigniter.com/app/admin/assets/images/favicon.ico">
    <title>Administrator Panel </title>
   
   		<link rel="stylesheet" type="text/css" href="https://demo.tastyigniter.com/app/system/assets/ui/flame.css" name="flame-css">
		<link rel="stylesheet" type="text/css" href="https://demo.tastyigniter.com/app/admin/assets/css/admin.css" name="admin-css">
		<link rel="stylesheet" type="text/css" href="https://demo.tastyigniter.com/app/admin/widgets/dashboardcontainer/assets/css/dashboardcontainer.css">
		<link rel="stylesheet" type="text/css" href="https://demo.tastyigniter.com/app/admin/dashboardwidgets/statistics/assets/css/statistics.css" name="statistics-css">
		<link rel="stylesheet" type="text/css" href="https://demo.tastyigniter.com/app/admin/dashboardwidgets/charts/assets/vendor/daterange/daterangepicker.css" name="daterangepicker-css">
		<link rel="stylesheet" type="text/css" href="https://demo.tastyigniter.com/app/admin/dashboardwidgets/charts/assets/css/charts.css" name="charts-css">
</head>
        <body class="page" style="overflow-y: scroll;">
   
    <nav class="navbar navbar-top navbar-expand navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-brand">
                <a class="logo" href="/Presentation/ListaPlatillos.jsp">
                    <i class="logo-icon icon-ti-logo"></i>
                </a>
            </div>

            <div class="navbar navbar-right">
                <button
                    type="button"
                    class="navbar-toggler"
                    data-toggle="collapse"
                    data-target="#navSidebar"
                    aria-controls="navSidebar"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                >
                    <span class="fa fa-bars"></span>
                </button>

                <ul id="menu-mainmenu"
    class="navbar-nav"
    data-control="mainmenu"
    data-alias="mainmenu">
                                      
            <li
    id="menuitem-preview"
    class="nav-item">
    <a  class="nav-link front-end" title="Principal" href="/Presentation/Principal.jsp"> Log Out
        
                    </a>
</li>
            
                </ul>            </div>
        </div>
    </nav> 

        
        <div class="sidebar" role="navigation">
    <div id="navSidebar" class="nav-sidebar">
        <ul  id="side-nav-menu" class="nav">
                    <li class="nav-item active">
            <a
                class="nav-link dashboard admin"
                href="#"
                aria-expanded="true"
            >
                                    <i class="fa fa-tachometer-alt fa-fw"></i>
                
                                    <span class="content">Administrator</span>
                            </a>

                    </li>
                    <li class="nav-item">
           
                    </li>
                    <li class="nav-item">
            <a
                class="nav-link kitchen has-arrow"
                href="#"
                aria-expanded="false"
            >
                                    <i class="fa fa-utensils fa-fw"></i>
                
                                    <span class="content">Kitchen</span>
                            </a>

                            <ul  class="nav collapse" aria-expanded="false">
                    <li class="nav-item">
            <a
                class="nav-link menus"
                href=""
                aria-expanded="false"
            >
                
                                    Menu Items & Categories                            </a>

                    </li>
                                
                                <div class="col-sm-2 d-none d-sm-inline-block" style="color: whitesmoke;">
                        <div class="categories affix-categories">
                          <br>
                    <nav class="nav nav-categories flex-column" id="ListaCat">

                    <table class="tabla" class="collapse d-sm-block">
            <thead>

            </thead>
                        <tbody id="CategoriasL" name="CategoriasL">
                         
                        </tbody>


        </table>        
                    </nav>              

                        </div>
                    </div>
    </ul>
                    </li>
                    <li class="nav-item">
            <a
                class="nav-link sales has-arrow"
                href="#"
                aria-expanded="false"
            >
                                    <i class="fa fa-chart-bar fa-fw"></i>
                
                                    <span class="content">Sales</span>
                            </a>

                            <ul  class="nav collapse" aria-expanded="false">
                    <li class="nav-item">
            <a
                class="nav-link orders"
                href="/Presentation/ListaOrdenes.jsp"
                aria-expanded="false"
            >
                
                                    Orders                            </a>

                    </li>
    </ul>
                    </li>
                    
                    <li class="nav-item">
            <a
                class="nav-link users has-arrow"
                href="#"
                aria-expanded="false"
            >
                                    <i class="fa fa-user fa-fw"></i>
                
                                    <span class="content">Users</span>
                            </a>

                            <ul  class="nav collapse" aria-expanded="false">
                    <li class="nav-item">
            <a
                class="nav-link customers"
                href="/Presentation/UsuariosAdmin.jsp"
                aria-expanded="false"
            >
                
                                    Customers & Staff                          </a>

                    </li>
                   
    </ul>
                    </li>
                            </ul>
    </div>
</div>
   
                <div class="row py-4" style="margin-top: 5%; margin-left: 30%;">
           
                <div class=" " style="margin-top: 5%; margin-left: 3%">
                    
                     <div style="text-align: left; margin-left: 125px; margin-top: 2% " >
                            <button   data-toggle='modal' data-target='#Modal2CrearCat'class="btn btn-light text-left" type="button"  class="btn btn-default"  style="background: #4c4f53; color: whitesmoke; font-family:  sans-serif;" id="AddCategoria" >Agregar Categoria</button>
                             <button  title="" data-toggle="modal"  class="btn btn-light text-left" type="button" data-target="#ModalCreaplatilo" class="btn btn-default"  style="background: #4c4f53; color: whitesmoke; font-family:  sans-serif " id="AddCategoria">Agregar Platillo</button>

                        </div>
                    <br><br><br>
                    <h1 style="text-align: center; color:#112462">Menu Items</h1>
                    <div  style="">


                  <br>
                       
                        
                        

                        <div  style="height: available; position: relative; margin-top: 2%;  margin-left: 40px; margin-right: 40px; margin-bottom: 100px; ">      
                          <h3 style="text-align: center; color: #112462">Platillos</h3>

                            <table class="table table-bordered table-striped mb-0 " id="TablePlatillos"style="">
                                <thead>
                                    <tr>
                                  
                                        <th scope="col">Platillo</th>
                                        <th scope="col">Descripcion</th>
                                        <th scope="col">Precio</th>
                                        <th scope="col">Editar</th>
                                        <th scope="col">Ver Opciones</th>
                                        <th scope="col">Agregar Opciones</th>


        
                                    </tr>
                                </thead>
                                <tbody  id="TbodyPlatillos">

                                  

                                </tbody>
                            </table>

                        </div>
                         <div  style="height: available; position: relative;  margin-left: 40px; margin-right: 40px; margin-bottom: 100px; ">      
                          <h3 style="text-align: center; color: #112462">Opciones</h3>

                            <table class="table table-bordered table-striped mb-0 " id="OpcionesTable"style="">
                                <thead>
                                    <tr>
                                      
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Agregar Tipos Opcion</th>
                                          <th scope="col">Ver Tipos de Opciones</th>
     
                                    </tr>
                                </thead>
                                <tbody id="TbodyOpciones">

                                </tbody>
                            </table>

                        </div>
                        
                          <div  style="height: available; position: relative;   margin-left: 40px; margin-right: 40px; margin-bottom: 100px; ">      
                          <h3 style="text-align: center; color: #112462">Tipos de Opcion</h3>

                            <table class="table table-bordered table-striped mb-0 " id="DetallesTable"style="">
                                <thead>
                                    <tr>
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Precio</th>
                                        <th scope="col">Editar</th>
                                        


        
                                    </tr>
                                </thead>
                                <tbody id="TbodyDetalles">

                                </tbody>
                            </table>

                        </div>

                    </div>
            </div>

        </div>

        <div class="modal fade" id="Modal2CrearCat" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            <h3>Crear Categoria</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
            <form>             
            <label for="inputPassword4"> Ingrese Nombre Categoria</label>
            <input type="" class="form-control" id="catName" required=""> 
            
            
            </form>
        </div>
        <div class="modal-footer">
       <button type="button" class="btn btn-default"  onclick="crearCategoria()" id="aplicarCheckOut" >Aplicar</button>

          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>   
     
 <div class="modal fade" id="ModalCreaplatilo" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
            <h3>Crear Platillo</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
            <form>
                
                <select required="true" onchange="" class="form-control btn-info" id="SelectCat"  name="selectestado">
                    
                    
                    
                    
                </select>           
            <label for=""> Ingrese Nombre del Platillo</label>
      <input type="" class="form-control" id="PlatilloName" requerid> 
      
      <label>Ingrese la Descripcion del Platillo</label>
    <textarea class="form-control" id="descripPlatillo" rows="3" requerid></textarea>
        
    <label for=""> Ingrese el Precio del Platillo</label>
      <input type="" class="form-control" id="PlatilloPrecio" requerid>       
            
            </form>
        </div>
        <div class="modal-footer">
       <button type="button" class="btn btn-default"  onclick="retornaCategoria()" id="aplicarCheckOut" >Aplicar</button>

          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>               
                
                
                
               
 <div class="modal fade" id="ModalAddOpcion" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal Add Opcion-->
      <div class="modal-content">
        <div class="modal-header">
            <h3>Crear Opcion</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
            <form>             
            <label for="inputPassword4"> Ingrese Nombre opcion</label>
            <input type="" class="form-control" id="Opname" required=""> 
            
            
            </form>
        </div>
        <div class="modal-footer">
       <button type="button" class="btn btn-default"  onclick="addOpcion()" id="aplicarCheckOut" >Aplicar</button>

          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>                  
                
                
                
   <div class="modal fade" id="ModalAddDetalle" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal Add Opcion-->
      <div class="modal-content">
        <div class="modal-header">
            <h3>Crear Tipo Opcion</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
            <form>             
            <label for="inputPassword4"> Ingrese Nombre Tipo Opcion</label>
            <input type="" class="form-control" id="DetalleName" required=""> 
            
            <label for="inputPassword4"> Ingrese el Precio</label>
            <input type="" class="form-control" id="DetallePrecio" required=""> 
            
            
            </form>
        </div>
        <div class="modal-footer">
       <button type="button" class="btn btn-default"  onclick="addDetalle()" id="aplicarCheckOut" >Aplicar</button>

          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>                  
     
                
       <div class="modal fade" id="ModalUpdatePlatillo" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal Add Opcion-->
      <div class="modal-content">
        <div class="modal-header">
            <h3>Editar Platillo</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
            <form>             
            <label for="inputPassword4"> Nombre</label>
            <input type="" class="form-control" id="upPlatiName" required=""> 
            
            <label for="inputPassword4"> Descripcion</label>
            <input type="" class="form-control" id="upDescripiName" required=""> 
            
            <label for="inputPassword4"> Precio</label>
            <input type="" class="form-control" id="upPrecioName" required=""> 
            
            </form>
        </div>
        <div class="modal-footer">
       <button type="button" class="btn btn-default"  onclick="updatePlatillo()" id="aplicarCheckOut" >Aplicar</button>

          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
                
 <div class="modal fade" id="ModalUpdateDetalle" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal Add Opcion-->
      <div class="modal-content">
        <div class="modal-header">
            <h3>Editar Tipo Opcion</h3>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
            <form>             
            <label for="inputPassword4"> Nombre</label>
            <input type="" class="form-control" id="upDetatiName" required=""> 
            
          
            <label for="inputPassword4"> Precio</label>
            <input type="" class="form-control" id="upDetaPrecio" required=""> 
            
            </form>
        </div>
        <div class="modal-footer">
       <button type="button" class="btn btn-default"  onclick="updateDetalle()" id="aplicarCheckOut" >Aplicar</button>

          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>               
                
                
                
                
                
                
                
                
                
    </body>

</html>
<script>
   
   
   
   
   
   var Listcat;
   var opcion;
   var platilloUpdate;
   var detalleUpdate;
   
   
  //Categorias

$(SelectCategorias);
function SelectCategorias(){
    $.ajax({type: "POST", url:"/api/menu/Categorias" ,contentType: "application/json"})
      .then( (categorias)=>{ listarCatSelect(categorias);},
             (error)=>{ alert(errorMessage(error.status));});  
    
    
    
}

   function listarCatSelect(categorias) {
Listcat=categorias;
                var listaC = $("#SelectCat");
                listaC.html("");
               categorias.forEach((p) => {
                    rowCatSelect(listaC,p);
                });

  }
   function rowCatSelect(listaM, p) {
                
                var tr = $("<option value='"+p.id+"' >");
                tr.html(p.nombre);


                listaM.append(tr);
}



function retornaCategoria(){

 var nom= document.getElementById("SelectCat").value;
        $.ajax({type: "POST", url:"/api/admin/RetornaCategoria" ,data: JSON.stringify(nom),
            contentType: "application/json"})
      .then( (categoria)=>{ crearPlatillo(categoria);},
             (error)=>{ alert(errorMessage(error.status));}); 
    
}



    $(loaded);
    function loaded(){

        $.ajax({type: "POST", url:"/api/menu/Categorias" ,contentType: "application/json"})
      .then( (categorias)=>{listarCategorias(categorias);},
             (error)=>{ alert(errorMessage(error.status));}); 
  }
  
  
   function crearCategoria(){
       var nom= document.getElementById("catName").value;
        $.ajax({type: "POST", url:"/api/admin/newCategoria" ,data: JSON.stringify(nom),
            contentType: "application/json"})
      .then( (categoria)=>{loaded();},
             (error)=>{ alert(errorMessage(error.status));}); 
       
   }
   
   
  
  function listarCategorias(categorias){
     
    var listaCa=$("#CategoriasL"); 
    listaCa.html(""); 
    categorias.forEach((d)=>{rowCategorias(listaCa,d);});   
  }
    
 

   function rowCategorias(listaCa,d){
    var tr =$("<tr>");
    tr.html("<td id = 'categoria'>"+d.nombre+"</td>");
        tr.find("#categoria").on("click",()=>{escoger(d);});
    listaCa.append(tr);          
  }
  
  function escoger(d){
      
      $("#genero").val(d.nombre);
      $(listarCategoria(d));

     
  }
  
 
  
//platillos
  function listarCategoria(d){ 
      Categoria = d;
     $.ajax({type: "POST", url:"/api/menu/PlatosPorCategoria",
                data: JSON.stringify(Categoria),contentType: "application/json"})
      .then( (platillos)=>{listPlatillo(platillos);},
             (error)=>{ alert(errorMessage(error.status));});
         }
         
    function listPlatillo(platillos){

    var listaPla=$("#TbodyPlatillos"); 
    listaPla.html(""); 
    platillos.forEach((d)=>{rowPlatillos(listaPla,d);});  
  }
  

   function rowPlatillos(listaPla,d){
    var tr =$("<tr>");
    
    
    tr.html("<td id = 'platillo'>"+ d.nombre +"</td>"+
            "<td id = 'descripcion'>"+ d.descripcion +"</td>"+
           "<td id = 'precio'>"+ "$" + d.precio +"</td>"+
           "<td>" + "<input style='background=red'   id='editPlatillo' type='button' name = 'editPlatillo'data-toggle='modal' data-target='#myModal' value='+'>" +
           "<td>" + "<input style='background=red'   id='showOpciones' type='button' name = 'showOpciones' value='+'>" +
        "<td>" + "<input style='background=red'   id='addOpciones' type='button' name = 'addOpciones' value='+'>" +

                "</td>"
  );
        tr.find("#showOpciones").on("click",()=>{showOpciones(d);});
               tr.find("#editPlatillo").on("click",()=>{showModalUpdatePlatillo(d);});

         tr.find("#addOpciones").on("click",()=>{ showModalNewOpcion(d);}); 
    listaPla.append(tr);          
  }
    
function crearPlatillo(categoria){
  
    
    Platillo={
        nombre: document.getElementById("PlatilloName").value,
        descripcion: document.getElementById("descripPlatillo").value,
        precio: document.getElementById("PlatilloPrecio").value,
        categoria:categoria 
       };
       console.log(Platillo.nombre);
      $.ajax({type: "POST", url:"/api/admin/newPlatillo" ,data: JSON.stringify(Platillo),
            contentType: "application/json"})
      .then( (categoria)=>{ alert("Platillo Creado");},
             (error)=>{ alert(errorMessage(error.status));}); 
    
}

 function showModalUpdatePlatillo(p){
      platilloUpdate=p;
         document.getElementById("upPlatiName").value=p.nombre;
         document.getElementById("upDescripiName").value=p.descripcion;
         document.getElementById("upPrecioName").value=p.precio;

       $("#ModalUpdatePlatillo").modal('show');
       
   }
   
   function updatePlatillo(){
   platilloUpdate.nombre = document.getElementById("upPlatiName").value;
   platilloUpdate.descripcion= document.getElementById("upDescripiName").value;  
   platilloUpdate.precio = document.getElementById("upPrecioName").value;    
    
        
    $.ajax({type: "POST", url:"/api/admin/UpdatePlatillo",
                data: JSON.stringify(platilloUpdate),contentType: "application/json"})
      .then( (opciones)=>{alert("Platillo Actualizado");},
             (error)=>{ alert(errorMessage(error.status));});
            
   
    
    }


      //Opciones

    function showOpciones(platillo){
         $.ajax({type: "POST", url:"/api/menu/Opciones",
                data: JSON.stringify(platillo),contentType: "application/json"})
      .then( (opciones)=>{listOpciones(opciones);},
             (error)=>{ alert(errorMessage(error.status));});
        
        
        
    }
    
    
    
     function listOpciones(platillos){

    var listaAdi=$("#TbodyOpciones"); 
    listaAdi.html(""); 
    platillos.forEach((d)=>{rowOpciones(listaAdi,d);});  
  }
  
   function rowOpciones(listaAdi,d){
    var tr =$("<tr>");
    
    
   tr.html("<td id = 'opcionName'>"+ d.nombre +"</td>"+
          "<td>" + "<input style='background=red'   id='addDetalle' type='button' name = 'addDetalle' value='+'>" +

           "<td>" + "<input style='background=red'   id='ShowDetalles' type='button' name = 'ShowDetalles' value='+'>" +
           "</td>"
  
                
                );
       
       

     tr.find("#ShowDetalles").on("click",()=>{Detalles(d);});
        tr.find("#addDetalle").on("click",()=>{showModalNewDetalle(d);});

    listaAdi.append(tr);          
  }
  
   function showModalNewOpcion(op){
       opcion =op;
       $("#ModalAddOpcion").modal('show');
       
   }
  
function addOpcion(){
        var nom= document.getElementById("Opname").value;
   Opcion ={
       nombre: nom,
       platillo: opcion
       
       
   };
      $.ajax({type: "POST", url:"/api/admin/newOpcion",
                data: JSON.stringify(Opcion),contentType: "application/json"})
      .then( (op)=>{alert("Se ha creado Nueva Opcion");},
             (error)=>{ alert(errorMessage(error.status));});
    
}
    
    //detalles

  
   function Detalles(d){
    
      $.ajax({type: "POST", url:"/api/menu/Detalle",
                data: JSON.stringify(d),contentType: "application/json"})
      .then( (detalles)=>{listarDetalle(detalles);},
             (error)=>{ alert(errorMessage(error.status));});
      
  }
  function listarDetalle(detalles){
       var listaDet=$("#TbodyDetalles"); 
    listaDet.html(""); 
    detalles.forEach((d)=>{rowDetalles(listaDet,d);});    
      
      
      
  }
    function rowDetalles(listaDet,d){
    var tr =$("<tr>");
    
    
    tr.html("<td id = 'detallename'>"+ d.nombre +"</td>"+
            "<td id = 'detalleprecio'>"+ d.precio +"  </td>"+
            "<td>" + "<input style='background=red'   id='EditDetalle' type='button' name = 'ShowDetalles' value='+'>" +
            "</td>");
  
               tr.find("#EditDetalle").on("click",()=>{showModalUpdateDetalle(d);});

    listaDet.append(tr);          
  }
  
   function showModalNewDetalle(op){
       opcion =op;
       $("#ModalAddDetalle").modal('show');
       
   }
function addDetalle(){
        var nom= document.getElementById("DetalleName").value;
        var pre=document.getElementById("DetallePrecio").value;
   Detalle ={
       nombre: nom,
       precio: pre,
       opcion:opcion
       
       
   };
      $.ajax({type: "POST", url:"/api/admin/newDetalle",
                data: JSON.stringify(Detalle),contentType: "application/json"})
      .then( (op)=>{alert("Se ha creado Nuevo Tipo de Opcion");},
             (error)=>{ alert(errorMessage(error.status));});
    
}


function showModalUpdateDetalle(p){
      detalleUpdate=p;
         document.getElementById("upDetaPrecio").value=p.precio;
         document.getElementById("upDetatiName").value=p.nombre;


       $("#ModalUpdateDetalle").modal('show');
       
 }
   
   function updateDetalle(){
   detalleUpdate.nombre = document.getElementById("upDetatiName").value;
   detalleUpdate.precio =  document.getElementById("upDetaPrecio").value;    
    
        
    $.ajax({type: "POST", url:"/api/admin/UpdateDetalle",
                data: JSON.stringify(detalleUpdate),contentType: "application/json"})
      .then( (opciones)=>{alert("Detalle Actualizado");},
             (error)=>{ alert(errorMessage(error.status));});
            
   
    
    }
    
  
  
    </script>
        
        <script charset="utf-8" type="text/javascript" src="https://demo.tastyigniter.com/app/system/assets/ui/flame.js" name="flame-js"></script>

		<script charset="utf-8" type="text/javascript" src="https://demo.tastyigniter.com/app/admin/assets/js/admin.js" name="admin-js"></script>

		<script charset="utf-8" type="text/javascript" src="https://demo.tastyigniter.com/app/admin/widgets/menu/assets/js/mainmenu.js" name="mainmenu-js"></script>

		<script charset="utf-8" type="text/javascript" src="https://demo.tastyigniter.com/app/admin/widgets/dashboardcontainer/assets/js/dashboardcontainer.js"></script>

		<script charset="utf-8" type="text/javascript" src="https://demo.tastyigniter.com/app/system/assets/ui/js/vendor/moment.min.js" name="moment-js"></script>

		<script charset="utf-8" type="text/javascript" src="https://demo.tastyigniter.com/app/admin/dashboardwidgets/charts/assets/vendor/daterange/daterangepicker.js" name="daterangepicker-js"></script>

		<script charset="utf-8" type="text/javascript" src="https://demo.tastyigniter.com/app/admin/dashboardwidgets/charts/assets/vendor/chartjs/Chart.min.js" name="chartsjs-js"></script>

		<script charset="utf-8" type="text/javascript" src="https://demo.tastyigniter.com/app/admin/dashboardwidgets/charts/assets/js/charts.js" name="charts-js"></script>
