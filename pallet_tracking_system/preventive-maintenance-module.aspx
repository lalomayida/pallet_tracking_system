<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="preventive-maintenance-module.aspx.cs" Inherits="preventive_maintenance_module" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heroImage" Runat="Server">
    <div class="carousel-item active h-90" style="background-image: url('img/fixed/preventive_maintenance.png')">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="captionHeroImage" Runat="Server">
    <h1>Mantenimiento<br>
        preventivo</h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sectionContent" Runat="Server">
    <div class="container base-pane">
        <div class="col-md-12">
            <form>
                <div class="row ml-0 mr-0">
                    <div class="form-group col-md-6">
                        <label for="formGroupExampleInput">Numero de empleado</label>
                        <input type="text" class="form-control" id="formGroupExampleInput"
                            placeholder="Numero de empleado">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="exampleInputPassword1">Contraseña</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña">
                    </div>
                </div>
                <div class="col-md-5 search-box">
                    <form class="form-inline md-form form-sm active-cyan-2 mt-2">
                        <input type=text placeholder="Numero de pallet" class=qrcode-text>
                        <label class="qrcode-text-btn fix"><input type=file accept="image/*" capture=environment onchange="openQRCamera(this);" tabindex=-1></label>
                    </form>
                </div>
                <!-- Default unchecked -->

                <div class="form-group">

                    <label for="exampleFormControlSelect2">Seleccione las tareas realizadas</label>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked1">
                                <label class="custom-control-label" for="defaultUnchecked1">Moby dañado</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked2">
                                <label class="custom-control-label" for="defaultUnchecked2">Bases guia de pallets parte
                                    inferior
                                    Quebradas</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked3">
                                <label class="custom-control-label" for="defaultUnchecked3">Soporte de las bases</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked4">
                                <label class="custom-control-label" for="defaultUnchecked4">Manchas ( pintura de
                                    marcador
                                    )</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked5">
                                <label class="custom-control-label" for="defaultUnchecked5">Polvo y Rebabas
                                    (limpieza)</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked6">
                                <label class="custom-control-label" for="defaultUnchecked6">Pallet con grasa</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked7">
                                <label class="custom-control-label" for="defaultUnchecked7">Bases de pines de alambre
                                    dañadas o
                                    dobladas</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked8">
                                <label class="custom-control-label" for="defaultUnchecked8">Tornillos ausentes tornillos
                                    barridos</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked9">
                                <label class="custom-control-label" for="defaultUnchecked9">Ajuste correcto</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked10">
                                <label class="custom-control-label" for="defaultUnchecked10">Pines guias desgastados
                                </label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked11">
                                <label class="custom-control-label" for="defaultUnchecked11">Pines Guia alineados
                                </label>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked12">
                                <label class="custom-control-label" for="defaultUnchecked12">Pines Guian
                                    incorrectos</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked13">
                                <label class="custom-control-label" for="defaultUnchecked13">Altura de pines</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked1">
                                <label class="custom-control-label" for="defaultUnchecked1">Bujes dañados</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked2">
                                <label class="custom-control-label" for="defaultUnchecked2">Ajustador de aluminio dañado
                                    o desgastado</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked3">
                                <label class="custom-control-label" for="defaultUnchecked3">Tuerca de ajuste de flecha
                                    guía dañada o desgastada</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked4">
                                <label class="custom-control-label" for="defaultUnchecked4">Resortes dañados o
                                    desgastados</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked5">
                                <label class="custom-control-label" for="defaultUnchecked5">Tuercas / vastago dañado o
                                    desgastado</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked6">
                                <label class="custom-control-label" for="defaultUnchecked6">Placa lateral dañada y en
                                    presente </label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked7">
                                <label class="custom-control-label" for="defaultUnchecked7">Aspirar todas las areas del
                                    pallet</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultUnchecked8">
                                <label class="custom-control-label" for="defaultUnchecked8">Limpieza general con contct
                                    cleaner</label>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Comentarios</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-danger">Enviar Reporte</button>
            </form>
        </div>


    </div>
</asp:Content>