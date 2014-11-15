<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CRM CUC</title>

    <!-- Bootstrap Core CSS -->
     <link href="${resource(dir:'sbadmin2/css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${resource(dir:'sbadmin2/css/plugins/metisMenu', file:'metisMenu.min.css')}" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="${resource(dir:'sbadmin2/css/plugins',file:'timeline.css')}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${resource(dir:'sbadmin2/css', file:'sb-admin-2.css')}" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${resource(dir:'sbadmin2/css/plugins', file:'morris.css')}" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${resource(dir:'sbadmin2/font-awesome-4.1.0/css', file:'font-awesome.min.css')}" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <g:javascript src="jquery/jquery-1.11.0.js" /> 
    
    <g:layoutHead />
    <r:layoutResources />
</head>
  <g:set var="seguridadService" bean="seguridadService"/>
<body>
 
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
                <a class="navbar-brand" href="index.html">CRM CUC</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                     
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                       
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> Mi Perfil</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Config</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="/crmcuc/login/cerrarSesion"><i class="fa fa-sign-out fa-fw"></i> Salir</a>
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
                            <!-- /input-group -->
                        </li>
                        <%
                            def xmenu=seguridadService.getMenu(session["idUsuario"]) 
                         %>
                         <li>
                            <a class="active" href="index.html"><i class="glyphicon glyphicon-home"></i> Inicio</a>
                        </li>
                          <g:each in="${xmenu}" status="i" var="menu">
                              <li>   <a class="active" href="${menu[1]}"><i class="${menu[2]}"></i> ${menu[0]}</a>
                             </li>
                          </g:each>
                       
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            
            <!-- /.row -->
            <div class="row">
               <g:layoutBody/>
            </div>        
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="${resource(dir:'sbadmin2/js',file:'jquery-1.11.0.js')}"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${resource(dir:'sbadmin2/js',file:'bootstrap.min.js')}"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${resource(dir:'sbadmin2/js/plugins/metisMenu',file:'metisMenu.min.js')}"></script>

    <!-- Morris Charts JavaScript -->
    <script src="${resource(dir:'sbadmin2/js/plugins/morris',file:'raphael.min.js')}"></script>
    <script src="${resource(dir:'sbadmin2/js/plugins/morris',file:'morris.min.js')}"></script>
    <script src="${resource(dir:'sbadmin2/js/plugins/morris',file:'morris-data.js')}"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${resource(dir:'sbadmin2/js',file:'sb-admin-2.js')}"></script>
    <r:layoutResources />
</body>

</html>
