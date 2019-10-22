<%-- 
    Document   : index
    Created on : 21/10/2019, 08:38:16 AM
    Author     : elomj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Números aleatorios | Alexandra -  Omar - Elkin</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <ul class="nav fixed-top justify-content-around grey animated fadeInDown lighten-4 py-4">
            <li class="nav-item">
                <a data-toggle="modal" data-target="#cuadradosmedio" class="nav-link font-weight-bold text-primary">Cuadrado medio</a>
            </li>
            <li class="nav-item">
                <a data-toggle="modal" data-target="#productomedio" class="nav-link font-weight-bold text-primary">Producto medio</a>
            </li>
            <li class="nav-item">
                <a data-toggle="modal" data-target="#congruencialineal" class="nav-link font-weight-bold text-primary">Congruencial lineal</a>
            </li>
            <li class="nav-item">
                <a data-toggle="modal" data-target="#congruencialmultiplicativo" class="nav-link font-weight-bold text-primary">Congruencial multimplicativo</a>
            </li>
        </ul>
        <div class="container-fluid pt-5 text-center">
            <div id="contenido" class="py-5">
                <div class="my-5 py-5 animated fadeInDown">
                    <div class="text-light">
                        <i class="fas fa-table fa-6x my-5"></i>
                        <h4 class="font-weight-bold">Los números generados se mostrarán aquí!</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="cuadradosmedio" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalPreviewLabel">Método del cuadrado medio</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form onsubmit="cuadradoMedio()" method="POST" action="generar.do?accion=cuadradomedio" target="formularios">
                            <div class="container-fluid mb-4">
                                <div class="md-form md-outline form-lg">
                                    <input value="5735" name="semilla01" id="semilla0101" class="form-control form-control-lg" type="number">
                                    <label for="semilla0101">Semilla</label>
                                </div>
                                <div class="md-form md-outline form-lg">
                                    <input value="4" name="digitos" id="digito0101" class="form-control form-control-lg" type="number">
                                    <label for="digito0101">Dígitos</label>
                                </div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <button data-dismiss="modal" type="submit" class="btn btn-info font-weight-bold col-4 m-0">Cancelar</button>
                                        <button type="submit" class="btn font-weight-bold btn-blue col-8 m-0">Generar</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="productomedio" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalPreviewLabel">Método del producto medio</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form onsubmit="productoMedio()" method="POST" action="generar.do?accion=productomedio" target="formularios">
                            <div class="container-fluid mb-4">
                                <div class="md-form md-outline form-lg">
                                    <input value="9423" name="semilla01" id="semilla0102" class="form-control form-control-lg" type="number">
                                    <label for="semilla0102">Semilla N 1</label>
                                </div>
                                <div class="md-form md-outline form-lg">
                                    <input value="6372" name="semilla02" id="semilla0202" class="form-control form-control-lg" type="number">
                                    <label for="semilla0202">Semilla N 2</label>
                                </div>
                                <div class="md-form md-outline form-lg">
                                    <input value="4" name="digitos" id="digito0102" class="form-control form-control-lg" type="number">
                                    <label for="digito0102">Dígitos</label>
                                </div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <button data-dismiss="modal" type="submit" class="btn btn-info font-weight-bold col-4 m-0">Cancelar</button>
                                        <button type="submit" class="btn font-weight-bold btn-blue col-8 m-0">Generar</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="congruencialineal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalPreviewLabel">Método congruencial lineal</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form onsubmit="congruencialLineal()" method="POST" action="generar.do?accion=congruenciallineal" target="formularios">
                            <div class="container-fluid mb-4">
                                <div class="md-form md-outline form-lg">
                                    <input value="24733" name="semilla01" id="semilla0103" class="form-control form-control-lg" type="number">
                                    <label for="semilla0103">Semilla</label>
                                </div>
                                <div class="md-form md-outline form-lg">
                                    <input value="314" name="letraa" id="letraa01" class="form-control form-control-lg" type="number">
                                    <label for="letraa01">Valor de <span class="font-weight-bold">A</span></label>
                                </div>
                                <div class="md-form md-outline form-lg">
                                    <input value="1" name="letrac" id="letrac01" class="form-control form-control-lg" type="number">
                                    <label for="letrac01">Valor de <span class="font-weight-bold">C</span></label>
                                </div>
                                <div class="md-form md-outline form-lg">
                                    <input value="35" name="letrag" id="letrag01" class="form-control form-control-lg" type="number">
                                    <label for="letrag01">Valor de <span class="font-weight-bold">G</span></label>
                                </div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <button data-dismiss="modal" type="submit" class="btn btn-info font-weight-bold col-4 m-0">Cancelar</button>
                                        <button type="submit" class="btn font-weight-bold btn-blue col-8 m-0">Generar</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="congruencialmultiplicativo" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalPreviewLabel">Método congruencial multiplicativo</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form onsubmit="congruencialMultiplicativo()" method="POST" action="generar.do?accion=congruencialmultiplicativo" target="formularios">
                            <div class="container-fluid mb-4">
                                <div class="md-form md-outline form-lg">
                                    <input value="5" name="semilla01" id="semilla0103" class="form-control form-control-lg" type="number">
                                    <label for="semilla0103">Semilla</label>
                                </div>
                                <div class="md-form md-outline form-lg">
                                    <input value="5" name="letraa" id="letraa02" class="form-control form-control-lg" type="number">
                                    <label for="letraa02">Valor de <span class="font-weight-bold">A</span></label>
                                </div>
                                <div class="md-form md-outline form-lg">
                                    <input value="32" name="letram" id="letram02" class="form-control form-control-lg" type="number">
                                    <label for="letram02">Valor de <span class="font-weight-bold">M</span></label>
                                </div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <button data-dismiss="modal" type="submit" class="btn btn-info font-weight-bold col-4 m-0">Cancelar</button>
                                        <button type="submit" class="btn font-weight-bold btn-blue col-8 m-0">Generar</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <iframe name="formularios" style="display: none"></iframe>
        <div id="esperar"></div>
        <!-- SCRIPTS -->
        <script>
            function cuadradoMedio() {
                $('#cuadradosmedio').modal('hide');
                $("#esperar").load("/aleatorios/esperar.jsp");
            }

            function productoMedio() {
                $('#productomedio').modal('hide');
                $("#esperar").load("/aleatorios/esperar.jsp");
            }

            function congruencialLineal() {
                $('#congruencialineal').modal('hide');
                $("#esperar").load("/aleatorios/esperar.jsp");
            }

            function congruencialMultiplicativo() {
                $('#congruencialmultiplicativo').modal('hide');
                $("#esperar").load("/aleatorios/esperar.jsp");
            }
        </script>
        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
    </body>
</html>
