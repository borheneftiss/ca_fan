$(document).ready(function() {
	$('.modal').modal();
	$('#gamesselect').material_select();

	$("#wpbody-content").attr("style","z-index:unset!important;");
	var dataTable = $('#level-grid').DataTable( {
		"processing": true,
		"serverSide": true,
		"responsive": true,
		"select":true,
		/*  "language": {
			"url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/French.json"
		} , 	*/
		"ajax":{
			url :plugin_dir_url+"/Game/gamesscripts/level-grid-data.php", // json datasource
			type: "post",  // method  , by default get
			error: function(){  // error handling
				$(".level-grid-error").html("");
				$("#level-grid").append('<tbody class="level-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
				$("#level-grid_processing").css("display","none");

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
		//	{targets: [0], orderable: false,  "visible": false, },
			{targets: [0], orderable: false },

			{
				targets: [0, 1, 2,3,4],
				className: 'mdl-data-table__cell--non-numeric'
			},

			{ "width": "5%", "targets": 0, "visible": false, },
			{ "width": "15%", "targets": 4, "orderable": false}

		],



	} );


	$( "#level-grid_wrapper div:first" ).prepend('<button id="addlevel" class="btn-floating green" onclick="prepareaddlvlmodal();" style="background:green;float:left;margin-left: 10px;" href="#modal1"><i class="material-icons">add</i></button>');
	$('#addlevel').next().css('width','40%');

	 $("#loader").hide();
	$("#hidedcontent").show();

});

function prepareaddlvlmodal()
{

	$.ajax({
		type: "POST",
		url: plugin_dir_url+"/Game/gamesscripts/getgames.php",
		data: {},
		cache: false,             // To unable request pages to be cached
		success: function(msg){
			msg=JSON.parse(msg);
			if (msg.result_type=="success")
			{


				$('#gamesselect').empty();
				for (var key in msg.result_content) {

		  $('#gamesselect').append('<option value='+msg.result_content[key].idgame+'>'+msg.result_content[key].title+'</option>');


          }

					$("#adddiv :input").each(function(){

						$(this).val("");
						$(this).focusout();

					});
					$("#gamesselect").val($("#gamesselect option:first").val());
					Materialize.updateTextFields();
	 	      $('#gamesselect').material_select();
	 	 	   $('#modal1').modal('open');


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

function adddata()
{



	f=true;

if ($("#level").val()=="")
{
 $("#level").attr("class","materialize-textarea validate invalid");
 f=false;
}
if ($("#maxscore").val()=="")
{
$("#maxscore").attr("class","materialize-textarea validate invalid");
f=false;
}

	if(f)
	{
		$.ajax({
			type: "POST",
			url: plugin_dir_url+"/Game/gamesscripts/insertlevel.php",
			data: {"game":$('#gamesselect').val(),"level":$("#level").val(),"maxscore":$("#maxscore").val()},
			cache: false,             // To unable request pages to be cached
			success: function(msg){
				msg=JSON.parse(msg);
				if (msg.result_type=="success")
				{
					Materialize.toast(msg.result_code, 3000,'green');
					$('#modal1').modal('close');
					var dataTable = $('#level-grid').DataTable();
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




function editmodal(gameid)
{

	$.ajax({
		type: "POST",
		url: plugin_dir_url+"/Game/gamesscripts/getgames.php",
		data: {},
		cache: false,             // To unable request pages to be cached
		success: function(msg){
			msg=JSON.parse(msg);
			if (msg.result_type=="success")
			{


				$('#editgamesselect').empty();
				for (var key in msg.result_content) {

		    $('#editgamesselect').append('<option value='+msg.result_content[key].idgame+'>'+msg.result_content[key].title+'</option>');


          }

					$("#editlvlid").val(gameid);

          var text1=$("#row-"+gameid+" #cell-1").html();
					$("select option").filter(function() {

	       return $(this).text() == text1;
       	}).attr('selected', true);
					$("#editlevel").val($("#row-"+gameid+" #cell-2").html());
					$("#editmaxscore").val($("#row-"+gameid+" #cell-3").html());

					Materialize.updateTextFields();
         $('#editgamesselect').material_select();
					$('#editmodal').modal('open');


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

function editdata()
{




	f=true;
if ($("#editgame").val()=="")
 {
	 $("#editgame").attr("class","materialize-textarea validate invalid");
	 f=false;
 }
 if ($("#editlevel").val()=="")
{
 $("#editlevel").attr("class","materialize-textarea validate invalid");
 f=false;
}
if ($("#editmaxscore").val()=="")
{
$("#editmaxscore").attr("class","materialize-textarea validate invalid");
f=false;
}


	if( f )
	{

	$.ajax({
		type: "POST",
		url: plugin_dir_url+"/Game/gamesscripts/editlevel.php",
	  data: {"editid":$("#editlvlid").val(),"editgame":$('#editgamesselect').val(),"editlevel":$("#editlevel").val(),"editmaxscore":$("#editmaxscore").val()},
		cache: false,             // To unable request pages to be cached
		success: function(msg){
				msg=JSON.parse(msg);
				if (msg.result_type=="success")
				{
					Materialize.toast(msg.result_code, 3000,'green');
					$('#modal1').modal('close');
					var dataTable = $('#level-grid').DataTable();
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
function deletemodal(id)

{
   $("#deletelvlid").val(id);
   $('#deletemodal').modal('open');

}
	function deletedata()
	{

		$.ajax({
			type: "POST",
			url: plugin_dir_url+"/Game/gamesscripts/deletelevel.php",
		  data: {"deleteid":$("#deletelvlid").val()},
			cache: false,             // To unable request pages to be cached
			success: function(msg){
					msg=JSON.parse(msg);
					if (msg.result_type=="success")
					{
						Materialize.toast(msg.result_code, 3000,'green');
						$('#deletemodal').modal('close');
						var dataTable = $('#level-grid').DataTable();
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
