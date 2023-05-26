<%@ Page Title="" Language="C#" MasterPageFile="~/MPage.Master" AutoEventWireup="true" CodeBehind="Imagenes.aspx.cs" Inherits="AplicacionWebCapacitacion.Imagenes" %>
<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:aspxgridview id="GridPrincipal"
        runat="server"
        autogeneratecolumns="False"
        datasourceid="SqlDataSource1"
        keyfieldname="EmployeeID">
        <settingspopup>
            <filtercontrol autoupdateposition="False"></filtercontrol>
        </settingspopup>
        <columns>
            <dx:gridviewcommandcolumn showdeletebutton="True" showeditbutton="True" shownewbuttoninheader="True" visibleindex="0">
            </dx:gridviewcommandcolumn>
            <dx:gridviewdatatextcolumn fieldname="EmployeeID" readonly="True" visibleindex="1">
                <editformsettings visible="False" />
            </dx:gridviewdatatextcolumn>
            <dx:gridviewdatabinaryimagecolumn fieldname="Photo" visibleindex="7">
                <propertiesbinaryimage imageheight="170px" imagewidth="160px">
                    <editingsettings enabled="true" uploadsettings-uploadvalidationsettings-maxfilesize="4194304">
                        <uploadsettings>
                            <uploadvalidationsettings maxfilesize="4194304"></uploadvalidationsettings>
                        </uploadsettings>
                    </editingsettings>
                </propertiesbinaryimage>
            </dx:gridviewdatabinaryimagecolumn>
            <dx:gridviewdatatextcolumn fieldname="Name" visibleindex="2">
            </dx:gridviewdatatextcolumn>
            <dx:gridviewdatatextcolumn fieldname="Position" visibleindex="3">
            </dx:gridviewdatatextcolumn>
            <dx:gridviewdatatextcolumn fieldname="HomePhone" visibleindex="4">
            </dx:gridviewdatatextcolumn>
            <dx:gridviewdatadatecolumn fieldname="HireDate" visibleindex="5">
            </dx:gridviewdatadatecolumn>
            <dx:gridviewdatadatecolumn fieldname="BirthDay" visibleindex="6">
            </dx:gridviewdatadatecolumn>
        </columns>
        <settingspager pagesize="3" />
        <settingsediting useformlayout="True" mode="EditForm" editformcolumncount="3" />
        <editformlayoutproperties colcount="3">
            <items>
                <dx:gridviewcolumnlayoutitem columnname="Photo" rowspan="4" showcaption="False" helptext="You can upload JPG, GIF or PNG file. Maximum fils size is 4MB." width="180px" />
                <dx:gridviewcolumnlayoutitem columnname="Name" />
                <dx:gridviewcolumnlayoutitem columnname="Position" />
                <dx:gridviewcolumnlayoutitem columnname="HomePhone" />
                <dx:gridviewcolumnlayoutitem columnname="HireDate" />
                <dx:gridviewcolumnlayoutitem columnname="BirthDay" />
                <dx:emptylayoutitem />
                <dx:editmodecommandlayoutitem showcancelbutton="true" showupdatebutton="true" horizontalalign="Right" />
            </items>
        </editformlayoutproperties>
    </dx:aspxgridview>
    <dx:aspxuploadcontrol id="ASPxUploadControl1" runat="server" uploadmode="Auto" width="280px" visible="False">
    </dx:aspxuploadcontrol>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>