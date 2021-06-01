<?php
/**
 * Plugin Name: preferences

 * Description:  preferences
 * Version:     1.0
 * Author:      Chifco


 * @package   preferences
 * @version   1.0.
 * @author    Chifco <contact@chifco.com>
 * @copyright Copyright (c) Chifco
 */

function go_PreferencesGroups() {
	
	add_menu_page('PreferencesGroups', 'PreferencesGroups', 'manage_options', __FILE__, 'render_PreferencesGroups', '', '80.025');
	
}



add_action('admin_menu','go_PreferencesGroups',1);

 function add_js_files2()
{   
    wp_enqueue_script( 'jquery-1.12.4', plugin_dir_url( __FILE__ ) . 'js/jquery-1.12.4.js', array(), false, false );
	wp_enqueue_script( 'jquery.dataTables.min', plugin_dir_url( __FILE__ ) . 'js/jquery.dataTables.min.js', array(), false, false );	
    wp_enqueue_script( 'materialize.min', plugin_dir_url( __FILE__ ) . 'js/materialize.min.js', array(), false, false );
	wp_enqueue_script( 'dataTables.material.min', plugin_dir_url( __FILE__ ) . 'js/dataTables.material.min.js', array(), false, false );
	wp_enqueue_script( 'prefgroups', plugin_dir_url( __FILE__ ) . 'prefgroups.js', array(), false, false );



	wp_enqueue_style( 'materialize.min', plugin_dir_url( __FILE__ ) . 'css/materialize.min.css');
	wp_enqueue_style( 'material.min', plugin_dir_url( __FILE__ ) . 'css/material.min.css');
	wp_enqueue_style( 'icon', plugin_dir_url( __FILE__ ) . 'css/icon.css');
	wp_enqueue_style( 'prefgroups', plugin_dir_url( __FILE__ ) . 'css/prefgroups.css');
}
add_action('admin_enqueue_scripts', 'add_js_files2'); 

