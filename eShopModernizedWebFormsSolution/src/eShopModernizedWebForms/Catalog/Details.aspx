﻿<%@ Page Title="Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="eShopModernizedWebForms.Catalog.Details" %>

<asp:Content ID="Details" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="esh-body-title">Details</h2>

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <asp:Image runat="server" CssClass="col-md-8 esh-picture" ImageUrl='<%#"/Pics/" + product.PictureFileName%>' />
            </div>
            <dl class="col-md-4 dl-horizontal">
                <dt>Name
                </dt>

                <dd>
                    <asp:Label runat="server" Text='<%#product.Name%>' />
                </dd>

                <dt>Description
                </dt>

                <dd>
                    <asp:Label runat="server" Text='<%#product.Description%>' />
                </dd>

                <dt>Brand
                </dt>

                <dd>
                    <asp:Label runat="server" Text='<%#product.CatalogBrand.Brand%>' />
                </dd>

                <dt>Type
                </dt>

                <dd>
                    <asp:Label runat="server" Text='<%#product.CatalogType.Type%>' />
                </dd>
                <dt>Price
                </dt>

                <dd>
                    <asp:Label CssClass="esh-price" runat="server" Text='<%#product.Price%>' />
                </dd>
            </dl>
            <dl class="col-md-4 dl-horizontal">
                <dt>
                    Picture name
                </dt>

                <dd>
                    <asp:Label runat="server" Text='<%#product.PictureFileName%>' />
                </dd>

                <dt>Stock
                </dt>

                <dd>
                    <asp:Label runat="server" Text='<%#product.AvailableStock%>' />
                </dd>

                <dt>Restock
                </dt>

                <dd>
                    <asp:Label runat="server" Text='<%#product.RestockThreshold%>' />
                </dd>

                <dt>Max stock
                </dt>

                <dd>
                    <asp:Label runat="server" Text='<%#product.MaxStockThreshold%>' />
                </dd>

                <dd class="esh-button-actions">
                    <a runat="server" href="~" class="btn esh-button esh-button-secondary">
                        [ Back to list ]
                    </a>
                    <a runat="server" href='<%# GetRouteUrl("EditProductRoute", new {id =product.Id}) %>' class="btn esh-button esh-button-primary">
                        [ Edit ]
                    </a>

            
                </dd>
            </dl>
        </div>
    </div>
</asp:Content>
