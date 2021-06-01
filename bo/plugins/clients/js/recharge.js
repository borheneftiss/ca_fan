var dataTable;
$(document).ready(function() {






				 dataTable = $('#recharge-group').DataTable( {
					"processing": true,
					"serverSide": true,
					"responsive": true,
					"searching": true,
					"select":true,
					"pageLength": "10",
				    "paging": true,
					 "ordering": false,
			
					"ajax":{

						url :plugin_dir_url+"/Participants/ParticipantsScripts/recharge-grid-data.php", // json datasource
						type: "post",  // method  , by default get
						data: function(data) {

							data.Lang = 'fr';
													},

						dataSrc: function(json) {

							var res = json;
							res.recordsFiltered = res.recordsFiltered;
							res.data = res.data;
						//	GetSessionoptions(res.session)	;

							return res.data;
						},
						error: function(){  // error handling
							$(".recharge-group-error").html("");
							$("#recharge-group").append('<tbody class="recharge-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
							$("#recharge-group_processing").css("display","none");

						}

					}







				} );




  $("#loader").hide();
 $("#hidedcontent").show();		


			});


function changefrom()
{
		     datefrom = $( "#datefrom").val();
				dataTable.columns(0).search(datefrom).draw()

}
function changeto()
{

	      to = $( "#dateto").val();
				dataTable.columns(1).search(to).draw();

}
