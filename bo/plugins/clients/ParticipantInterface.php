<?php


add_action('admin_menu', 'ParticipantInterface', 2);
function ParticipantInterface()
{
    add_menu_page('Clients', 'Clients', 'manage_options', "ParticipantList", 'render_Participant', 'dashicons-clipboard');
    add_submenu_page('ParticipantList', 'Top Clients', 'Top Clients', 'manage_options', 'topparticipants', 'render_topParticipant');
}

function Participant_Page_Admin()
{
    

?>


<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

</head>
<body>
<div class="container"><div class="row " style=" margin: 10%; " >
 <?php



?>
</div>
</div>
<?php
}

 function traduction_add_scripts_styles()
 {
     wp_enqueue_script('jquery-2.2.4.min', plugin_dir_url(__FILE__) . 'js/jquery-2.2.4.min.js', array(), false, false);
     wp_enqueue_script('jquery.dataTables.min', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.min.js', array(), false, false);
     wp_enqueue_script('materialize.min', plugin_dir_url(__FILE__) . 'js/materialize.min.js', array(), false, false);
     wp_enqueue_script('dataTables.material.min', plugin_dir_url(__FILE__) . 'js/dataTables.material.min.js', array(), false, false);
     wp_enqueue_script('participants', plugin_dir_url(__FILE__) . 'js/participants.js', array(), false, false);

     wp_enqueue_style('datatable-responsive', '//cdn.datatables.net/responsive/2.2.3/css/dataTables.responsive.css', array(), false, false);
     wp_enqueue_script('datatable-responsive', '//cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.js', array(), false, false);

     wp_enqueue_style('materialize.min', plugin_dir_url(__FILE__) . 'css/materialize.min.css');
     wp_enqueue_style('material.min', plugin_dir_url(__FILE__) . 'css/material.min.css');
     wp_enqueue_style('icon', plugin_dir_url(__FILE__) . 'css/icon.css');
     wp_enqueue_style('participants', plugin_dir_url(__FILE__) . 'css/participants.css');

     /* wp_enqueue_style( 'datatable', plugin_dir_url( __FILE__ ) . 'css/datatable.css');*/
 }

function topParticipant_add_scripts_styles()
{
    wp_enqueue_script('jquery-2.2.4.min', plugin_dir_url(__FILE__) . 'js/jquery-2.2.4.min.js', array(), false, false);
    wp_enqueue_script('jquery.dataTables.min', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.min.js', array(), false, false);
    wp_enqueue_script('materialize.min', plugin_dir_url(__FILE__) . 'js/materialize.min.js', array(), false, false);
    wp_enqueue_script('dataTables.material.min', plugin_dir_url(__FILE__) . 'js/dataTables.material.min.js', array(), false, false);
    wp_enqueue_script('winners', plugin_dir_url(__FILE__) . 'js/winners.js', array(), false, false);



    wp_enqueue_style('materialize.min', plugin_dir_url(__FILE__) . 'css/materialize.min.css');
    wp_enqueue_style('material.min', plugin_dir_url(__FILE__) . 'css/material.min.css');
    wp_enqueue_style('icon', plugin_dir_url(__FILE__) . 'css/icon.css');
    wp_enqueue_style('winners', plugin_dir_url(__FILE__) . 'css/winners.css');
}

function participantsrecharge_add_scripts_styles()
{
    wp_enqueue_script('jquery-2.2.4.min', plugin_dir_url(__FILE__) . 'js/jquery-2.2.4.min.js', array(), false, false);
    wp_enqueue_script('jquery.dataTables.min', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.min.js', array(), false, false);
    wp_enqueue_script('materialize.min', plugin_dir_url(__FILE__) . 'js/materialize.min.js', array(), false, false);
    wp_enqueue_script('dataTables.material.min', plugin_dir_url(__FILE__) . 'js/dataTables.material.min.js', array(), false, false);
    wp_enqueue_script('recharge', plugin_dir_url(__FILE__) . 'js/recharge.js', array(), false, false);

    wp_enqueue_style('materialize.min', plugin_dir_url(__FILE__) . 'css/materialize.min.css');
    wp_enqueue_style('material.min', plugin_dir_url(__FILE__) . 'css/material.min.css');
    wp_enqueue_style('icon', plugin_dir_url(__FILE__) . 'css/icon.css');
    wp_enqueue_style('recharge', plugin_dir_url(__FILE__) . 'css/recharge.css');
}

function render_Participant()
{
    traduction_add_scripts_styles(); ?>

<!DOCTYPE html>
<html>
<title>Participants</title>
	<head>
	<script>
	var plugin_dir_url="<?php echo(plugins_url()); ?>";

	</script>
	</head>
	<body>
<div id="loader" class="preloader-wrapper big active" style="margin-left: 42%;margin-top: 20%;margin-bottom: 20%;">
    <div class="spinner-layer spinner-red-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>
 <div id="hidedcontent" style="display:none;">
           

		<div style="margin:1%;">

            <!-- <div class = "file-field input-field">
                  <a class="waves-effect waves-light btn">New</a>
            </div>-->
            <!--CSS Spinner-->
            <div class="spinner-wrapper" >
            <div class="spinner"></div>
            </div>
			<div id="dialogajaxpop" style="display: none;z-index: 1000;" class="dialogajax dialogajaxpop" >
   				<div class="loaderajax col s6 l2 m2 offset-m5 offset-l5 offset-s3" style="top: 50%;">
   					<div class="spinner" style="margin-top: 60px;margin-left: 21px;"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div>

   				</div>
   	        </div>
			<table id="participants-group"  class=" table striped highlight" cellspacing="0" width="100%" >



					<thead>
						<tr>
							    
						        <th>ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Birth Day</th>
								<th>Email</th>
								<th>City</th>
								<th>CIN</th>
								

								<th>Actions</th>

						</tr>
					</thead>
			</table>
		</div>
        <!-- Modal Structure -->

		  	<div id="addparticipant" class="modal">
				<div id="adddiv" class="modal-content">
					<h4>Add new client</h4>
					
					<div class="row">
						<div class="input-field col s12">
							<input id="newfirstname" type="text" class="validate">
							<label for="newfirstname">First name</label>
						</div>
					</div>
                   <div class="row">
						<div class="input-field col s12">
							<input id="newlastname" type="text" class="validate">
							<label for="newlastname">Last name</label>
						</div>
					</div>
                     <div class="row">
						<div class="input-field col s12">
							<input id="newemail" type="email" class="validate">
							<label for="newemail">Email</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="newphone" maxlength="8" onkeypress='return event.charCode >= 48 && event.charCode <= 57' type="text" class="validate">
							<label for="newphone">Phone</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="newcin" maxlength="8" onkeypress='return event.charCode >= 48 && event.charCode <= 57' type="text" class="validate">
							<label for="newcin">CIN</label>
						</div>
					</div>
                    <div class="row">
						<div class="input-field col s12">
							<input id="newbirthdate" type="text" class="validate" onchange="Materialize.updateTextFields();">
							<label for="newbirthdate">Birthday</label>
						</div>
					</div>
                      <div class="row">
						<div class="input-field col s12">
							<input id="newcity" type="text" class="validate">
							<label for="newcity">City</label>
						</div>
					</div>
                     

				</div>

				<div class="modal-footer">
					<a class="modal-action modal-close waves-effect waves-dark btn-flat btn-border">Cancel</a>
					<button class="btn  waves-light" onclick="adddata()">Validate</button>
				</div>
			 </div>



		  <div id="editparticipant" class="modal">
				<div id="editdiv" class="modal-content">
					<h4>Edit customer</h4>
					<input type="hidden" id="clientid">
					<div class="row">
						<div class="input-field col s12">
							<input id="editfirstname" type="text" class="validate">
							<label for="editfirstname">First name</label>
						</div>
					</div>
                   <div class="row">
						<div class="input-field col s12">
							<input id="editlastname" type="text" class="validate">
							<label for="editlastname">Last name</label>
						</div>
					</div>
                     <div class="row">
						<div class="input-field col s12">
							<input id="editemail" type="email" class="validate">
							<label for="editemail">Email</label>
						</div>
					</div>
                    <div class="row">
						<div class="input-field col s12">
							<input id="editbirthdate" type="text" class="validate" onchange="Materialize.updateTextFields();">
							<label for="editbirthdate">Birthday</label>
						</div>
					</div>
                      <div class="row">
						<div class="input-field col s12">
							<input id="editcity" type="text" class="validate">
							<label for="editcity">City</label>
						</div>
					</div>
                      
                    

				</div>

				<div class="modal-footer">
					<a class="modal-action modal-close waves-effect waves-dark btn-flat btn-border">Cancel</a>
					<button class="btn  waves-light" onclick="saveedit()">Validate</button>
				</div>
			 </div>
			</div>
			<?php $url = plugin_dir_url(  __FILE__  );
			$avatar=$url.'img/avatar.png';
			 ?>
			<div id="viewparticipant" class="modal">
				<div id="viewblock" class="modal-content" >
				<div class="card userview" style="margin: auto;">
				<div class="card-image">
				<img class="avatar" src="<?php echo $avatar;?>">
				<div class="blockname">
				<p class="title" id="username"></p>
				<p class="infomail" ><i class="material-icons">mail</i><span id="useremail"></span></p>
				<p class="infocity" ><i class="material-icons">location_on</i><span id="usercity"></span></p>
				<p class="infobirthday" ><i class="material-icons">perm_contact_calendar</i><span id="userbirthday"></span></p>

				
				
				</div>
				
				</div>
				<div class="card-content">
				<p>
				
				</p>
				</div>
				<div class="card-action" >
				<div id="headercards">
				<div class="row col l12 m12 s12" style="font-weight:bold">
				<div class="col l4 m4 s4">Téléphone</div>
				<div class="col l4 m4 s4">Numéro de carte</div>
				<div class="col l4 m4 s4">Nombre de points</div>
				</div>
				</div>
				<div id="cards"></div>
				
				</div>
			    </div>
				</div>
			</div>





	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 <script>
 		 $('#newbirthdate').datepicker({
			dateFormat: "yy-mm-dd"
			}).datepicker("setDate", new Date());
		 $('#editbirthdate').datepicker({
			dateFormat: "yy-mm-dd",
			defaultDate: new Date()
			}).datepicker("setDate", new Date());
	 </script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


	</body>
</html>
<?php
}
function render_topParticipant()
{
    topParticipant_add_scripts_styles(); ?>

<!DOCTYPE html>
<html>
<title>TopParticipants</title>
	<head>
	<script>
	var plugin_dir_url="<?php echo(plugins_url()); ?>";
	</script>
	</head>
	<body>
	
    <div id="loader" class="preloader-wrapper big active" style="margin-left: 42%;margin-top: 20%;margin-bottom: 20%;">
    <div class="spinner-layer spinner-red-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>

<div id="hidedcontent" style="display:none;">

		<div id="fromFilter" class="mdl-cell mdl-cell--6-col" style="margin-left: 23px;">

			  <div class="dataTables_length" id="participants-grid_length" style="display: inline-flex;">


				  <label>from <input placeholder="From" type="text" id="datefrom" style="margin-right: 10px;width: 200px;margin-left: 10px;"onchange="changefrom();">
				  <label>to<input placeholder="To" type="text" id="dateto" style="margin-right: 10px;width: 200px;margin-left: 10px;"onchange="changeto();"></label>

			  </div>

		</div>

		<div style="margin:1%;">

			<table id="winners-group"  class=" table striped highlight responsive-table" cellspacing="0" width="100%" >



					<thead>
						<tr>
							  <th>PhoneNumber</th>
								<th>FirstName</th>
								<th>LastName</th>
								<th>Points</th>


						</tr>
					</thead>
			</table>
		</div>
</div>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 <script>
 		 $('#datefrom').datepicker({
			dateFormat: "yy-mm-dd"
			}).datepicker("setDate", new Date());
		 $('#dateto').datepicker({
			dateFormat: "yy-mm-dd",
			defaultDate: new Date()
			}).datepicker("setDate", new Date());
	 </script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


	</body>
</html>
<?php
}




function render_participantsrecharge()
{
    participantsrecharge_add_scripts_styles(); ?>

<!DOCTYPE html>
<html>
<title>Recharge</title>
	<head>
	<script>
	var plugin_dir_url="<?php echo(plugins_url()); ?>";
	</script>
	</head>
	<body>
	
    <div id="loader" class="preloader-wrapper big active" style="margin-left: 42%;margin-top: 20%;margin-bottom: 20%;">
    <div class="spinner-layer spinner-red-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>	
	
	
<div id="hidedcontent" style="display:none;">

		<div id="fromFilter" class="mdl-cell mdl-cell--6-col" style="margin-left: 23px;">

			  <div class="dataTables_length" id="participants-grid_length" style="display: inline-flex;">
				  <label>from <input placeholder="From" type="text" id="datefrom" style="margin-right: 10px;width: 200px;margin-left: 10px;"onchange="changefrom();">
				  <label>to<input placeholder="To" type="text" id="dateto" style="margin-right: 10px;width: 200px;margin-left: 10px;"onchange="changeto();"></label>

			  </div>

		</div>

		<div style="margin:1%;">

			<table id="recharge-group"  class=" table striped highlight responsive-table" cellspacing="0" width="100%" >



					<thead>
						<tr>
							  <th>PhoneNumber</th>
								<th>FirstName</th>
								<th>LastName</th>
								<th>Date</th>
								<th>Recharge</th>


						</tr>
					</thead>
			</table>
		</div>
</div>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 <script>
 		 $('#datefrom').datepicker({
			dateFormat: "yy-mm-dd"
			}).datepicker("setDate", new Date());
		 $('#dateto').datepicker({
			dateFormat: "yy-mm-dd",
			defaultDate: new Date()
			}).datepicker("setDate", new Date());
	 </script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


	</body>
</html>
<?php
}


?>
