var dataTable;
$(document).ready(function() {
          
			
		  
			/*$('#datefrom').on('change', function() {
				datefrom = $( "#datefrom").val();
				console.log(datefrom);
				dataTable.columns(0).search(datefrom).draw();
				
		
		     })
			 
			 $('#dateto').on('change', function() {
				to = $( "#dateto").val();
				console.log(to);
				dataTable.columns(1).search(to).draw();
				
		
			})*/
		  
              

				 dataTable = $('#winners-group').DataTable( {
					"processing": true,
					"serverSide": true,
					"responsive": true,
					"searching": true,
					"select":true,	
					"pageLength": "10",			
				    "paging": true,
					 "ordering": false,
					"ajax":{
						
						url :plugin_dir_url+"/Participants/ParticipantsScripts/winners-grid-data.php", // json datasource
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
							$(".winners-group-error").html("");
							$("#winners-group").append('<tbody class="winners-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
							$("#winners-group_processing").css("display","none");
							
						}
						
					}
					
				
						
					
					

						
				} );
			 
			
             
  $("#loader").hide();
 $("#hidedcontent").show();		 
			 
			 
			
			});
			
			
function changefrom()
{
		        datefrom = $( "#datefrom").val();
				console.log(datefrom);
				dataTable.columns(0).search(datefrom).draw()
	
}
function changeto()
{
	
	       to = $( "#dateto").val();
				console.log(to);
				dataTable.columns(1).search(to).draw();

}