function render_PreferencesGroups ()
{
	?>

<!DOCTYPE html>
<html>
<title>PreferencesGroups</title>
	<head>
	
	<style>
	
	
	</style>
	
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/material-design-lite/1.1.0/material.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.material.min.js"></script>-->

   
		<script type="text/javascript" language="javascript" >
		
			$(document).ready(function() {
				$('.modal').modal();
				var dataTable = $('#pref-group').DataTable( {
					"processing": true,
					"serverSide": true,
					"responsive": true,
					"select":true,				
					"ajax":{
						url :"<?php echo (plugins_url()."/preferences/employee-grid-data.php")?>", // json datasource
						type: "post",  // method  , by default get
						error: function(){  // error handling
							$(".pref-goup-error").html("");
							$("#pref-group").append('<tbody class="employee-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
							$("#pref-goup_processing").css("display","none");
							
						}
					},
						'createdRow': function( row, data, dataIndex ) {
								  $(row).attr('id', 'row-'+data[0]);
							  },
							  'columnDefs': [
								 {
									'targets': '_all',
									'createdCell':  function (td, cellData, rowData, row, col) {
									   $(td).attr('id', 'cell-'+col); 
									},
									 
								 },
								 {targets: [4], orderable: false,  },
								 {
										targets: [ 0, 1, 2,3,4 ],
										className: 'mdl-data-table__cell--non-numeric'
									}
							  ],
					

						
				} );
			 
			
			 $( "#pref-group_wrapper div:first" ).prepend('<button id="addbtn" class="btn-floating waves-effect waves-light green"onclick="prepareaddmodal();"      style="background:green;float:left;margin-left: 10px;"><i class="material-icons">add</i></button>') 	
			$('#addbtn').next().css('width','40%');
			
			
			
			});
			
		</script>
		
	</head>
	<body>
	
		
		

		<div style="margin:5%;">
			
			<table id="pref-group"  class=" table striped highlight" cellspacing="0" width="100%" >


			
					<thead>
						<tr>
							<th>PreferenceGroupId</th>
							<th>PreferenceGroupTitle</th>
							<th>PreferenceGroupName</th>
						    <th>Priority</th> 
							<th class="no-sort">Action</th>

						</tr>
					</thead>
			</table>
		</div>		     
<div class="hide">
<label for="deleteid">contains the row id to delete</label>
<input type="text" readonly class="form-control" id="deleteid">
</div>
  
  <div id="editmodal" class="modal">
    <div class="modal-content">
      <h4>Edit Row</h4>
      <div class="row">
        <form class="col s12">
          <div class="row modal-form-row">
            <div class="input-field col s12">
              <input id="id" type="text" readonly >
              <label for="id" class="active">PrefrencesgorupID</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <input id="grouptitle" type="text" class="validate">
              <label for="grouptitle" class="active">PreferenceGroupTitle</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <input id="groupname" type="text" class="validate">
              <label for="groupname"class="active">PreferenceGroupName</label>
            </div>
          </div>		  
          <div class="row">
            <div class="input-field col s12">
              <input id="Priority" type="number" min="1" class="validate">
              <label for="Priority" class="active">Priority</label>
            </div>
          </div>             
        </form>
      </div>
    </div>
    <div class="modal-footer">
	<button class="btn waves-effect waves-light green modal-close" onclick="Savedata($('#id').val(),$('#grouptitle').val(),$('#groupname').val(),$('#Priority').val())" >
    <i class="material-icons">save</i>
    </button>
	<button class="btn waves-effect waves-light red modal-close">
    <i class="material-icons">close</i>
    </button>
    </div>
  </div>
 


  
  <div id="addmodal" class="modal">
    <div class="modal-content">
      <h4>New Row</h4>

      <div class="row">
        <form class="col s12">
          <div class="row modal-form-row">
            <div class="input-field col s12">
              <input id="addgrouptitle" type="text" class="validate">
              <label for="addgrouptitle">PreferenceGroupTitle</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <input id="addgroupname" type="text" class="validate">
              <label for="addgroupname">PreferenceGroupName</label>
            </div>
          </div>       
          <div class="row">
            <div class="input-field col s12">
              <input id="addPriority" type="number" min="1" class="validate">
              <label for="addPriority">Priority</label>
            </div>
          </div>             
        </form>
      </div>
    </div>
    <div class="modal-footer">
	<button class="btn waves-effect waves-light green modal-close" onclick="adddata($('#addgrouptitle').val(),$('#addgroupname').val(),$('#addPriority').val())" >
    <i class="material-icons">save</i>
    </button>
	<button class="btn waves-effect waves-light red modal-close">
    <i class="material-icons">close</i>
    </button>
    </div>
  </div>
 
  <div id="deletemodal" class="modal" style="width:30%!important;">
    <div class="modal-content col s4 ">
      <h4>Delete Row</h4>
      <div class="row">
        <h6>Are you sure </h6>
      </div>
    </div>
    <div class="modal-footer">
	<button class="btn waves-effect waves-light green modal-close" onclick="deleterow()" >
    <i class="material-icons">save</i>
    </button>
	<button class="btn waves-effect waves-light red modal-close">
    <i class="material-icons">close</i>
    </button>
    </div>
  </div>
  <div id="viewmodal" class="modal">
    <div class="modal-content">
      
      <div class="row">
	  
	   <div class="collection with-header white">
	    <ul id="veiwlist">		
		</ul>
      </div>
       
      </div>
    </div>
    <div class="modal-footer">
	<button class="btn waves-effect waves-light red modal-close">
    <i class="material-icons">close</i>
    </button>
    </div>
  </div>
  
<script>

function prepareaddmodal()
{   
    $('#addgrouptitle').val("");
	$('#addgroupname').val("");
	$('#addPriority').val("");
	
	$('#addgrouptitle').focusout();	
    $('#addgroupname').focusout();
    $('#addPriority').focusout();	
    Materialize.updateTextFields();	
	
	$('#addmodal').modal('open');
	
}
function preparemodel (rowid)
{   
    $('#editmodal').modal('open');
    $("#id").val($("#row-"+rowid+" #cell-0").html());
	$("#grouptitle").val($("#row-"+rowid+" #cell-1").html());
	$("#groupname").val($("#row-"+rowid+" #cell-2").html());
	$("#Priority").val($("#row-"+rowid+" #cell-3").html());
	Materialize.updateTextFields();
	
}
function Savedata (rowid,grouptitle,groupname,Priority)
{ 
    $('#editmodal').modal('close');
    
	
	$.ajax({
    type: "GET",
    url: "<?php echo (plugins_url()."/preferences/save.php")?>",
    data: {PreferenceGroupId: rowid, PreferenceGroupTitle: grouptitle, PreferenceGroupName: groupname, Priority: Priority},   // <== change is here
    success: function(msg){
       
	   if (parseInt(msg)==1)
		{
			Materialize.toast('updated', 3000,'green');
			//alert(groupname);
			$("#row-"+rowid+" #cell-1").html(grouptitle);
	        $("#row-"+rowid+" #cell-2").html(groupname);
	        $("#row-"+rowid+" #cell-3").html(Priority);
			
		}else{
		
	       }
    },
	error: function(data, errorThrown)
          {  
		  Materialize.toast('error', 3000,'red');
          }
	
	});
}
function adddata (grouptitle,groupname,Priority)
{ 
    $('#addmodal').modal('close');
	$.ajax({
    type: "GET",
    url: "<?php echo (plugins_url()."/preferences/insert.php")?>",
    data: {PreferenceGroupTitle: grouptitle, PreferenceGroupName: groupname, Priority: Priority},   // <== change is here
    success: function(msg){
        
		if (parseInt(msg)==1)
		{
		Materialize.toast('inserted', 3000,'green');
		var dataTable = $('#pref-group').DataTable();
		dataTable.ajax.reload( null, false );
		}else{
			Materialize.toast('error', 3000,'red');
		}	 
    },
	error: function(data, errorThrown)
          {  
		   Materialize.toast('error', 3000,'red');
          }
	});
}


function saveidfordeletion (rowid)
{
	$("#deleteid").val(rowid);
}

function deleterow()
{	
$.ajax({
    type: "GET",
    url: "<?php echo (plugins_url()."/preferences/delete.php")?>",
    data: {PreferenceGroupId: $("#deleteid").val()},   
    success: function(msg){
       
		
		if (parseInt(msg)==1)
		{
		Materialize.toast('deleted', 3000,'green');
		var dataTable = $('#pref-group').DataTable();
		dataTable.ajax.reload( null, false );
		}
	    else{
			Materialize.toast('error', 3000,'red');
		}
    },
	error: function(data, errorThrown)
          {  
		   Materialize.toast('error', 3000,'red');
          }
	});
}

function view(rowid)
{   
   	$('#viewmodal').modal('open');
	$.ajax({
    type: "GET",
    url: "<?php echo (plugins_url()."/preferences/getpref.php")?>",
    data: {ID:rowid}, 
    success: function(msg){
	obj=JSON.parse(msg);
    $('#veiwlist').empty();
	$(veiwlist).append('<li class="collection-header brown-text text-darken-1"><h4>'+$("#row-"+rowid+" #cell-2").html()+'</h4></li>');
	if(!$.isEmptyObject(obj)){
		  for (var key in obj) {
  
  $(veiwlist).append('<li><a href="#!" class="collection-item black-text">'+obj[key]+'</a></li>');
  

   }
	}else
	{
		$(veiwlist).append('<li><a href="#!" class="collection-item center-align black-text  ">'+'No data found'+'</a></li>');
	}
  
}
	});
	
}
 

      
</script>

	</body>
</html>
<?php

}
?>