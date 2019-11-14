<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication2.index" %>

<!DOCTYPE html>
<html>
<head runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Garalex Solutions</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page agent-login-box-body">
    <form id="form_agent_login" runat="server">
<div class="row" style="margin-top:7%">
    <div class="col-lg-6">
        <div class="login-box">
 
  <div class="login-box-body">
    <p class="login-box-msg">Agent Login</p>

    
      <div class="form-group has-feedback">
        <asp:TextBox ID="txt_agent_id" runat="server" type="text" CssClass="form-control" placeholder="User Name" ></asp:TextBox>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="txt_agent_pwd" runat="server" type="password" CssClass="form-control" placeholder="Password" ></asp:TextBox>
        
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
            <asp:Button ID="btn_agent_login" OnClick="btn_agent_login_Click" CssClass="btn btn-primary btn-block btn-flat" runat="server" Text="Agent Login" />
        </div>
        <!-- /.col -->
      </div>
    

    

    

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
    </div>
    <div class="col-lg-6">
        <div class="login-box">
 
  <div class="login-box-body">
    <p class="login-box-msg">Admin Login</p>

    
      <div class="form-group has-feedback">
        <asp:TextBox ID="txt_admin_id" runat="server" type="text" CssClass="form-control" placeholder="User Name" ></asp:TextBox>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <asp:TextBox ID="txt_admin_pwd" runat="server" type="password" CssClass="form-control" placeholder="Password" ></asp:TextBox>
       
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <asp:Button ID="btn_admin_login" OnClick="btn_admin_login_Click" CssClass="btn btn-primary btn-block btn-flat" runat="server" Text="Admin Login" />
        </div>
        <!-- /.col -->
      </div>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
    </div>
</div>

</form>
<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>

</body>
</html>