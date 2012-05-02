<%@ Control Language="C#" AutoEventWireup="true" Inherits="ContactForm_WebUserControl" Codebehind="ContactFormLO.ascx.cs" %>
<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" style="display:none">
                    <h2>Question Submission</h2>
                    <p>
                        Your question has been sent successfully.
                        <br />We will answer you shortly.
                    </p>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="okButton" runat="server" Text="OK" /></td>
                        </tr>
                    </table>
                </asp:Panel>