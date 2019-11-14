<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="agents.aspx.cs" Inherits="admin.agents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Agents
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li>
    <asp:Label ID="lbl_userSession" runat="server" Visible="false"></asp:Label></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-4 col-xs-12">
            <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Add an Agent Login</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
              <div class="box-body">
                <div class="form-group">
                    <label for="txt_first_name">First Name</label>
                    <asp:TextBox ID="txt_first_name" type="text" CssClass="form-control" runat="server" placeholder="First Name" required></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txt_last_name">Last Name</label>
                    <asp:TextBox ID="txt_last_name" type="text" CssClass="form-control" runat="server" placeholder="Last Name" required></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txt_user_name">User ID</label>
                    <asp:TextBox ID="txt_user_name" type="text" CssClass="form-control" runat="server" placeholder="User ID" required></asp:TextBox>
                </div>
                <div class="form-group">
                  <label for="txt_password">Password</label>
                    <asp:TextBox ID="txt_password" CssClass="form-control" type="password" runat="server" placeholder="Password" required></asp:TextBox>
                </div>

              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <asp:Button ID="btn_add_agent" OnClick="btn_add_agent_Click" CssClass="btn btn-primary" runat="server" Text="Add Agent" />
                        <asp:Label ID="lblStatus" runat="server" ></asp:Label>
              </div>
            
          </div>
          <!-- /.box -->
        </div>
        <div class="col-lg-8 col-xs-12">
            <div class="box">
            <div class="box-header">
              <h3 class="box-title">Agents List</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
                <asp:label ID="lbl1" runat="server"></asp:label>
              <asp:GridView DataKeyNames="agent_id" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="false"  
                  CssClass="table table-condensed no-border table-hover" ID="GridView1" runat="server" >
                  <columns><asp:boundfield datafield="agent_id" readonly="true" Visible="false" headertext="id"/></Columns>
                  <columns><asp:boundfield datafield="first_name" readonly="true" headertext="First Name"/></Columns>
                  <columns><asp:boundfield datafield="last_name" readonly="true" headertext="Last Name"/></Columns>
                  <columns><asp:boundfield datafield="user_id" readonly="true" headertext="User ID"/></Columns>
                  <Columns>
                      <asp:TemplateField>
                          <ItemTemplate>
                              <asp:LinkButton ID="delGridRow" Title="Delete" runat="server" CommandName="del" CommandArgument='<%#Eval("agent_id")%>'><i class="fa fa-trash"></i></asp:LinkButton>
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:LinkButton Title="View Password" ID="viewGridRow" runat="server" CommandName="View" CommandArgument='<%#Eval("agent_id")%>'><i class="fa fa-eye"></i></asp:LinkButton>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
                  
              </asp:GridView>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
      <!-- /.row -->
      

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

</asp:Content>
