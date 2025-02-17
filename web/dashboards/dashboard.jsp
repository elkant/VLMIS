﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VLMIS Dashboards</title> 
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css"> 
        <link href="../css/bootstrap-datepicker.min.css" rel="stylesheet">
             <link rel="stylesheet" href="../css/select2.min.css">
        
          <link rel="shortcut icon" href="../images/vl.png">
              
              
              
              <style type="text/css">
                  
                  
.modal {
    padding-top: 180px;
            display: none;
            position: fixed; /* Stay in place */
            top: 0;
            left: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            background-color: rgba(0, 0, 0, 0.8); /* Black background with opacity */
           /**z-index: 9999;  Ensure it's on top */
        }

        /* Modal content */
        .modal-content {
            position: relative;
            margin: auto;
            top: 50%;
            transform: translateY(-50%);
            width: 90%;
            max-width: 600px;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
                  
                  </style>
              
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle waves-effect waves-dark" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand waves-green waves-green" href="../index.jsp">
                    <i class="large material-icons">donut_large</i> <strong>VLMIS</strong></a>
				
		<div id="sideNav" href="" ><i class="material-icons dp48">toc</i></div>
                
                
                                        
                                  
                
            </div>

            <ul class="nav navbar-top-links navbar-right"> 
	</ul>
        </nav>
		<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content">
<li><a href="#"><i class="fa fa-user fa-fw"></i> My Profile</a>
</li>
<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
</li> 
<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
</li>
</ul>
<ul id="dropdown2" class="dropdown-content w250">
  <li>
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 min</span>
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
<ul id="dropdown3" class="dropdown-content dropdown-tasks w250">
<li>
		<a href="#">
			<div>
				<p>
					<strong>Task 1</strong>
					<span class="pull-right text-muted">60% Complete</span>
				</p>
				<div class="progress progress-striped active">
					<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
						<span class="sr-only">60% Complete (success)</span>
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
					<span class="pull-right text-muted">28% Complete</span>
				</p>
				<div class="progress progress-striped active">
					<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
						<span class="sr-only">28% Complete</span>
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
					<span class="pull-right text-muted">60% Complete</span>
				</p>
				<div class="progress progress-striped active">
					<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
						<span class="sr-only">60% Complete (warning)</span>
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
					<span class="pull-right text-muted">85% Complete</span>
				</p>
				<div class="progress progress-striped active">
					<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
						<span class="sr-only">85% Complete (danger)</span>
					</div>
				</div>
			</div>
		</a>
	</li>
	<li class="divider"></li>
	<li>
</ul>   
 
	   <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a class="active-menu waves-effect waves-dark" href="index.html"><i class="fa fa-dashboard"></i> Dashboard</a>
                    </li>
                   
		    <li>
                        <a href="../index.jsp" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> Data entry</a>
                    </li>
<!--                    
                    <li>
                        <a href="tab-panel.html" class="waves-effect waves-dark"><i class="fa fa-qrcode"></i> Tabs & Panels</a>
                    </li>
                    
                    <li>
                        <a href="table.html" class="waves-effect waves-dark"><i class="fa fa-table"></i> Responsive Tables</a>
                    </li>-->
                  
                   
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
      
		<div id="page-wrapper">
		  <div class="header"> 
                       
					
									
		</div>
            <div id="page-inner">
                
                <div class="row" style="padding-top: 45px;">
                
                    <div class='form-group col-md-2'>
                    <select  name="rpt_county" id="rpt_county"  onchange="loadsubcounty();" class="form-control">
                                            <option value="">All Counties</option>
                                             <option value="Baringo">Baringo</option>
                                             <option value="Kajiado">Kajiado</option>
                                             <option value="Laikipia">Laikipia</option>
                                             <option value="Nakuru">Nakuru</option>
                                                                                     
                                             <option value="Samburu">Samburu</option>                                           
                                                                                        
                                           
                                        </select>
                  </div>
                    
                    <div class="form-group col-md-2" >
                                    
                                   
                                        <select onchange="ldfacility();" name="rpt_subcounty" id="rpt_subcounty"  class="form-control">
                                            <option value="">Select Subcounty</option>
                                                                                       
                                           
                                        </select>
                                  
                                </div>
                    
                    <div class="form-group col-md-3" >
                                   
                                   
                                        <select   name="rpt_facility" id="rpt_facility"  class="form-control">
                                            <option value=''>Select facility</option>
                                             
                                            
                                           
                                        </select>
                                   
                    </div>
                     <div class="form-group col-md-2">
                                  
                                    
                                       <input type="text"  name ="startdaterpt" id="startdaterpt" value="2020-10-01"  class="form-control dates" readonly placeholder="Start date">
                                    
                                </div> 
                    
                    
                  <div class="form-group col-md-2">
                                    
                                       <input type="text"  name ="enddaterpt" id="enddaterpt" value="2020-11-30"  class="form-control dates" readonly placeholder="enddate">
                                   
                                </div> 
                    
                      <div class="form-group col-md-1">
                                    
                          <a type="text" onclick="refreshFineAge();loadsummary();"   id="filterslides"  class="form-control btn btn-success" > <i class="glyphicon glyphicon-adjust"></i> Filter</a>
                                   
                                </div> 
                    
                    
                    
              </div>

			<div class="dashboard-cards"> 
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4">
					
						<div class="card horizontal cardIcon waves-effect waves-dark">
						<div class="card-image red">
						<i class="material-icons dp48">groups</i>
						</div>
						<div class="card-stacked red">
						<div class="card-content">
						<h3 id="allpatients">loading..</h3> 
						</div>
						<div class="card-action">
						<strong>All Patients</strong>
						</div>
						</div>
						</div>
	 
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4">
					
						<div class="card horizontal cardIcon waves-effect waves-dark">
						<div class="card-image orange">
						<i class="material-icons dp48">local_hospital</i>
						</div>
						<div class="card-stacked orange">
						<div class="card-content">
						<h3 id="tx_curr">loading..</h3> 
						</div>
						<div class="card-action">
						<strong>Current On ART</strong>
						</div>
						</div>
						</div> 
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4">
					
							<div class="card horizontal cardIcon waves-effect waves-dark">
						<div class="card-image blue">
						<i class="material-icons dp48">equalizer</i>
						</div>
						<div class="card-stacked blue">
						<div class="card-content">
						<h3 id="vldone">loading..</h3> 
						</div>
						<div class="card-action">
						<strong>VL Done</strong>
						</div>
						</div>
						</div> 
						 
                    </div>
                   
                    
                    
                    
                </div>
                           <div class="row">  
                             <div class="col-xs-12 col-sm-6 col-md-3">
					
					<div class="card horizontal cardIcon waves-effect waves-dark">
						<div class="card-image green">
						<i class="material-icons dp48">done_all</i>
						</div>
						<div class="card-stacked green">
						<div class="card-content">
						<h3 id="vl_suppressed">loading..</h3> 
						</div>
						<div class="card-action">
						<strong>VL Suppressed</strong>
						</div>
						</div>
						</div> 
						 
                    </div>
                            
                           
                                
                             <div class="col-xs-12 col-sm-6 col-md-3">
					
					       <div class="card horizontal cardIcon waves-effect waves-dark">
						<div class="card-image pink">
						<i class="material-icons dp48">fiber_new</i>
						</div>
						<div class="card-stacked pink">
						<div class="card-content">
						<h3 id="tx_new">loading..</h3> 
						</div>
						<div class="card-action">
						<strong>New on ART</strong>
						</div>
						</div>
						</div> 
						 
                    </div>
                               
                                <div class="col-xs-12 col-sm-6 col-md-3">
					
					<div class="card horizontal cardIcon waves-effect waves-dark">
						<div class="card-image purple">
						<i class="material-icons dp48">outlined_flag</i>
						</div>
						<div class="card-stacked purple">
						<div class="card-content">
						<h3 id="startedipt">loading..</h3> 
						</div>
						<div class="card-action">
						<strong>Started IPT</strong>
						</div>
						</div>
						</div> 
						 
                                 </div>
                               
                               
                               
                               <div class="col-xs-12 col-sm-6 col-md-3">
					
					<div class="card horizontal cardIcon waves-effect waves-dark">
						<div class="card-image grey">
						<i class="material-icons dp48">how_to_reg</i>
						</div>
						<div class="card-stacked grey">
						<div class="card-content">
						<h3 id="completedipt">loading..</h3> 
						</div>
						<div class="card-action">
						<strong>Completed IPT</strong>
						</div>
						</div>
						</div> 
						 
                                 </div>
                               
                               
                            
                            </div>
                            
			   </div>
				<!-- /. ROW  --> 
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-7"> 
					<div class="cirStats">
						  	<div class="row">
								<div class="col-xs-12 col-sm-6 col-md-6"> 
										<div class="card-panel text-center">
											<h4>% VL Uptake</h4>
                                                                                        <div id="vlupt_div">
											
                                                                                            </div>
										</div>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6"> 
										<div class="card-panel text-center">
											<h4>% VL Sup From VL Done</h4>
                                                                                        <div id="vlsup_div">
											
                                                                                            </div>
										</div>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6"> 
										<div class="card-panel text-center">
											<h4>% LDL From VL Done</h4>
											<div id="ldl_div">
											</div> 
										</div>
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6"> 
										<div class="card-panel text-center">
											<h4>% TB Screening</h4>
											<div id="tbs_div">
											</div>
										</div>
								</div>  
							</div>
						</div>							
						</div><!--/.row-->
						<div class="col-xs-12 col-sm-12 col-md-5"> 
						     <div class="row">
									<div class="col-xs-12"> 
									<div class="card">
										<div class="card-image donutpad">
										  <div id="morris-donut-chart"></div>
										</div> 
										<div class="card-action">
										  <b>Viral Load Done by PMTCT Status</b>
										</div>
									</div>	
								</div>
							 </div>
						</div><!--/.row-->
					</div>
					
				<div class="row">
<!--				<div class="col-md-5"> 
						<div class="card">
						<div class="card-image">
						 <div id="morris-line-chart"></div>
						</div> 
						<div class="card-action">
						  <b>Line Chart</b>
						</div>
						</div>
		  
					</div>		-->
					
						<div class="col-md-12"> 
					<div class="card">
					<div class="card-image">
					  <div id="morris-bar-chart"></div>
					</div> 
					<div class="card-action">
					  <h5 style="text-align:center ;"><b>Current On ART By Age</b></h5>
					</div>
					</div>					
					</div>
					
				</div> 
			 
				
				
<!--                <div class="row">
                    <div class="col-xs-12">
						<div class="card">
					<div class="card-image">
					  <div id="morris-area-chart"></div>
					</div> 
					<div class="card-action">
					  <b>Area Chart</b>
					</div>
					</div>	 
                    </div> 

                </div>-->
				
                                
                                <div class="row">
				<div class="col-md-12">
				
					</div>		
				</div> 	



	<%

String pw="";

if(request.getParameter("p")!=null)
{
pw=request.getParameter("p");
}

%>


<div class="modal" id="accesscodemodal" onclose="isloggedin();">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" >
                <button type="button" id="savecodebtn" onclick="isloggedin();" class="close" data-dismiss="modal" aria-hidden="true">.</button>
                <h4 class="modal-title">Account Details</h4>
                <label style="color:red;" id="useraccountvalidation"></label>
            </div>
            <div class="modal-body">
                <form action="#" class="userform" method="post">
                 <div class="control-group">
                                    <label><font color="red"><b>*</b></font>  Enter System access code</label>
                                    <div class="controls">
                                        <input value="<%=pw%>" type="password" size="14" placeholder=""   required name="accesscode" id="accesscode" class="form-control" >
                                    </div>
                                </div> 
                    
                       
                    
                                <div class="control-group">
                                    <label></label>
                                    <div class="controls">
                                        <label id="sbmtac" onclick=" updateaccount();"    style="margin-left: 50%;"  class="btn-lg btn-success active">
                                            Login
                                        </label>
                                    </div>
                                </div>  
                                 <hr/>
                                 <br/>
                                    <div class="control-group">
                                      <label> Not Sure of the access code? Please <a style="text-align:center;" href="https://usaidtujengejamii.org:8443/Cohorts/index.jsp">click here </a> to open the htsrri app using your clinical imis account          </label>                                
                                    </div>
                                    
                                    
                    
                </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">.</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>



                <!-- /. ROW  -->

	   
				
				
				
<!--                <div class="row">
                    <div class="col-md-4 col-sm-12 col-xs-12">
						<div class="card"><div class="card-action">
					  <b>Tasks Panel</b>
					</div>
					<div class="card-image">
					  <div class="collection">
						  <a href="#!" class="collection-item">Red<span class="new badge red" data-badge-caption="red">4</span></a>
						  <a href="#!" class="collection-item">Blue<span class="new badge blue" data-badge-caption="blue">4</span></a>
						  <a href="#!" class="collection-item"><span class="badge">1</span>Alan</a>
							<a href="#!" class="collection-item"><span class="new badge">4</span>Alan</a>
							<a href="#!" class="collection-item">Alan<span class="new badge blue" data-badge-caption="blue">4</span></a>
							<a href="#!" class="collection-item"><span class="badge">14</span>Alan</a>
							   <a href="#!" class="collection-item">Custom Badge Captions<span class="new badge" data-badge-caption="custom caption">4</span></a>
							<a href="#!" class="collection-item">Custom Badge Captions<span class="badge" data-badge-caption="custom caption">4</span></a>
						</div>
					</div> 
					
					</div>	  

                    </div>
                    <div class="col-md-8 col-sm-12 col-xs-12">
	<div class="card">
	<div class="card-action">
					  <b>User List</b>
					</div>
					<div class="card-image">
					  <ul class="collection">
    <li class="collection-item avatar">
      <i class="material-icons circle green">track_changes</i>
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
    <li class="collection-item avatar">
      <i class="material-icons circle">folder</i>
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
    <li class="collection-item avatar">
      <i class="material-icons circle green">track_changes</i>
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
    <li class="collection-item avatar">
      <i class="material-icons circle red">play_arrow</i>
      <span class="title">Title</span>
      <p>First Line <br>
         Second Line
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
  </ul>
					 </div>  
					</div>	 
					
                       

                    </div>
                </div>-->
                <!-- /. ROW  -->
			   <div class="fixed-action-btn horizontal click-to-toggle">
    <a class="btn-floating btn-large red">
      <i class="material-icons">menu</i>
    </a>
    <ul>
<!--      <li><a class="btn-floating red"><i class="material-icons">track_changes</i></a></li>
      <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
      <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>-->
      <li><a class="btn-floating blue" href="../index.jsp"><i class="material-icons">library_add</i></a></li>
    </ul>
  </div>
		
				<footer><p>USAID Tujenge Jamii | USAID </p>
				 <a  title="Add Widget" data-toggle="modal"  id='loginbtn' href="#accesscodemodal">.</a>		
	
        
				</footer>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
	
	<!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/materialize/js/materialize.min.js"></script>
	
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
	
	
	
	 <script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>
	
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script> 
    

    
 
    <script>
        $(document).ready(function(){
    
    $("#sideNav").click();
    
   
   loadsummary();
   
   refreshFineAge();
   
       
       
       
     $('.dates').datepicker({
                             todayHighlight: true, clearBtn: true, autoclose: true,format: "yyyy-mm-dd"
     });
       
    });    
    
    
    
    
    
     function loadsummary(){
         
          $("#filterslides").hide();
         
    var exelstart=$("#startdaterpt").val();
    var exelend=$("#enddaterpt").val();
    var countyrpt=$("#rpt_county").val();
    var rptsubcounty=$("#rpt_subcounty").val();   
    var rptfacil=$("#rpt_facility").val();   
        if (exelstart==='')
     {
         
     alert('Select report begining date');
   $("#startdaterpt").focus();    
     }    
   //end date
      else if (exelend==='')
     {
         
     alert('Select report ending date');
   $("#enddaterpt").focus();    
     } 
     
      else  if(Date.parse(exelstart) > Date.parse(exelend)){
                    alert(" Report Start date cannot be greater than end date.");   
                    $("#enddaterpt").focus();  
                }
                else {
         
    var rn=Math.random();
    
     $.ajax({
                    url:'../getTotalSummaries?cd=909090&rn='+rn,                            
                    type:'get',  
                    dataType: 'json',  
                    
                    data:{county:countyrpt,
                          subcounty:rptsubcounty,
                          mflcode:rptfacil,
                          startdate:exelstart,
                          enddate:exelend },
                    success: function(data) 
                    {
                         $("#filterslides").show();
//                     alert(data[0].All); 
                     
                     $("#allpatients").html(data[0]['Total Patients Entered']);
                     $("#tx_curr").html(data[0]['Current On ART VL Tool']);
                     $("#vldone").html(data[0]['VL Done in Last 12 Months']);
                     $("#vl_suppressed").html(data[0]['VL Supressed']);
                     $("#tx_new").html(data[0]['New On ART']);
                     $("#startedipt").html(data[0]['Started On IPT']);
                     $("#completedipt").html(data[0]['Completed IPT']);
                    
                    var ldl=Math.round(parseInt(data[0]["VL LDL <400"])/parseInt(data[0]['VL Done in Last 12 Months'])*100);
                    
                    var tb=Math.round(parseInt(data[0]["Screened For TB"])/parseInt(data[0]['Current On ART VL Tool'])*100);
                    
                    $("#vlupt_div").html('<div class="easypiechart vlupt" id="easypiechart-red" data-percent="'+data[0]["VL Uptake"]+'" ><span id="vlupt_val" class="percent">'+data[0]["VL Uptake"]+'%</span></div> ');
                    $("#vlsup_div").html('<div class="easypiechart vlsup" id="easypiechart-blue" data-percent="'+data[0]["% VL Suppression"]+'" ><span id="vlsup_val" class="percent">'+data[0]["% VL Suppression"]+'%</span></div>');
                    $("#ldl_div").html('<div class="easypiechart ldl easypiechart-orange" id="" data-percent="'+ldl+'" ><span id="iptc_val" class="percent">'+ldl+'%</span></div>');
                    $("#tbs_div").html('<div class="easypiechart tbs easypiechart-green" id="" data-percent="'+tb+'" ><span id="tbs_val" class="percent">'+tb+'%</span></div>');
                    
                   
                    /** 
                   
        tbs
        ipt
        vldone
        vlsupp
vlupt
iptc
vlsup
tbs
        
                     * 
                     * % VL Suppression: "89"
All: "Afya Nyota ya Bonde"
Approx. Pending Entry Records: "0"
Completed IPT: "3487"
County: "Baringo"
Current On ART VL Tool: "5490"
Entries by: "ALICE KEMUNTO,ALICE NJERI,ANN CHELIMO,AUSTINE GWADA,AYUB BOSIRE EZRA,BERLIN ATIENO,BRENDA OPIYO,BRIGID CHERONO,CAROLINE CHEPKWONY,CAROLINE KARIMI,COSTINE ONYANGO OBOR,DAVID MBUGUA,DAVID NDERITU,DELILAH MUTOLA,DENNIS MOMANYI,DOROTHY OGWANG,ELIJAH KIBET,ELIM NAKUSHO,ELIZABETH,ESTHER KINUTHIA,EVALYNE NJOKI,FRANCIS TONUI ,FRED NYAPOK,GIDEON "
IMIS_CURR_F1a: "1503257"
New On ART: "67"
Screened For TB: "5383"
Started On IPT: "3966"
Sub-county: "Baringo North"
Time First Record Exported: "2020-06-22 21:13:13.0"
Time First Record entered: "2020-06-22 05:08:37.0"
Time Last Record Entered: "2020-07-06 20:24:39.0"
Time Last Record Exported: "2020-07-06 20:25:02.0"
Total Patients Entered: "5564"
VL Done in Last 12 Months: "3574"
VL LDL <400: "3135"
VL Supressed: "3178"
VL Uptake: "65"
facility: "Barwessa HealthCentre"
mflcode: "14243"
                     * ****/ 
                    
       
var prg= parseInt(data[0]['PMTCT-Pregnant']);
var brf= parseInt(data[0]['PMTCT-Breastfeeding']);


             /* MORRIS DONUT CHART
			----------------------------------------*/
        
        $("#morris-donut-chart").empty();
        
            Morris.Donut({
                element: 'morris-donut-chart',
                data: [{
                    label: "Pregnant",
                    value: prg
                }, {
                    label: "Breastfeeding",
                    value: brf
                }],
		 colors: ['#A6A6A6','#414e63'],
                resize: true
            });
 
                $('.donut-chart').cssCharts({type:"donut"}).trigger('show-donut-chart'); 
                
                
                
                             
                    $(function() {
    $('#easypiechart-teal').easyPieChart({
        scaleColor: false,
        barColor: '#1ebfae'
    });
});

$(function() {
    $('.easypiechart-orange').easyPieChart({
        scaleColor: false,
        barColor: '#ffb53e'
    });
});


$(function() {
    $('.easypiechart-green').easyPieChart({
        scaleColor: false,
        barColor: 'green'
    });
});

$(function() {
    $('#easypiechart-red').easyPieChart({
        scaleColor: false,
        barColor: '#f9243f'
    });
});

$(function() {
   $('#easypiechart-blue').easyPieChart({
       scaleColor: false,
       barColor: '#30a5ff'
   });
});


   
                
                        
                    }// end of success in ajax
                });
                
                
        }  
                
    }
    
    
    
        function refreshFineAge()
              
        {  
            //$("#filterslides").hide();
                 
    var exelstart=$("#startdaterpt").val();
    var exelend=$("#enddaterpt").val();
    var countyrpt=$("#rpt_county").val();
    var rptsubcounty=$("#rpt_subcounty").val();   
    var rptfacil=$("#rpt_facility").val();   
        if (exelstart==='')
     {
         
     alert('Select report begining date');
   $("#startdaterpt").focus();    
     }    
   //end date
      else if (exelend==='')
     {
         
     alert('Select report ending date');
   $("#enddaterpt").focus();    
     } 
     
      else  if(Date.parse(exelstart) > Date.parse(exelend)){
                    alert(" Report Start date cannot be greater than end date.");   
                    $("#enddaterpt").focus();  
                }
                else {
                
                var ran=Math.random();
                
            $.ajax({
                    url:'../getfineagesummaries?cd=909090&rn='+ran,                            
                    type:'get',  
                    dataType: 'json',
                    data:{county:countyrpt,
                          subcounty:rptsubcounty,
                          mflcode:rptfacil,
                          startdate:exelstart,
                          enddate:exelend},
                    success: function(data) 
                    {
                     //  $("#allpatients").html(data[0]['Total Patients Entered']);   
                      /* MORRIS BAR CHART
			-----------------------------------------*/
         $("#morris-bar-chart").empty();
        
        $("#filterslides").show();
        
            Morris.Bar({
                element: 'morris-bar-chart',
                data: data,
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['Male', 'Female'],
				 barColors: [
    'red','#2196f3',
    '#A8E9DC' 
  ],
                hideHover: 'auto',
                resize: true
            });

$('.bar-chart').cssCharts({type:"bar"});
   
                        
        
             }// end of success in ajax
                });
            }
        
    }
    
    
    
    
function loadsubcounty() {
    var cnty=$("#rpt_county").val();
    
   
         $.getJSON("../subcounty.json",function(result){
             var subcounty="";
             var county="";
            
             var subcounty="<option value=''>Select subcounty</option>";
            
             
             for(a=0;a< result.length; a++){
                 
            console.log(result[a].county);
                 
                  if(result[a].county===cnty){
                 
            subcounty+="<option value='"+result[a].subcounty+"'> "+result[a].subcounty+" </option>";
                                                
                                              }
                 
             
                 
                                            }
        
       
        $("#rpt_subcounty").html(subcounty);
       
        
             
        
         }); 
    
    
}
function ldfacility() {
   
   
       
        var sbc=$("#rpt_subcounty").val();
       
      
        var facilities="<option value='' >Select Facility</value>";
        
              $.getJSON("../sites6.json",function(data){
                         
                        
                       
                     for(var i=0;i<data.length;i++){
                         
if((data[i].hts===1 ) && data[i].isactive==='Yes' && data[i].subcounty===sbc ){
    //think of how to get the selected value.
    
                  facilities+="<option value='"+data[i].mflcode+"'>"+data[i].facility_name+"</option>"; 
           
                     }
              
              
              
             
                        
                     }
                     //alert(facilities);
                      $("#rpt_facility").html(facilities);
                  
            //$('#lyricstable').DataTable();
              $('#rpt_facility').select2(); 
             
                                
                     
                      });
                  
       
          
   
}
    
    
    ldfacility();
 
 
     
    function showtoday(){       
        
        
    var currentdate = new Date();
    
    var mn=""+(currentdate.getMonth()+1) ;
    var dt=""+currentdate.getDate();
    var hr=""+currentdate.getHours();
    var min=""+currentdate.getMinutes();
    var sc=""+currentdate.getSeconds();
    if(mn.length===1){mn='0'+mn;}
    if(dt.length===1){dt='0'+dt;}
    if(hr.length===1){hr='0'+hr;}
    if(min.length===1){min='0'+min;}
    if(sc.length===1){sc='0'+sc;}
    
    
    var leo = "" + currentdate.getFullYear() + "-"+ mn + "-"+ dt;
      
        $("#enddaterpt").val(leo);
        
    return leo;
    }  
    showtoday();
    
    </script>
    
    
    <script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>
	<script src="../js/bootstrap-datepicker.min.js"></script>
  <script src="../js/select2.min.js"></script>        
    <script src="../js/pouchdb-7.2.1.js"></script>
                <script src="../js/pouchdb.upsert.js"></script>


<script>
    
    var accountdb = new PouchDB('treatment_account_usr');
var remoteCouch = false;
var useraccountdetails;

function addaccount(isauthorized) {
   useraccountdetails = {
        _id: 'aphiaplus', //this is static since we cant have two users using the same phone
	isauthorized:isauthorized,        
        completed: false
  };
  accountdb.put(useraccountdetails, function callback(err, result) {
    if (!err) {
      console.log('account details added succesfully');
    }
    
    setTimeout(delayedrefresh,1500);
  });
}


  function updateaccount(){
   //alert("save called");   
   var enteredcode=$("#accesscode").val();   
   
   if(enteredcode===''){$("#useraccountvalidation").html("Enter access code");   }
   else 
   {
     //run json to determine status  
     
     //if ok is returned , then save account. else .. show error
      $.ajax({
                    url:'../validateAccess?kc='+enteredcode,                            
                    type:'post',  
                    dataType: 'html',  
                    success: function(data) {
             
                 
                 var dta=parseInt(data);
                 
          if(dta===1){
    
    $("#useraccountvalidation").html("");
  
    
    addaccount('ok'); 
    updatetaccesscode('ok');
                        } else {
                            
                         $("#useraccountvalidation").html("Wrong access code!. Try again");   
                          
                        }
     
                    },
                
               error: function(XMLHttpRequest, textStatus, errorThrown) {
       // alert(errorThrown);
$("#useraccountvalidation").html("No internet connection. Connect to internet and try again."); 
    }
            
            });
       
   }
   
  }



function isloggedin(){
  
  

//}
        
accountdb.allDocs({include_docs:true,ascending: true}).then(function (doc) 
{
    
    if(doc.total_rows===0){
        
        $('#loginbtn').click();
        
          
if($("#accesscode")!==''){
    //alert("clicked the submit button");
    $('#sbmtac').click();
}
    
    }
    else{
    
    showuser();
        
        for(a=0;a<doc.total_rows;a++){
	   var dat={};
	   dat=doc.rows[a];
	      //hoping an account can have a maximum of only 
             
		  var validity=dat.doc.isauthorized;
                  if(validity==='0'){
                     $('#accesscodemodal').click(); 
                     
                      
                  }
                  else{
                      
                      //isuseradded();
                  }
		
            }
        
    }

 //username=doc.username;

});
  
}

isloggedin();

function updatetaccesscode(authentication){


	
	accountdb.get("aphiaplus").then(function (doc) {
            //
            if(authentication!==''){
doc.isauthorized=authentication;
return accountdb.put(doc); //continue from here
            }         
 
});
	}
        
        

const modal = document.getElementById('accesscodemodal');

 window.addEventListener('click', (event) => {
            if (event.target === modal) {
               isloggedin();
            }
        });


function delayedrefresh()
{
      window.location.reload();
    clearweeklyfields();
}
function refreshonly()
{
      window.location.reload();
   
}
    
    </script>

  
</body>

</html>