		$(document).ready(function() {
			var preloader = $('.spinner-wrapper');
			preloader.fadeOut(500);
			$("#wpbody-content").attr("style","z-index:unset!important;");
			 $('.modal').modal();
			$('#selectWinner').on('change', function() {
					selectWinner = $( "#selectWinner option:selected" ).val();
					console.log(selectWinner);
					dataTable.columns(1).search(selectWinner).draw();


			  })

			$('#selectSession').on('change', function() {
				selectSession = $( "#selectSession option:selected" ).val();
				console.log(selectSession);
				dataTable.columns(0).search(selectSession).draw();


		     })

			  function GetSessionoptions(data) {

				//$('#selectSession').empty();

			    var output="";

				  output+="<option value=''>&nbsp;</option>";

				  for (var i = 0; i < data.length; i++) {

					output+="<option value='"+data[i].ID+"'>"+data[i].post_title+"</option>";

				  }
				 // $('#selectSession').html('');
				  $("#selectSession").html(output);
			  }


		// 	$('#participants-group').addClass('responsive-table')
				var dataTable = $('#participants-group').DataTable( {
					"processing": true,
					"serverSide": true,
					"responsive": true,
					"searching": true,
					"select":true,
					"pageLength": "10",
				    "paging": true,
					 "ordering": false,
					"ajax":{

						url :plugin_dir_url+"/clients/ParticipantsScripts/participants-grid-data.php", // json datasource
						type: "post",  // method  , by default get
						data: function(data) {
							data.limit = 10;
							data.offset = 0;

							data.order = "asc";
							//data.search = "";
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
							$(".participants-group-error").html("");
							$("#participants-group").append('<tbody class="participants-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
							$("#participants-group_processing").css("display","none");

						}

					},

					"language": {
                "url": "http://cdn.datatables.net/plug-ins/1.10.16/i18n/French.json"
                },

					"columnDefs": [
						{ targets:"_all", orderable: false },
						{ targets:[0], "visible": false, },
			        	
			        ]



				} );




			//$("#participants-group_wrapper div:first").prepend('<button id="addplayer" class="btn-floating green" onclick="openmodalParticipant()" style="background:green;float:left;margin-left: 10px;" href="#modal1"><i class="material-icons">add</i></button><span>or</span>');
	        $('#addplayer').next().css('width','40%');


			'<div class = "file-field input-field"><a class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i><input type = "file" name="file" id="import-file"/></a></div>'



			 setTimeout(function(){
				 $("#participants-group_wrapper div:first").prepend('<button id="addplayer" class="btn-floating green" onclick="openmodalParticipant()" style="background:green;float:left;margin-left: 10px;" href="#modal1"><i class="material-icons">add</i></button><span>&nbsp;&nbsp;</span><div class = "file-field"><a class="btn-floating  waves-effect waves-light red"><i class="material-icons">file_upload</i><input type = "file" name="file" id="import-file"/></a></div>');
				 $( "#import-file" ).change(function() {
					 var preloaderFadeOutTime = 500;
					 var preloader = $('.spinner-wrapper');
					 preloader.fadeIn(preloaderFadeOutTime);
						var file_data = $("#import-file").prop("files")[0];
					    var form_data = new FormData();
					    form_data.append("file", file_data);

						$.ajax({
							url :plugin_dir_url+"/clients/ParticipantsScripts/import-participants-data.php", // json datasource
							type: "POST",  // method  , by default get
							cache: false,
					        contentType: false,
					        processData: false,
					        data: form_data,
						    success: function(data) {
							 console.log('success');
							 preloader.fadeOut(preloaderFadeOutTime);
							 $('#participants-group').DataTable().ajax.reload();
				            },
				            error: function(XMLHttpRequest, textStatus, errorThrown) {
				            	preloader.fadeOut(preloaderFadeOutTime);
				                console.log('error');
				            }
						    });
						});
			 },300);

			
			
 $("#loader").hide();
 $("#hidedcontent").show();		
			
			
			});


function openmodalParticipant()
{

			$("#adddiv :input").each(function(){

				$(this).val("");
				$(this).focusout();

				});

        Materialize.updateTextFields();
			$('#addparticipant').modal('open');
}

function adddata()
{



	f=true;

    $("#adddiv :input").each(function(){

			if ($(this).val()=="")

				{
					$(this).attr("class","materialize-textarea validate invalid");
					f=false;
				}
	});


/*     if ($("#title").val()=="")
	{
		$("#title").attr("class","materialize-textarea validate invalid");
		f=false;
	}
	if ($("#description").val()=="")
	{
		$("#description").attr("class","materialize-textarea validate invalid");
		f=false;
	}
*/

if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($("#newemail").val())))
  {
   f=false;
  }


	data1 = new FormData();
	data1.append('newcin', $("#newcin").val());
	data1.append('newfirstname',$("#newfirstname").val());
	data1.append('newlastname', $("#newlastname").val());
	data1.append('newemail', $("#newemail").val());
	data1.append('newbirthdate',$("#newbirthdate").val());
	data1.append('newcity', $("#newcity").val());
	data1.append('newphone', $("#newphone").val());
	




	if(f)
	{
		$.ajax({
			type: "POST",
			url: plugin_dir_url+"/clients/ParticipantsScripts/insert_player.php",
			data: data1,
			 contentType: false,       // The content type used when sending data to the server.
			cache: false,             // To unable request pages to be cached
			processData:false,
			success: function(msg){
				msg=JSON.parse(msg);
				if (msg.result_type=="success")
				{
					Materialize.toast(msg.result_code, 3000,'green');
					$('#addparticipant').modal('close');
					
					var dataTable = $('#participants-group').DataTable();
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

function sendNotifications(telephone) {
	var Data ={'telephone':telephone}
	$.ajax({
		url: plugin_dir_url+"/plugins/clients/ParticipantsScripts/send_notifications.php",
		type: 'POST',
		data: Data,
		dataType:'text',
		success: function(data) {
  
		console.log("sent");
		}
	});
}



function ficheclientmodal(clientid)
{
	
	$('#viewparticipant').modal('open')
	$.ajax({
		type: "POST",
		url: plugin_dir_url+"/clients/ParticipantsScripts/getinfo.php",
		data: {'number':clientid},
		success: function(msg){
			msg=JSON.parse(msg);
			
			if (msg.result_type=="success")
			{
				$('#username').html(msg.result_content.firstname+' '+msg.result_content.lastname);
				$('#useremail').html(msg.result_content.email);
				$('#userbirthday').html(''+msg.result_content.birthdate);
				$('#usercity').html(''+msg.result_content.city);
				console.log(msg.result_content.cards)
				var output='';
				for(var i=0;i<msg.result_content.cards.length;i++)
				{
					output+='<div class="row col l12 m12 s12">';
					output+='<div class="col l4 m4 s4">'+msg.result_content.cards[i].Tel+'</div>';
					var numero=msg.result_content.cards[i].Numero;
					var points=msg.result_content.cards[i].Nbpoint;
					if(msg.result_content.cards[i].Numero==null)
					{
						numero="";
					}
					if(msg.result_content.cards[i].Nbpoint==null)
					{
						points="";
					}
					
					output+='<div class="col l4 m4 s4">'+numero+'</div>';
					output+='<div class="col l4 m4 s4">'+points+'</div>';
					output+='</div>';
				}
				
				
				$('#cards').html(output)
			}
		}
	});
	

}

function editmodal(number)
{


	$.ajax({
			type: "POST",
			url: plugin_dir_url+"/clients/ParticipantsScripts/getinfo.php",
			data: {'number':number},
			success: function(msg){
				msg=JSON.parse(msg);
				console.log(msg)
				if (msg.result_type=="success")
				{

					//console.log(msg.result_content.age);

					$("#clientid").val(msg.result_content.ID)
					$("#editemail").val(msg.result_content.email)
					$("#editlastname").val(msg.result_content.lastname)
					$("#editfirstname").val(msg.result_content.firstname)
					$("#editbirthdate").val(msg.result_content.birthdate)
					$("#editcity").val(msg.result_content.city)
					


					$('#editparticipant').modal('open');

					Materialize.updateTextFields();




				}else
				{
					Materialize.toast('Server Error', 3000,'red');
				}
			},
			error: function(data, errorThrown)
			{
				Materialize.toast('Server Error', 3000,'red');
			}
		});

}






function saveedit()
{



	f=true;


	$("#editdiv :input").each(function(){ if ($(this).val()=="")

				{
					$(this).attr("class","materialize-textarea validate invalid");
					f=false;
				} });


	if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($("#editemail").val())))
  {
   f=false;
  }




	data1 = new FormData();
	
	data1.append('editfirstname',$("#editfirstname").val());
	data1.append('editlastname', $("#editlastname").val());
	data1.append('editemail', $("#editemail").val());
	data1.append('editbirthdate',$("#editbirthdate").val());
	data1.append('editcity', $("#editcity").val());
	data1.append('clientid', $("#clientid").val());



	if(f)
	{
		$.ajax({
			type: "POST",
			url: plugin_dir_url+"/clients/ParticipantsScripts/edit_player.php",
			data: data1,
			contentType: false,       // The content type used when sending data to the server.
			cache: false,             // To unable request pages to be cached
			processData:false,
			success: function(msg){
				msg=JSON.parse(msg);
				if (msg.result_type=="success")
				{
					Materialize.toast(msg.result_code, 3000,'green');
					$('#editparticipant').modal('close');
					var dataTable = $('#participants-group').DataTable();
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
