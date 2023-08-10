<%@ Page Title="" Language="C#" MasterPageFile="~/master01.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />

            <div class="form-group">
                <asp:Label runat="server" Text="Product name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtproducename" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>
            <div class="form-group">
                <asp:Label runat="server" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtprice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="form-group">
                <asp:Label runat="server" Text="Selling price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="sellprice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>
                    <div class="form-group">
            <asp:Label runat="server" Text="Brand"></asp:Label> 
            <div class="col-md-3">
                <asp:DropDownList runat="server"></asp:DropDownList>
            </div>

    </div>



        </div>
</asp:Content>

