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
    
    <div class="container base-pane" id="spinner">
        <br />
        <div class="row">
            <div class="col-md-5">
                
            </div>
            <div class="col-md-4">
                <div class="loader"></div>
            </div>
            <div class="col-md-3">
                
            </div>
        </div>
    </div>
    
    <div class="container base-pane" id="form">
        <div class="col-md-12">
                <div class="row ml-0 mr-0">
                    <div class="form-group col-md-12">
                        <label for="formGroupExampleInput">Numero de empleado</label>
                        <input type="text" class="form-control" id="formGroupExampleInput"
                            placeholder="Numero de empleado">
                    </div>
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
                <button class="btn btn-dark" id="enviar">Enviar Reporte</button>
        </div>


    </div>

     <script type="text/javascript">
         $(document).ready(function () {
             $("#spinner").hide();

         });


         $("#enviar").click(function () {
             var datos = {
                 "employeeID": "1",
                 "palletNumber": "1",
                 "partsDamaged": [1, 3, 5],
                 "criticityLevel": 1,
                 "comments": "no pos ta feo"
             };

             $("#form").hide();
             $("#spinner").show();
             $.ajax({
                 type: 'get',
                 url: `http://localhost:3000/failure/fixedFailure`,
                 dataType: 'text',
                 success: function (response) {
                     var data = JSON.parse(response);
                     console.log(data);
                     window.location.replace(`http://localhost:56041/index.aspx?line=1`);
                 }
             });
         });

    
    </script>
</asp:Content>