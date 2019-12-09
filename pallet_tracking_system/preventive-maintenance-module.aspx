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

    <div class="container base-pane">
        <div class="col-md-12">
                <div class="form-group">
                    <label for="formGroupExampleInput">Numero de empleado</label>
                    <input type="text" class="form-control" id="employeeID"
                        placeholder="Numero de empleado">
                </div>
                <!-- Default unchecked -->

                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Comentarios</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <button class="btn btn-danger" id="enviar">Registrar mantenimiento</button>
        </div>


    </div>

    <script type="text/javascript">
         $(document).ready(function () {
             $("#spinner").hide();

         });

         function getUrlParameter(name) {
             name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
             var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
             var results = regex.exec(location.search);
             return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
         };


         $("#enviar").click(function () {
             var datos = {};
             datos.employeeID = $("#employeeID").val();
             datos.palletNumber = getUrlParameter("pallet");
             datos.comments = $("#exampleFormControlTextarea1").val();
             console.log(datos);


             console.log(JSON.stringify(datos));

             $("#form").hide();
             $("#spinner").show();
             $.ajax({
                 type: 'post',
                 url: `https://intrepid-moose.herokuapp.com/maintenance`,
                 dataType: 'text',
                 contentType: 'application/json',
                 data: JSON.stringify(datos),
                 success: function (response) {
                     var data = JSON.parse(response);
                     console.log(data);
                     window.location.replace(`https://pallet-tracking-system.conveyor.cloud/index.aspx?line=1`);
                 }
             });
         });

    
    </script>
</asp:Content>