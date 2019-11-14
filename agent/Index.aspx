<%@ Page Title="" Language="C#" MasterPageFile="~/agent/AgentMasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication2.agent.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Get
        <small>Price</small>
      </h1>
      <ol class="breadcrumb">
        <li>
    <asp:Label ID="lbl_userSession" runat="server" Visible="false"></asp:Label></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
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
        &nbsp;   
        </div>
      </div>
            <div class="row">
        <div class="col-lg-3 col-xs-6">
          <div class="form-group">
                <label for="ddl_state">State</label>
                <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Always" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddl_state" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="state" DataValueField="state"></asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:tdsCon %>' SelectCommand="SELECT DISTINCT [state] FROM [garalex_rooms] ORDER BY [state]"></asp:SqlDataSource>
          </div>

        </div>
        <div class="col-lg-3 col-xs-6">
            <label for="ddl_place">Place</label>
          <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
              <Triggers>
                  <asp:AsyncPostBackTrigger ControlID="ddl_state" EventName="SelectedIndexChanged" />
              </Triggers>
              <ContentTemplate>
                  <asp:DropDownList ID="ddl_place" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="place" DataValueField="place"></asp:DropDownList>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:tdsCon %>' SelectCommand="SELECT DISTINCT [place] FROM [garalex_rooms] WHERE ([state] = @state) ORDER BY [place]">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="ddl_state" PropertyName="SelectedValue" Name="state"></asp:ControlParameter>
                      </SelectParameters>
                  </asp:SqlDataSource>
              </ContentTemplate>
          </asp:UpdatePanel>

        </div>
        <div class="col-lg-3 col-xs-6">
        &nbsp;   
        </div>
        <div class="col-lg-3 col-xs-6">
        &nbsp;   
        </div>
      </div>
            <div class="row">
           <div class="col-lg-3 col-xs-6">
            <div class="form-group">
                <label for="txt_CheckIn">Check In</label>
                <div class="input-group date">
                    <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                    </div>
                    <asp:TextBox ID="txt_CheckIn" type="text" CssClass="form-control pull-right datepicking" runat="server" required></asp:TextBox>
                </div>
            </div>
           </div>
           <div class="col-lg-3 col-xs-6">
            <div class="form-group">
                <label for="txt_CheckOut">CheckOut</label>
                <div class="input-group date">
                    <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                    </div>
                    <asp:TextBox ID="txt_CheckOut" type="text" CssClass="form-control pull-right datepicking" runat="server" required></asp:TextBox>
                </div>
            </div>
           </div>
          <div class="col-lg-3 col-xs-6">
        &nbsp;   
        </div>
          <div class="col-lg-3 col-xs-6">
        &nbsp;   
        </div>
      </div>
            <div class="row">
            <div class="col-lg-3 col-xs-6">
        <asp:Button ID="Button1" CssClass="btn bg-olive btn-flat" OnClick="Button1_Click" runat="server" Text="SEARCH RESULTS" />
        </div>
          <div class="col-lg-3 col-xs-6">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
            <div class="col-lg-3 col-xs-6">
        &nbsp;   
        </div>
          <div class="col-lg-3 col-xs-6">
        &nbsp;   
        </div>
            
        </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            
                <div class="row">
                <div class="col-lg-6 col-xs-6">
                     <div class="box box-primary">
                        <div class="box-header with-border">
                          <h3 class="box-title">Select A Room</h3>
                        </div>
                        <div class="box-body">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <asp:GridView ID="GridView1" CssClass="table table-condensed no-border table-hover" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" runat="server">
                                <columns><asp:boundfield datafield="hotel_id" readonly="true" Visible="false" headertext="id"/></Columns>
                                <columns><asp:boundfield datafield="hotel_name" readonly="true" headertext="Hotel"/></Columns>
                                <columns><asp:boundfield datafield="room_type"  readonly="true" headertext="Room Type"/></Columns>
                                <columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label id="lbltCR" runat="server" Text='<%# Bind("totalCost") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <div class="box-footer">
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xs-6">
                     <div class="box box-primary">
                        <div class="box-header with-border">
                          <h3 class="box-title">Select Transport</h3>
                        </div>
                        <div class="box-body">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            <asp:GridView CssClass="table table-condensed no-border table-hover" ID="GridView2" AutoGenerateColumns="false" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" runat="server">
                                <columns><asp:boundfield datafield="car_name" readonly="true" headertext="Name"/></Columns>
                                <columns><asp:boundfield datafield="car_type" readonly="true" headertext="Type"/></Columns>
                                <columns><asp:boundfield datafield="avail_date" readonly="true" headertext="Days"/></Columns>
                                <columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label id="lblPT" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <div class="box-footer">

                        </div>
                    </div>
                </div>
            </div> 
            
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <div class="row">
                <div class="col-lg-12 col-xs-12">
                    <label>Total Cost for Hotel </label> &nbsp; <asp:Label CssClass="text-bold text-center" ID="Label4" runat="server"  Text="0"></asp:Label><br />
                    <label>Total cost for Transport </label> &nbsp; <asp:Label CssClass="text-bold text-center" ID="Label5" runat="server"  Text="0"></asp:Label><br />
                    <label>Total cost for Service </label> &nbsp; <asp:Label CssClass="text-bold text-center" ID="Label6" runat="server" Text="0"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-xs-12">
                    <asp:Button ID="btn_searchAnother" runat="server" OnClick="btn_searchAnother_Click" CssClass="btn btn-flat bt-olive" Text="SEARCH ANOTHER" />
                </div>
            </div>
        </asp:Panel>
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>
