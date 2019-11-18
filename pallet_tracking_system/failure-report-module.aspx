<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="failure-report-module.aspx.cs" Inherits="failure_report_module" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heroImage" Runat="Server">
    <div class="carousel-item active h-90" style="background-image: url('img/fixed/failure-report.jpg')">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="captionHeroImage" Runat="Server">
    <h1>Reporte de <br>
        Fallos</h1>
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
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Seleccione los componentes dañados</label>
                    <select multiple class="form-control" id="exampleFormControlSelect2">
                        <option>Componente 1</option>
                        <option>Componente 2</option>
                        <option>Componente 3</option>
                        <option>Componente 4</option>
                        <option>Componente 5</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Nivel de criticidad</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>Bajo</option>
                        <option>Medio</option>
                        <option>Alto</option>
                    </select>
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