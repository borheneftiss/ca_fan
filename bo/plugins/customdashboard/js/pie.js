
//new Chart(document.getElementById("myChart"),{"type":"doughnut","data":{"labels":["Red","Blue","Yellow"],"datasets":[{"label":"My First Dataset","data":[300,50,100],"backgroundColor":["rgb(255, 99, 132)","rgb(54, 162, 235)","rgb(255, 205, 86)"]}]}});
$(document).ready(function() {

displaysms_email_chat();


  });

function displaysms_email_chat()
{

  $.ajax({
    type: "POST",
    url: plugin_dir_url+"/customdashboard/dashboardscript/sms_email.php",
    data: {},
    cache: false,             // To unable request pages to be cached
    success: function(msg){
      //console.log(msg)
      msg=JSON.parse(msg);
      if (msg.result_type=="success")
      {
        //console.log(msg.result_content)
        var ctx = document.getElementById('smsvsemailpie');
        var data = {
            datasets: [{
               label:"My First Dataset",
                data: msg.result_content,
                backgroundColor:["rgb(255, 99, 132)","rgb(54, 162, 235)"]
            }],

            // These labels appear in the legend and in the tooltips when hovering different arcs
            labels: [
                'sms',
                'email',

            ],

        };
        var myPieChart = new Chart(ctx,{
            type: 'pie',
            data: data,

        });

      }else{
        //Materialize.toast(msg.result_code, 3000,'red');
      }
    },
    error: function(data, errorThrown)
    {
      //Materialize.toast('Error', 3000,'red');
    }
  });


}
