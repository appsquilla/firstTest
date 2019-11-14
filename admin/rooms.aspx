<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="rooms.aspx.cs" Inherits="WebApplication2.admin.rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Rooms
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li>
    <asp:Label ID="lbl_userSession" runat="server" Visible="false"></asp:Label></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                      <h3 class="box-title">Add a Hotel</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                    <label for="txt_state">State</label>
                                    <asp:TextBox ID="txt_state" type="text" CssClass="form-control" runat="server" placeholder="State" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                    <label for="txt_place">Place</label>
                                    <asp:TextBox ID="txt_place" type="text" CssClass="form-control" runat="server" placeholder="Place" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xs-12">&nbsp;</div>
                            <div class="col-lg-3 col-xs-12">&nbsp;</div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                    <label for="txt_hotel_name">Hotel Name</label>
                                    <asp:TextBox ID="txt_hotel_name" type="text" CssClass="form-control" runat="server" placeholder="Hotel Name" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                    <label for="txt_room_type">Room Type</label>
                                    <asp:TextBox ID="txt_room_type" type="text" CssClass="form-control" runat="server" placeholder="Room Type" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xs-12">&nbsp;</div>
                            <div class="col-lg-3 col-xs-12">&nbsp;</div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                    <label for="txt_room_type">Start Date</label>
                                    <div class="input-group date">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>
                                       <asp:TextBox ID="txt_start_date" type="text" CssClass="form-control pull-right datepicking" runat="server" required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                    <label for="txt_room_type">End Date</label>
                                    <div class="input-group date">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>
                                       <asp:TextBox ID="txt_end_date" type="text" CssClass="form-control pull-right datepicking" runat="server" required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xs-12">&nbsp;</div>
                            <div class="col-lg-3 col-xs-12">&nbsp;</div>
                        </div>
                        
                    </div>
                    <div class="box-header with-border">
                      <h3 class="box-title">Enter Costs per day</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                  <label for="txt_cost_ep">for EP</label>
                                    <asp:TextBox ID="txt_cost_ep" CssClass="form-control" type="number" runat="server" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                  <label for="txt_cost_cp">for CP</label>
                                    <asp:TextBox ID="txt_cost_cp" CssClass="form-control" type="number" runat="server" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                  <label for="txt_cost_map">for MAP</label>
                                    <asp:TextBox ID="txt_cost_map" CssClass="form-control" type="number" runat="server" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-3 col-xs-12">
                                <div class="form-group">
                                  <label for="txt_cost_ap">for AP</label>
                                    <asp:TextBox ID="txt_cost_ap" CssClass="form-control" type="number" runat="server" required></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <asp:Button ID="btn_add_room" OnClick="btn_add_room_Click" CssClass="btn btn-primary" runat="server" Text="Add Room" />
                        &nbsp;&nbsp; <asp:Label ID="lblStatus" runat="server" ></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Hotel List</h3>
                    </div>
                    <div class="box-body">
                        <asp:label ID="lbl1" runat="server"></asp:label>
                <asp:GridView DataKeyNames="hotel_id" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="false"  
                  CssClass="table table-condensed no-border table-hover" ID="GridView1" runat="server" >
                  <columns><asp:boundfield datafield="hotel_id" readonly="true" Visible="false" headertext="id"/></Columns>
                  <columns><asp:boundfield datafield="state" readonly="true" headertext="State"/></Columns>
                  <columns><asp:boundfield datafield="place" readonly="true" headertext="Place"/></Columns>
                  <columns><asp:boundfield datafield="hotel_name" readonly="true" headertext="Hotel"/></Columns>
                  <columns><asp:boundfield datafield="room_type"  readonly="true" headertext="Room Type"/></Columns>
                  <columns><asp:boundfield datafield="start_date"  DataFormatString="{0:dd/MM/yyyy}" readonly="true" headertext="Start"/></Columns>
                  <columns><asp:boundfield datafield="end_date"  DataFormatString="{0:dd/MM/yyyy}" readonly="true" headertext="Ends"/></Columns>
                  <columns><asp:boundfield datafield="cost_ep" readonly="true" headertext="Cost - EP"/></Columns>
                  <columns><asp:boundfield datafield="cost_cp" readonly="true" headertext="Cost - CP"/></Columns>
                  <columns><asp:boundfield datafield="cost_map" readonly="true" headertext="Cost - MAP"/></Columns>
                  <columns><asp:boundfield datafield="cost_ap" readonly="true" headertext="Cost - AP"/></Columns>
                  <Columns>
                      <asp:TemplateField>
                          <ItemTemplate>
                              <asp:LinkButton ID="delGridRow" Title="Delete" runat="server" CommandName="del" CommandArgument='<%#Eval("hotel_id")%>'><i class="fa fa-trash"></i></asp:LinkButton>
                              
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
                  
              </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
      
      

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 

</asp:Content>
