<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pallet-information-module.aspx.cs" Inherits="pallet_information_module" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heroImage" Runat="Server">
    <div class="carousel-item active h-90" style="background-image: url('img/fixed/brose-production-line.jpg')">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="captionHeroImage" Runat="Server">
    <h1>Información<br>
        del pallet</h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sectionContent" Runat="Server">
    <div class="container base-pane">
        <div class="col-md-5 search-box">
            <form class="form-inline md-form form-sm active-cyan-2 mt-2">
                <input type=text placeholder="Numero de pallet" class=qrcode-text>
                <label class=qrcode-text-btn><input type=file accept="image/*" capture=environment onchange="openQRCamera(this);" tabindex=-1></label>
            </form>
        </div>
        
        <div class="row">
            <div class="col-md-6 img-pallet">
                <img src="img/pallets/pallet-bosch.jpg" alt="">
            </div>
            <div class="col-md-6 information-listing">
                <p>Pallet P09S452</p>
                <ul>
                    <li><span> Numero de serie </span>: P09S452</li>
                    <li><span> Linea de Ensamblaje </span>: Stator</li>
                    <li><span> Edad </span>: 2 Yrs</li>
                    <li><span> Ultimo mantenimiento </span>: November 27, 2019</li>
                    <li><span> Proximo Mantenimiento </span>: November 27, 2019</li>
                </ul>
            </div>
        </div>

    </div>

</asp:Content>