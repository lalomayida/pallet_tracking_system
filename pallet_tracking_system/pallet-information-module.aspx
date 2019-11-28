<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pallet-information-module.aspx.cs" Inherits="pallet_information_module" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heroImage" Runat="Server">
    <div class="carousel-item active h-60" style="background-image: url('img/fixed/brose-production-line.jpg')">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="captionHeroImage" Runat="Server">
    <h1>Información<br>
        del pallet</h1>
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

    <div class="container base-pane" id="error">
        <br />
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-4">
                <div>
                    <h2>
                        There was an error, try scanning the pallet QR again
                    </h2>
                </div>
            </div>
            <div class="col-md-4">
                
            </div>
        </div>
    </div>

    <div class="container base-pane" id="palletInformation">
        <div class="row">
            <div class="col-md-6 img-pallet">
                <img src="img/pallets/pallet-bosch.jpg" alt="">
            </div>
            <div class="col-md-6 information-listing">
                <p id="palletName">Pallet</p>
                <ul>
                    <li><span> Numero de serie </span>: <span id="serialNumber" style="font-weight=normal"></span></li>
                    <li><span> Linea de Ensamblaje </span>: <span id="line" style="font-weight=normal"></span></li>
                    <li><span> Edad </span>:<span id="age" style="font-weight=normal"></span></li>
                    <li><span> Ultimo mantenimiento </span>: <span id="lastMaintenance" style="font-weight=normal"></span> </li>
                    <li><span> Proximo Mantenimiento </span>: <span id="nextMaintenance" style="font-weight=normal"></span> </li>
                </ul>
            </div>
        </div>

    </div>

    <br />


    <div class="container base-pane" id="twoButtons">
        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-4">
                <button type="button" class="btn btn-dark failure">
                    Report a failure
                </button>
            </div>
            <div class="col-md-5">
                <button type="button" class="btn btn-dark maintenance">
                    Perform a maintenance
                </button>
            </div>
            <div class="col-md-2">
                <button type="button" class="btn btn-dark cancel">
                    Cancel
                </button>
            </div>
        </div>

    </div>

    <div class="container base-pane" id="returnPallet">
        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-8">
                <button type="button" class="btn btn-dark return">
                    Return pallet to line
                </button>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-dark cancel">
                    Cancel
                </button>
            </div>
        </div>

    </div>
    
    <script type="text/javascript">
        $(document).ready(function () {

            $("#palletInformation").hide();
            $("#error").hide();
            $("#twoButtons").hide();
            $("#returnPallet").hide();

            console.log("hello world");
            var palletID = getUrlParameter("pallet");
            $.ajax({
                type: 'get',
                url: `http://localhost:3000/pallet?pallet=${palletID}`,
                dataType: 'text',
                success: function (response) {
                    var data = JSON.parse(response);
                    console.log(data);
                    if (data.status === "error") {
                        $("#spinner").hide();
                        $("#error").show();
                    } else {
                        $("#palletName").text(`Pallet ${data.data.serial_number}`);
                        $("#serialNumber").text(data.data.serial_number);
                        $("#line").text(data.data.line);
                        $("#age").text(data.data.age);
                        $("#lastMaintenance").text(data.data.last_maintenance.split("T")[0]);
                        $("#nextMaintenance").text(data.data.next_maintenance.split("T")[0]);
                        $("#spinner").hide();
                        $("#palletInformation").show();
                        if (data.data.status === "n") {
                            $("#twoButtons").show();
                        } else {
                            $("#returnPallet").show();
                        }

                    }


                }
            });

        });

        function getUrlParameter(name) {
            name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
            var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
            var results = regex.exec(location.search);
            return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
        };

        $(".failure").click(function () {
            console.log("falla");
            window.location.replace(`http://localhost:56041/failure-report-module.aspx?pallet=${getUrlParameter("pallet")}`);
        });

        $(".maintenance").click(function () {
            console.log("mantenimiento");
            window.location.replace(`http://localhost:56041/preventive-maintenance-module.aspx?pallet=${getUrlParameter("pallet")}`);
        });

        $(".cancel").click(function () {
            console.log("cancelar");
            window.location.replace("http://localhost:56041/index.aspx");
        });

        $(".return").click(function () {
            console.log("clic");
            var palletID = getUrlParameter("pallet");
            $("#palletInformation").hide();
            $("#error").hide();
            $("#twoButtons").hide();
            $("#returnPallet").hide();
            $("#spinner").show();
            $.ajax({
                type: 'get',
                url: `http://localhost:3000/pallet?pallet=${palletID}`,
                dataType: 'text',
                success: function (response) {
                    var data = JSON.parse(response);
                    console.log(data);
                    
                    if (data.data.status === "f") {
                        console.log("falla");
                        
                            $.ajax({
                                type: 'post',
                                url: `http://localhost:3000/failure/returnPallet?pallet=${palletID}`,
                                dataType: 'text',
                                success: function (response) {
                                    window.location.replace(`http://localhost:56041/index.aspx?line=1`);
                                }
                            });
                        } else {
                            /*$.ajax({
                                type: 'get',
                                url: `http://localhost:3000/pallet?pallet=${palletID}`,
                                dataType: 'text',
                                success: function (response) {

                                }
                            });*/
                        }

                }
            });
        });
    
    </script>

</asp:Content>