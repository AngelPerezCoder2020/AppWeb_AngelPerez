<%@ Page Language="C#" MasterPageFile="~/MPage.Master" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="AplicacionWebCapacitacion.Ejercicio1" %>
<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" 
        AutoGenerateColumns="False" KeyFieldName="CategoryID" DataSourceID="SqlDataSource1">
<SettingsPopup>
<FilterControl AutoUpdatePosition="False"></FilterControl>
</SettingsPopup>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server">
    </asp:SqlDataSource>
</asp:Content>