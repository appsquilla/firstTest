<%@ Page Title="" Language="C#" MasterPageFile="~/agent/AgentMasterPage.Master" AutoEventWireup="true" CodeBehind="quote.aspx.cs" Inherits="WebApplication2.agent.quote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <section class="content-wrapper">
        <section class="content-header"><h1>GET PRICE</h1></section>
        <!-- Main content -->
        <section class="content">
            <div class="row">&nbsp;</div>
            <asp:UpdatePanel ID="sdfa" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server">
                <div class="row">
                    <div class="col-lg-3 col-xs-6">
                      <div class="form-group">
                            <label for="txt_tourexp">Tour Expert Name</label>
                            <asp:TextBox ID="txt_tourexp" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>
                    <div class="col-lg-3 col-xs-6">
                            <label for="txt_custId">Customer ID</label>
                            <asp:TextBox ID="txt_custId" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-3 col-xs-6">
                            <label for="txt_custName">Customer Name</label>
                            <asp:TextBox ID="txt_custName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-3 col-xs-6">
                      <div class="form-group">
                            <label for="ddl_state">State</label>
                        <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Always" runat="server">
                            <ContentTemplate>
                                <asp:DropDownList ID="ddl_state" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged" CssClass="form-control"  runat="server"></asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                            
                      </div>
                    </div>
                </div>
                

            </asp:Panel>

                </ContentTemplate>
            </asp:UpdatePanel>
            
            <div class="row">
                <div class="col-lg-6 col-xs-6">
                    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel2" runat="server">
                        <div class="box">
                            <div class="box-header">
                              <h3 class="box-title">Select Place - You can select multiple</h3>
                            </div>
                            <div class="box-body no-padding">
                               <asp:GridView Width="100%" AutoGenerateColumns="false" CssClass="table table-striped no-border" ID="gvPlace" runat="server">
                                   <Columns>
                                       <asp:TemplateField>
                                           <HeaderTemplate>
                                               <asp:CheckBox ID="CheckBox1" CssClass="text-center" AutoPostBack="true" OnCheckedChanged="chckchanged" runat="server" />&nbsp;Select
                                           </HeaderTemplate>
                                           <ItemTemplate>
                                               <asp:CheckBox ID="CheckBox2" CommandName="selectPlace" CommandArgument = '<%# Eval("place") %>' runat="server" />
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                   </Columns>
                                   <Columns>
                                       <asp:TemplateField HeaderText="Places Available">
                                           <ItemTemplate>
                                               <asp:Label ID="lblPlace" runat="server" Text='<%# Eval("place") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                   </Columns>
                               </asp:GridView>
                            </div>
                            <div class="box-footer">
                                <asp:Button ID="btnSearchHotels" runat="server" OnClick="btnSearchHotels_Click" Text="Search Hotels" />
                            </div>
                        </div>
                        </asp:Panel>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddl_state" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
                </div>
            </div>

            
                <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel3" runat="server">
                            <asp:GridView Width="100%" VerticalAlign="Middle" AutoGenerateColumns="false" OnRowDataBound="gvHotels_RowDataBound" CssClass="table table-condensed no-border" ID="gvHotels" runat="server">
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID="CheckBox3" CssClass="text-center" AutoPostBack="true" OnCheckedChanged="CheckBox3_CheckedChanged" runat="server" />&nbsp;Select
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox4" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <Columns>
                                    <asp:TemplateField HeaderText="PLACES">
                                        <ItemTemplate>
                                            <asp:Label CssClass="form-control" ID="Label3" runat="server" Text='<%# Eval("place") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <Columns>
                                    <asp:TemplateField HeaderText="HOTELS">
                                        <ItemTemplate>
                                            <asp:Label CssClass="form-control" ID="Label2" runat="server" Text='<%# Eval("hotel_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <Columns>
                                    <asp:TemplateField HeaderText="Room Type">
                                        <EditItemTemplate>  
                                            <asp:TextBox ID="txt_roomType" runat="server"></asp:TextBox>  
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:DropDownList CssClass="form-control" ID="ddl_roomType" runat="server"></asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <Columns>
                                    <asp:TemplateField HeaderText="Check In">
                                        <ItemTemplate>
                                            <div class="input-group date">
                                                <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                                </div>
                                                <asp:TextBox ID="txt_start_date" ClientIDMode="Static" type="text" CssClass="form-control pull-right datepicking" runat="server"></asp:TextBox>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <Columns>
                                    <asp:TemplateField HeaderText="Check Out">
                                        <ItemTemplate>
                                                <div class="input-group date">
                                                  <div class="input-group-addon">
                                                    <i class="fa fa-calendar"></i>
                                                  </div>
                                                   <asp:TextBox ID="txt_end_date" ClientIDMode="Static" type="text" CssClass="form-control pull-right datepicking" runat="server"></asp:TextBox>
                                                </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <Columns>
                                    <asp:TemplateField HeaderText="Interval">
                                        <ItemTemplate>
                                            <asp:Label ID="lblInterval" runat="server" Text="0D / 0N"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnSearchHotels" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            
        </section>
    </section>
</asp:Content>
