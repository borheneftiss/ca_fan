$(document).ready(function() {
	$('.modal').modal();
	$('select').material_select();
	$("#wpbody-content").attr("style","z-index:unset!important;");
	var dataTable = $('#games-grid').DataTable( {
		"processing": true,
		"serverSide": true,
		"responsive": true,
		"select":true,
		/*  "language": {
			"url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/French.json"
		} , 	*/
		"ajax":{
			url :plugin_dir_url+"/games/gamesscripts/games-grid-data.php", // json datasource
			type: "post",  // method  , by default get
			error: function(){  // error handling
				$(".games-grid-error").html("");
				$("#games-grid").append('<tbody class="games-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
				$("#games-grid_processing").css("display","none");

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
			{targets: [0,6], orderable: false,  "visible": false, },
			{targets: [4,5,6], orderable: false },

			{
				targets: [0, 1, 2,3,4],
				className: 'mdl-data-table__cell--non-numeric'
			},
			{
                "targets": 4,
                "visible": true,
                "data": function(row, type, val, meta) {
					var outputs = row[4];
					if(outputs=="confirmed")
					{
						outputs="Confirmed";
					}
					if(outputs=="new")
					{
						outputs="New";
					}
					if(outputs=="cancelled")
					{
						outputs="Cancelled";
					}
					if(outputs=="inprogress")
					{
						outputs="In progress";
					}
                     return outputs;
                }

            },
			{ "width": "20%", "targets": 2 },
			{ "width": "20%", "targets": 7 },
			{ "width": "25%", "targets": 3 },
			{ "width": "5%",  "targets": 0 },
						{ targets:[0,1,2,3,4,5,6], className: "desktop" },
			        	{ targets:[5,3], className: "tablet, mobile" },
						{ targets:[1], className: "details-control,tablet, mobile" }

		],



	} );


	$( "#games-grid_wrapper div:first" ).prepend('<button id="addhotel" class="btn-floating green" onclick="prepareaddmodal();"      style="background:green;float:left;margin-left: 10px;" href="#modal1"><i class="material-icons">add</i></button>');
	$('#addhotel').next().css('width','40%');

    $("#loader").hide();
	$("#hidedcontent").show();
	

});

function prepareaddmodal()
{


	$("#adddiv :input").each(function(){

		$(this).val("");
		$(this).focusout();

	});

    Materialize.updateTextFields();

	$('#modal1').modal('open');


}

function adddata()
{


    
	f=true;
     if ($("#title").val()=="")
	{
		$("#title").attr("class","materialize-textarea validate invalid");
		f=false;
	}
	if ($("#description").val()=="")
	{
		$("#description").attr("class","materialize-textarea validate invalid");
		f=false;
	}



	

    
	title=$("#title").val();
	description=$("#description").val();
	status=$("#status").val();
	if ($('#active').prop('checked'))
	{
		visible=1;
	}
	else
	{
		visible=0;
	}
	imageid=$("#image").val();
	url=$("#link").val();



	data1 = new FormData();
	data1.append('title', title);
	data1.append('description',description);
	data1.append('visible', visible);
	data1.append('status', status);
	data1.append('upload_file', $('#upload_file')[0].files[0]);
	data1.append('game_file', $('#game_file')[0].files[0]);


	if(f)
	{
		$.ajax({
			type: "POST",
			url: plugin_dir_url+"/games/gamesscripts/insert.php",
			data: data1,
			contentType: false,       // The content type used when sending data to the server.
			cache: false,             // To unable request pages to be cached
			processData:false,
			success: function(msg){
				msg=JSON.parse(msg);
				if (msg.result_type=="success")
				{
					Materialize.toast(msg.result_code, 3000,'green');
					$('#modal1').modal('close');
					var dataTable = $('#games-grid').DataTable();
					dataTable.ajax.reload( null, false );

					}else{
					Materialize.toast(msg.result_code, 3000,'red');
				}
			},
			error: function(data, errorThrown)
			{
				Materialize.toast('Error', 3000,'red');
			}
		});

	}
}

function deletegamemodal(gameid)
{
	
	$('#delete_gameid').val(gameid)
	$('#deletegamemodal').modal('open')
}
function deletedatagame()
{
	gameid=($('#delete_gameid').val())
  
	$.ajax({
		type: "GET",
		url: plugin_dir_url+"/games/gamesscripts/deletegame.php",
		data: {gameid: gameid},
		dataType: "json",
		success: function(msg){

            console.log(msg.result_type)
			if (msg.result_type=='success')
			{
				Materialize.toast('Status changed', 3000,'green');
				var dataTable = $('#games-grid').DataTable();
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
	var dataTable = $('#games-grid').DataTable();
	dataTable.ajax.reload( null, false );
}
function editactivate(gameid)
{


	$("#changestatid").val(gameid);
	$('#activatemodal').modal('open');


}

function changestatclose()
{
	var dataTable = $('#games-grid').DataTable();
	dataTable.ajax.reload( null, false );
}
function changestat()
{

	idgame=$("#changestatid").val();
	$.ajax({
		type: "GET",
		url: plugin_dir_url+"/games/gamesscripts/changestat.php",
		data: {ID: idgame},
		success: function(msg){


			if (parseInt(msg)==1)
			{
				Materialize.toast('Status changed', 3000,'green');
				var dataTable = $('#games-grid').DataTable();
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
	var dataTable = $('#games-grid').DataTable();
	dataTable.ajax.reload( null, false );
}



function editmodal(gameid)
{


	$("#editgameid").val(gameid);
    $('#editmodal').modal('open');
    $("#edittitle").val($("#row-"+gameid+" #cell-1").html());
	$("#editdescription").val($("#row-"+gameid+" #cell-2").html());
	var stausval=$("#row-"+gameid+" #cell-4").html();
	
	$("#editstatus").val(stausval);
	
	$('#editstatus').find('option[value="'+stausval+'"]').prop('selected', true);
	Materialize.updateTextFields();
	$('#editstatus').material_select();







	$('#editmodal').modal('open');


}

function editdata()
{




	  f=true;

	 if ($('#edittitle').val()=="")
		 {
			 $('#editform').attr("class","validate invalid");
			 f=false;
		 }


	 if ($('#editdescription').val()=="")
		 {
			 $('#editform').attr("class","validate invalid");
			 f=false;
		 }


	idgame=$("#editgameid").val();
	title=$('#edittitle').val();
	description=$('#editdescription').val();
    status= $('#editstatus').val();
    data1 = new FormData();
	data1.append('ID', idgame);
	data1.append('title', title);
	data1.append('description',description);
	data1.append('status',status);
	data1.append('up_upload_file', $('#up_upload_file')[0].files[0]);



	if(f)
	{


	$.ajax({
		type: "POST",
		url: plugin_dir_url+"/games/gamesscripts/editgame.php",
		contentType: false,       // The content type used when sending data to the server.
			cache: false,             // To unable request pages to be cached
			processData:false,
		data: data1,
		success: function(msg){
				msg=JSON.parse(msg);
				if (msg.result_type=="success")
				{
					Materialize.toast(msg.result_code, 3000,'green');
					$('#modal1').modal('close');
					var dataTable = $('#games-grid').DataTable();
					dataTable.ajax.reload( null, false );

					}else{
					Materialize.toast(msg.result_code, 3000,'red');
				}
			},
			error: function(data, errorThrown)
			{
				Materialize.toast('Error', 3000,'red');
			}
	});


	}








}
