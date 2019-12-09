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
                        <option value="1">Componente A</option>
                        <option value="2">Componente B</option>
                        <option value="3">Componente C</option>
                        <option value="4">Componente D</option>
                        <option value="5">Componente E</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Nivel de criticidad</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option value="1">Bajo</option>
                        <option value="2">Medio</option>
                        <option value="3">Alto</option>
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

         function getUrlParameter(name) {
             name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
             var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
             var results = regex.exec(location.search);
             return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
         };


         $("#enviar").click(function () {
             var datos = {};
             datos.employeeID = $("#formGroupExampleInput").val();
             datos.criticityLevel = $("#exampleFormControlSelect1 option:selected").val();
             datos.palletNumber = getUrlParameter("pallet");
             datos.partsDamaged = [];

             $.each($("#exampleFormControlSelect2 option:selected"), function () {
                 datos.partsDamaged.push(parseInt($(this).val()));
             });

             datos.comments = $("#exampleFormControlTextarea1").val();
             console.log(datos);


             console.log(JSON.stringify(datos));

             $("#form").hide();
             $("#spinner").show();
             $.ajax({
                 type: 'post',
                 url: `https://intrepid-moose.herokuapp.com/failure`,
                 dataType: 'text',
                 contentType: 'application/json',
                 data: JSON.stringify(datos),
                 success: function (response) {
                     var data = JSON.parse(response);
                     console.log(data);
                     
                     datosCorreo = {
                         "emailTo": "edmundo_ullrich@hotmail.com",
                         "subject": "Un pallet está fuera de la línea",
                         "html": "<html> <title>Simple Transactional Email<\/title> <style> @media only screen and (max-width: 620px) { table[class=body] h1 { font-size: 28px !important; margin-bottom: 10px !important; } table[class=body] p, table[class=body] ul, table[class=body] ol, table[class=body] td, table[class=body] span, table[class=body] a { font-size: 16px !important; } table[class=body] .wrapper, table[class=body] .article { padding: 10px !important; } table[class=body] .content { padding: 0 !important; } table[class=body] .container { padding: 0 !important; width: 100% !important; } table[class=body] .main { border-left-width: 0 !important; border-radius: 0 !important; border-right-width: 0 !important; } table[class=body] .btn table { width: 100% !important; } table[class=body] .btn a { width: 100% !important; } table[class=body] .img-responsive { height: auto !important; max-width: 100% !important; width: auto !important; } } @media all { .ExternalClass { width: 100%; } .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; } .apple-link a { color: inherit !important; font-family: inherit !important; font-size: inherit !important; font-weight: inherit !important; line-height: inherit !important; text-decoration: none !important; } #MessageViewBody a { color: inherit; text-decoration: none; font-size: inherit; font-family: inherit; font-weight: inherit; line-height: inherit; } .btn-primary table td:hover { background-color: #34495e !important; } .btn-primary a:hover { background-color: #34495e !important; border-color: #34495e !important; } } <\/style> <\/head> <body class=\"\" style=\"background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\" style=\"border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; background-color: #f6f6f6;\"> <tr> <td style=\"font-family: sans-serif; font-size: 14px; vertical-align: top;\"> <\/td> <td class=\"container\" style=\"font-family: sans-serif; font-size: 14px; vertical-align: top; display: block; Margin: 0 auto; max-width: 580px; padding: 10px; width: 580px;\"> <div class=\"content\" style=\"box-sizing: border-box; display: block; Margin: 0 auto; max-width: 580px; padding: 10px;\"> <span class=\"preheader\" style=\"color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;\">This is preheader text. Some clients will show this text as a preview.<\/span> <table class=\"main\" style=\"border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; background: #ffffff; border-radius: 3px;\"> <tr> <td class=\"wrapper\" style=\"font-family: sans-serif; font-size: 14px; vertical-align: top; box-sizing: border-box; padding: 20px;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;\"> <tr> <td style=\"font-family: sans-serif; font-size: 14px; vertical-align: top;\"> <p style=\"font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;\">Hola Edmundo,<\/p> <p style=\"font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;\">Se ha sacado un pallet de la línea de producción Stator. Para ver el status de tu línea da clic en el siguiente enlace<\/p> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"btn btn-primary\" style=\"border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; box-sizing: border-box;\"> <tbody> <tr> <td align=\"left\" style=\"font-family: sans-serif; font-size: 14px; vertical-align: top; padding-bottom: 15px;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: auto;\"> <tbody> <tr> <td style=\"font-family: sans-serif; font-size: 14px; vertical-align: top; background-color: #3498db; border-radius: 5px; text-align: center;\"> <a href=\"https:\/\/app.powerbi.com\/view?r=eyJrIjoiMzI3N2RmOWItY2IxMC00ZDMxLTk3OWMtNGMzN2Q4YWQxZWY4IiwidCI6IjBkOGQ2Yjk3LWUwNWQtNDYwYy1iNmI1LTE5YjdkMDIwZjQ3YSIsImMiOjR9\" target=\"_blank\" style=\"display: inline-block; color: #ffffff; background-color: #3498db; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; cursor: pointer; text-decoration: none; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-transform: capitalize; border-color: #3498db;\">Ir al dashboard<\/a> <\/td> <\/tr> <\/tbody> <\/table> <\/td> <\/tr> <\/tbody> <\/table> <\/td> <\/tr> <\/table> <\/td> <\/tr> <\/table> <div class=\"footer\" style=\"clear: both; Margin-top: 10px; text-align: center; width: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;\"> <tr> <td class=\"content-block\" style=\"font-family: sans-serif; vertical-align: top; padding-bottom: 10px; padding-top: 10px; font-size: 12px; color: #999999; text-align: center;\"> <span class=\"apple-link\" style=\"color: #999999; font-size: 12px; text-align: center;\">Brose Tracking System<\/span> <\/td> <\/tr> <\/table> <\/div> <\/div> <\/td> <td style=\"font-family: sans-serif; font-size: 14px; vertical-align: top;\"> <\/td> <\/tr> <\/table> <\/body> <\/html>"
                     };
                     $.ajax({
                         type: 'post',
                         url: `https://brose-node-email.herokuapp.com/mailSender/sendOneEmail`,
                         dataType: 'text',
                         contentType: 'application/json',
                         data: JSON.stringify(datosCorreo),
                         success: function (response) {
                             window.location.replace(`https://pallet-tracking-system.conveyor.cloud/index.aspx?line=1`);
                         }
                     });
                 }
             });
         });

    
    </script>
</asp:Content>