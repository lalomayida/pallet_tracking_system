<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heroImage" Runat="Server">
    <div class="carousel-item active vh-70" style="background-image: 
                                                    linear-gradient(
                                                      rgba(0, 0, 0, 0.5),
                                                      rgba(0, 0, 0, 0.5)
                                                    ), url('img/fixed/brose-queretaro-elmarques.jpg')">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="captionHeroImage" Runat="Server">

    <h1>Strator</h1>
    <h1>Production Line</h1>
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

    <div class="container" id ="capacity">
    <div class="row">
        <div class="col-md-2">
            </div>
        <div class="col-md-8">
            <h3 class="progress-title">Line productivity</h3>
            <div class="progress purple">
                <div class="progress-bar" style="width:15%; background:#34B7F1" id="completion">
                    <div class="progress-value" id="completionValue">15%</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            </div>
    </div>
</div>


    <div class="container base-pane" id="lineInformation">
        <div class="row">
            <div class="col-md-4">
                <h2>Total of pallets:</h2> <h1 id="totalPallets" style="font-weight=normal"></h1>
            </div>
            <div class="col-md-4">
                <h2>Failure pallets:</h2> <h1 id="failurePallets" style="font-weight=normal"></h1>
            </div>
            <div class="col-md-4">
                <h2>Maintenance pallets:</h2> <h1 id="maintenancePallets" style="font-weight=normal"></h1>
            </div>
        </div>

    </div>

    <script type="text/javascript">
        $(document).ready(function () {

            $("#capacity").hide();
            $("#lineInformation").hide();
            //$("#error").hide();

            console.log("hello world");
            var lineID = getUrlParameter("line");

            $.ajax({
                type: 'get',
                url: `http://localhost:3000/pallet/lineHealth?line=${lineID}`,
                dataType: 'text',
                success: function (response) {
                    var data = JSON.parse(response);
                    if (data.status === "error") {
                        $("#spinner").hide();
                    } else {
                        var totalPallets = data.data.length;
                        var failurePallets = 0;
                        var maintenancePallets = 0;
                        var healtyPallets = 0;
                        for (var i = 0; i < totalPallets; i++) {
                            if (data.data[i].status === "ok") {
                                healtyPallets++;
                            } else if (data.data[i].status === "failure") {
                                failurePallets++;
                            } else if (data.data[i].status === "maintenance") {
                                maintenancePallets++;
                            }
                        }

                        var productionCapacity = (totalPallets - failurePallets - maintenancePallets) / totalPallets * 100;
                        if (productionCapacity >= 80) {
                            $("#completion").css("background", "#34B7F1");

                        } else {
                            $("#completion").css("background", "#D92121");
                        }
                        $("#completion").css("width", `${productionCapacity}%`);
                        $("#completionValue").text(`${productionCapacity}%`);
                        $("#totalPallets").text(totalPallets);
                        $("#failurePallets").text(failurePallets);
                        $("#maintenancePallets").text(maintenancePallets);

                        $("#capacity").show();
                        $("#spinner").hide();
                        $("#lineInformation").show();

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

    
    </script>
</asp:Content>