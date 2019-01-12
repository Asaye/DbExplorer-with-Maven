<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta viewport = "width = viewport-width" scale = "1"/>
<title> Database Explorer </title>
	
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script> 
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.11/angular.min.js"></script>    
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.11/angular-cookies.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.11/angular-route.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/1.0.19/angular-ui-router.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.11/angular-sanitize.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.11/angular-animate.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/2.5.0/ui-bootstrap-tpls.js"></script>
    <script type="text/javascript" src="javascript/custom/main.js"></script> 
    <script type="text/javascript" src="javascript/custom/login.js"></script> 
    <script type="text/javascript" src="javascript/custom/explorer.js"></script>
    <script type="text/javascript" src="javascript/custom/operations.js"></script>
    <link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/fa/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/custom/login.css" />
</head>
<body ng-app = "dbExpApp">
	  <div style = "height:100%;" ng-controller = "LogInFormController"> 
	  	   <div ng-include = "'loginBackground.dbexp'"></div>
	       <div class = "center-vertical">
				<div class = "center-horizontal">
		         	 <div style = "width:30%;z-index:2;">
		                  <div class = "panel panel-primary" style = "min-width:19em;">
		                       <div class = "panel-heading text-left" style = "background: #3f69aa;">
		                        	<strong class = "panel-title"> Database Login Form </strong>
		                       </div>
		                       <div class = "panel-body" ng-init = "status = user.get.status">
			                        <form class = "form-horizontal form">
			                              <div class = "form-group">
				                               <label class = "control-label label-left"> Database </label>
					                           <div class = "col-lg-8 col-md-8 input-right">
					                            	<div menu list = "user,vendors,dbVendor"></div>
					                           </div>
			                              </div>
			                              <div class = "form-group">
			                                   <label class = "control-label label-left"> Username </label>
			                                   <div class="col-lg-8 col-md-8 input-right">
			                                        <input login g = "user" name = "name" class = "form-control"/>
			                                   </div>
			                              </div>
			                              <div class = "form-group">
			                                   <label class = "control-label label-left"> Password </label>
			                                   <div class="col-lg-8 col-md-8 input-right">
			                                   	    <input login g = "user" name = "password"  type = "password"
			                                   	           class = "form-control"/>
			                                   </div>
			                              </div>
			                              <div ng-class = "{ hidden: !status.pending }" 
			                                   class = " hidden logging-in">
				                               <span class = "fa fa-spinner fa-pulse"></span>
				                               <span> Logging into database ... </span>
			                              </div>
			                              <div ng-class = "{ hidden:!status.error || status.success || status.pending }" 
			                                   class = "hidden color-danger"> {{user.get.status.message}} 
			                              </div>
			                        </form>
									<div class = "checkbox-cont cont-90">
										 <span login g = "user" name = "rememberMe" class = "checkbox">
											  <span ng-if = "user.get.rememberMe" class = "fa fa-check-square fa-lg checked">
										  	  </span>
										</span>
									    <span class = "checkbox-label c-2"> Remember me </span>
									
										<span ng-click = "user.settings = ''" class = "checkbox">
											  <span ng-if = "user.get.settings" class = "fa fa-check-square fa-lg checked">
										  	  </span>
										</span>
									    <span class = "checkbox-label c-2"> Login Settings </span>
									</div>
									<div>			
				                        <button ng-click = "user.login()" type = "button" 
				                        	    class = "btn btn-primary btn-main"> Login 
				                        </button>
			                    	</div>
		                       </div>
		                  </div>
		             </div>
		        </div>
	       </div>
           <div ng-if = "user.get.settings"  ng-include = "'settings.dbexp'"></div>
      </div>
</body>
</html>