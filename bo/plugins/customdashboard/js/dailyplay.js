$(document).ready(function() {

displaydailyplay();


  });

  function displaydailyplay() {

  /*var ctx3 = document.getElementById('dailyplay').getContext('2d');
  var config = {
  type: 'line',
  data: {
    labels: [],
    datasets: [{
        data: [86,114,106,106,107],
        label: "Africa",
        borderColor: "#3e95cd",
        fill: false
      }
    ]
  }

};*/





          $.ajax({
            type: "POST",
            url: plugin_dir_url+"/customdashboard/dashboardscript/dailyplay.php",
            data: {},
            cache: false,             // To unable request pages to be cached
            success: function(msg){
              //console.log(msg)
              msg=JSON.parse(msg);
              if (msg.result_type=="success")
              {
                var ctx3 = document.getElementById('dailyplay').getContext('2d');
                var config = {
                type: 'line',
                data: {
                  labels: msg.result_content_date,
                  datasets: [{
                      data: msg.result_content_total,
                      label: "Daily playing",
                      borderColor: "#3e95cd",
                      fill: false
                    }
                  ]
                }

              };
               window.myLine = new Chart(ctx3, config);
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
