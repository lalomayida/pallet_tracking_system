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
                <div class="form-group">
                    <label for="formGroupExampleInput">Numero de pallet</label>
                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Numero de pallet">
                </div>
                <!-- Default unchecked -->

                <div class="form-group">
                    <label for="exampleFormControlSelect2">Seleccione los componentes dañados</label>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultUnchecked1">
                        <label class="custom-control-label" for="defaultUnchecked1">CheckItem 1</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultUnchecked2">
                        <label class="custom-control-label" for="defaultUnchecked2">CheckItem 2</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultUnchecked3">
                        <label class="custom-control-label" for="defaultUnchecked3">CheckItem 3</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultUnchecked4">
                        <label class="custom-control-label" for="defaultUnchecked4">CheckItem 4</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultUnchecked5">
                        <label class="custom-control-label" for="defaultUnchecked5">CheckItem 5</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultUnchecked6">
                        <label class="custom-control-label" for="defaultUnchecked6">CheckItem 6</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultUnchecked7">
                        <label class="custom-control-label" for="defaultUnchecked7">CheckItem 7</label>
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