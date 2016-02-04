<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateProject.aspx.cs" Inherits="CreateProject" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>


<html lang="en">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Neueda Project Management System</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body runat="server">
    
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Neueda</a>
                
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li class="divider"></li>
                        <li class="divider"></li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted"></span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                            <span class="sr-only"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted"></span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                            <span class="sr-only">0% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted"></span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                            <span class="sr-only">0% Complete </span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted"></span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                            <span class="sr-only">0% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li>
                            <a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- Navigation Side Bar-->
                            
                        </li>
                        <li>
                            
                            <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>

                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Flot Charts</a>
                                </li>
                                <li>
                                    <a href="morris.html">Morris.js Charts</a>
                                </li>
                            </ul>
                            
                        </li>
                        <li>
                            <a href="CreateProject.aspx"><i class="fa fa-edit fa-fw"></i> Create New Project</a>
                        </li>
                        <li>
                             <a href="EditProject.aspx"><i class="fa fa-edit fa-fw"></i> Edit Existing Project Information</a>
                        </li>
                        <li>
                             <a href="ViewAll.aspx"><i class="fa fa-list-alt fa-fw"></i> View All Project Information</a>
                        </li>
                        <li>
                            <a href="ViewDetail.aspx"><i class="fa fa-list-alt fa-fw"></i> View Detailed Project </a>
                        </li>
                         <li>
                               <a href="ForecastEstimates.aspx"><i class="fa fa-calendar fa-fw"></i> Forecast Estimates</a>
                         </li>
                          <li>
                               <a href="Actuals.aspx"><i class="fa fa-calendar fa-fw"></i> Actuals to Date</a>
                          </li>
                          <li>
                            <a href="Invoice.aspx"><i class="fa fa-credit-card fa-fw"></i> Invoicing</a>
                        </li>
                     </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <!-- Page Content -->
        
        <div id="page-wrapper">
            <form role="form" runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Enter Project Details</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="Row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            General Information
                        </div>
                        <div class="panel-body">
                            <div class="Row">
                                <div class="col-lg-12">
                                    
                                        <div class ="Row">
                                            <div class="col-md-3">
                                                <label>Project Reference</label>
                                                <br />
                                            </div>
                                            <div class ="col-md-9">
                                                <asp:TextBox CssClass="form-control pull-left" runat="server" ID="txtProjectRef"></asp:TextBox>
                                                <p class="help-block">SAGE Reference</p>
                                                <br />
                                            </div>
                                        </div>
                                <div class ="Row">
                                        <div class="col-md-3">
                                            <label>Project Name</label>
                                            <br />
                                        </div>
                                        <div class ="col-md-3">
                                            <asp:TextBox CssClass="form-control" runat="server" ID="txtProjectName"></asp:TextBox>
                                            <br />
                                        </div>
                                        <div class="col-md-3">
                                                 <label>Client</label>
                                            <br />
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox CssClass="form-control" runat="server" ID="txtClient"></asp:TextBox>
                                            <br />
                                        </div>
                                </div>
                                <div class ="Row">
                                    <div class="col-md-3">
                                        <label>Neueda Delivery Manager</label>
                                        <br />
                                    </div>
                                    <div class ="col-md-3">
                                        <asp:DropDownList CssClass="form-control" runat="server" ID="ddlDMNeueda" DataSourceID="RateCardDataSource" DataTextField="Emp_Name" DataValueField="Emp_Name"></asp:DropDownList>
                                        <br />
                                    </div>
                                    <div class ="col-md-3">
                                        <label>Client DM</label>
                                        <br />
                                    </div>
                                    <div class ="col-md-3">
                                        <asp:TextBox CssClass="form-control" runat="server" ID="txtDMClient"></asp:TextBox>
                                        <br />
                                    </div>
                                </div>
                                <div class ="Row">
                                    <div class="col-md-3">
                                        <label>Start Date</label>
                                        <br />
                                    </div>
                                    <div class ="col-md-3">
                                        <asp:TextBox CssClass="form-control" runat="server" ID="txtStartDate"></asp:TextBox>  
                                        <ajaxToolkit:MaskedEditExtender ID="txtStartDate_MaskedEditExtender" Mask="99/99/9999" runat="server" TargetControlID="txtStartDate" />
                                        <br />
                                    </div>
                                    <div class="col-md-3">
                                        <label>End Date</label>
                                        <br />
                                    </div>
                                    <div class ="col-md-3">
                                        <asp:TextBox CssClass="form-control" runat="server" ID="txtEndDate"></asp:TextBox>
                                        <ajaxToolkit:MaskedEditExtender ID="txtEndDate_MaskedEditExtender" Mask="99/99/9999" runat="server" TargetControlID="txtEndDate" />
                                        <br />
                                    </div>
                                </div>
                                <div class ="Row">
                                    <div class ="col-md-3">
                                        <label>Project Details</label>
                                        <br />
                                    </div>
                                    <div class="col-md-9">
                                        <asp:TextBox CssClass="form-control" runat="server" rows="5" TextMode="MultiLine" ID="txtProjectDetails"></asp:TextBox>
                                        <br />
                                    </div>
                                </div>
                                <div class ="Row">
                                    <div class ="col-md-3">
                                        <label>Project Code</label>
                                        <br />
                                    </div>
                                    <div class ="col-md-3">
                                        <asp:TextBox CssClass="form-control" runat="server" ID="txtProjectCode"></asp:TextBox>
                                        <br />
                                    </div>
                                </div>

                                <div class ="Row">
                                    <div class="col-md-3">
                                        <label>Project Type</label>
                                        <br />
                                    </div>
                                    <div class ="col-md-3">
                                        <asp:DropDownList CssClass="form-control" runat="server" ID="ddlProjectType">
                                            <asp:ListItem>Internal</asp:ListItem>
                                            <asp:ListItem>External</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                    </div>
                                </div>

                                        
                                        <br />
                                        
                                        
                                                <asp:Button CssClass="btn btn-primary" id="btnSubmit" text="Submit" runat="server" OnClick="btnSubmit_OnClick"></asp:Button>
                                                <asp:Button CssClass="btn btn-warning" ID="btnReset" Text="Reset" runat="server" OnClick="btnReset_OnClick"></asp:Button>
                                         
                           </div>

                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->

                  <!-- Forecasting starts here --> 
        <div class="Row">
            <div class="col-lg-8">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Resource Forecasting
                    </div>
                        <div class="panel-body">
                            <div class="dataTables_wrapper">
                                <div class ="Row">
                                    <div class =" col-lg-12">
                                        <div style ="overflow-x:auto;width:auto">
                                            <asp:GridView ID="gvDelEst" CssClass="table table-responsive table-bordered"  runat="server" AutoGenerateColumns="False" DataSourceID="ResourceForecastDataSource" AllowPaging="True" AllowSorting="True" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" DataKeyNames="Proj_Ref">
                                                <Columns>
                                                    <asp:BoundField DataField="Proj_Ref" HeaderText="Proj_Ref" SortExpression="Proj_Ref" ReadOnly="True" Visible="False" />
                                                    <asp:BoundField DataField="Emp_Name" HeaderText="Employee" SortExpression="Emp_Name" ReadOnly="True"/>
                                                    <asp:BoundField DataField="Total_Days" HeaderText="Total Days" SortExpression="Total_Days"/>
                                                    <asp:BoundField DataField="M1_Days" HeaderText="M1 Days" SortExpression="M1_Days"/>
                                                    <asp:BoundField DataField="M2_Days" HeaderText="M2 Days" SortExpression="M2_Days" />
                                                    <asp:BoundField DataField="M3_Days" HeaderText="M3 Days" SortExpression="M3_Days" />
                                                    <asp:BoundField DataField="M4_Days" HeaderText="M4 Days" SortExpression="M4_Days" />
                                                    <asp:BoundField DataField="M5_Days" HeaderText="M5 Days" SortExpression="M5_Days" />
                                                    <asp:BoundField DataField="M6_Days" HeaderText="M6 Days" SortExpression="M6_Days" />
                                                    <asp:BoundField DataField="M7_Days" HeaderText="M7 Days" SortExpression="M7_Days" />
                                                    <asp:BoundField DataField="M8_Days" HeaderText="M8 Days" SortExpression="M8_Days" />
                                                    <asp:BoundField DataField="M9_Days" HeaderText="M9 Days" SortExpression="M9_Days" />
                                                    <asp:BoundField DataField="M10_Days" HeaderText="M10 Days" SortExpression="M10_Days" />
                                                    <asp:BoundField DataField="M11_Days" HeaderText="M11 Days" SortExpression="M11_Days" />
                                                    <asp:BoundField DataField="M12_Days" HeaderText="M12 Days" SortExpression="M12_Days" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="ResourceForecastDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NeuedaProjectsConnectionString2 %>" 
                                                SelectCommand="SELECT * FROM [ForecastDelivery]">
                                            </asp:SqlDataSource>
                                        </div>
                                    </div>              
                                </div>
                                <div class="Row">
                                    <div class ="col-md-4">
                                        <asp:DropDownlist ID="ddlAddResource" CssClass="form-control" runat="server" DataSourceID="RateCardDataSource" DataTextField="Emp_Name" DataValueField="Emp_Name" ></asp:DropDownlist>
                                        <asp:SqlDataSource ID="RateCardDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NeuedaProjectsConnectionString %>" SelectCommand="SELECT [Emp_Name] FROM [RateCard]"></asp:SqlDataSource>
                                    </div>
                                    <div class ="col-md-2"> 
                                        <asp:Button  CssClass="btn btn-primary" ID="btnAddResource" runat="server" Text="Add Resource" OnClick="btnAddResource_Click" />
                                    </div>
                                   </div>
                                  </div>
                                 </div>
                                </div>
                               </div>
                              </div>
                             </div>

                    <!-- Rate Card-->
                            <div class="Row">
	                        <div class="col-lg-4">
		                        <div class ="panel panel-primary">
			                        <div class="panel-heading">
				                        Add Employees to Project
			                        </div>
			                        <div class="panel-body">
                                        <div class = "col-lg-12">
                                            <div class ="Row">
                                        <div class ="col-sm-4">
                                            <label>Reference</label>
                                            <br />
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:TextBox CssClass="form-control" runat="server" ID="txtRef_RC" ReadOnly="True"></asp:TextBox>
                                            <br />
                                        </div>
                                    </div>

                                        <div class ="Row">
                                        <div class ="col-sm-4">
                                            <label>Employee</label>
                                            <br />
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:TextBox CssClass="form-control" runat="server" ID="txtEmp_RC"></asp:TextBox>
                                            <br />
                                        </div>
                                    </div>

                                        <div class ="Row">
                                        <div class ="col-sm-4">
                                            <label>Buy</label>
                                            <br />
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:TextBox CssClass="form-control" runat="server" ID="txtBuy"></asp:TextBox>
                                            <br />
                                        </div>
                                    </div>

                                        <div class ="Row">
                                        <div class ="col-sm-4">
                                            <label>Sell</label>
                                            <br />
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:TextBox CssClass="form-control" runat="server" ID="txtSell"></asp:TextBox>
                                            <br />
                                        </div>
                                    </div>
                                              <br />
                                        
                                        
                                                    <asp:Button CssClass="btn btn-primary" id="btnSubmit_RC" text="Submit" runat="server" OnClick="btnSubmit_RC_OnClick"></asp:Button>
                                                    <asp:Button CssClass="btn btn-warning" ID="btnReset_RC" Text="Reset" runat="server" OnClick="btnReset_RC_OnClick"></asp:Button>
			                      </div>
	                            </div>
                               </div>
                              </div>
                             </div>

                <!-- /.col-lg-12 -->
                </form>
            </div>
            
            <!-- /.row -->
        </div>
    
        

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
