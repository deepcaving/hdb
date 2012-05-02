<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SectionMap.ascx.cs" Inherits="HDBiking.UserControls.NewPageTemplate.SectionMap" %>

<asp:Button ID="btnShowPopup" runat="server" Style="display: none" />

        <ajaxToolkit:ModalPopupExtender ID="mpeMap" runat="server" 
            TargetControlID="btnShowPopup" PopupControlID="Panel1" BackgroundCssClass="modalBackground" 
            DropShadow="true" >
        </ajaxToolkit:ModalPopupExtender>
        
<asp:Panel runat="server" ID="Panel1" CssClass="modalPopup" DefaultButton="btnAdd" Width="800">
    <div class="contactInfo">
        <fieldset class="register" style="width: 700px;">
        <legend>Choose track image</legend>
         <h3>Please enter only a link to a <asp:HyperLink ID="hlkGpsIes" runat="server" NavigateUrl="http://www.gpsies.com/">GPSIes</asp:HyperLink>&nbsp;map</h3>
            &nbsp;<table>
                <tr>
                    <td><asp:TextBox ID="txtMapLink" runat="server" Height="24px" Width="482px" 
                ontextchanged="txtMapLink_TextChanged"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" Text="OK" 
                              onclick="btnOk_Click" UseSubmitBehavior="False"/>&nbsp;
                              <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" 
                Text="Back" /></td>
                    <td></td>
                </tr>
                <tr><td><asp:Label ID="lblError" runat="server" Text="The url is invalid" 
                ForeColor="red" Visible="False" style="font-weight: 700"></asp:Label></td></tr>
                <tr>
                    <td>
                        <hr />
                            <h3>Guidelines:</h3>
                            <p>
                                Example: http://www.gpsies.com/map.do?fileId=otwurqlfoitjalmg
                            </p>
                            <p>
                                Or: http://www.gpsies.com/map.do;jsessionid=4714E233A40BAC19C3391AAF16A4B4AE?fileId=rtjyplvwhphbvpno
                            </p>
                            <p>It is better if you register to GPSIes in order to be able to manage your maps there.</p>
                    </td>
                </tr>
                </table>
        </fieldset>
    </div>
</asp:Panel>