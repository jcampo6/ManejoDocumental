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
 
<body> 
 <g:layoutBody/>

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
