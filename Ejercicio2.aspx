<%@ Page Language="C#" MasterPageFile="~/MPage.Master" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="AplicacionWebCapacitacion.Ejercicio2" %>

<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
        DataSourceID="SqlDataSource1" KeyFieldName="ProductID">
        <SettingsPopup>
            <FilterControl AutoUpdatePosition="False"></FilterControl>
        </SettingsPopup>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="CategoryID" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="dsCategories"
                    TextField="CategoryName"
                    ValueField="CategoryID"
                    ValueType="System.Int32">
                </PropertiesComboBox>
                <EditItemTemplate>
                    <dx:ASPxGridLookup ID="glCategory" runat="server" AutoGenerateColumns="False"
                        DataSourceID="dsCategories" KeyFieldName="CategoryID"
                        TextFormatString="{1}" Value='<%# Bind("CategoryID") %>' Width="260px">
                        <GridViewProperties>
                            <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True"
                                AllowSelectSingleRowOnly="True" />
                        </GridViewProperties>
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True"
                                Visible="False" VisibleIndex="0">
                                <EditFormSettings Visible="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:ASPxGridLookup>
                </EditItemTemplate>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitsOrder" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource> 
    <asp:SqlDataSource ID="dsCategories" runat="server"></asp:SqlDataSource>
</asp:Content>