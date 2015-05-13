$(document).ready( function(){
    username = $('#users').attr('name');
    $.post('php/analytics.php',{users:username}, function(result){
        result = result.substr(1);
        $.getJSON(result,function(data){
        schema ='';
        total_records = Object.keys(data['Suceeded_Analytic']);
        for (i=0; i<total_records.length; i++) {
            pass = data['Suceeded_Analytic'][total_records[i]];
            //alert(pass['Question']);
            //alert(Object.keys(data['Suceeded_Analytic'][total_records[i]]));
            schema +="<div class='col-md-6'>";
            schema +="<div class='box box-primary'><div class='box-header'>";
            schema +="<i class='fa fa-bar-chart-o'></i>";
            schema +="<p class='box-title'>"+pass['Question']+"</p>";
            schema +="<div class='box-tools pull-right'>";
            schema +="<button class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i></button></div>";
            schema +="</div><div class='box-body' id='id_"+i+"'style='display:block'><div id='"+total_records[i]+"' style='height: 350px; padding: 0px; position: relative;'></div>";
            schema +="<div><p>"+pass['Description']+"<p></div>";
            schema +="</div></div></div></div>";
            $('#graphs').append(schema);
            
//alert(data['Suceeded_Analytic'][total_records[i]]['Answer_Type']+"('"+JSON.stringify(pass['Related_Data'])+"')");
            eval(data['Suceeded_Analytic'][total_records[i]]['Answer_Type']+"('"+JSON.stringify(pass['Related_Data'])+"')");
            schema ='';
        }
        });
    });

    $('#graphs').on('click','.btn-box-tool', function(){
        $(this).change('<i class="fa fa-plus"></i>');
        changed = $(this).parents().next().attr('id');
        //alert(changed);
        $('#'+changed).slideToggle('slow');
        $(this).html($(this).html() == '<i class="fa fa-minus"></i>' ? '<i class="fa fa-plus"></i>' : '<i class="fa fa-minus"></i>');
    });
    
    
});



function normal_graph(data) {
    obj = JSON.parse(data);
    dataSource =obj['data'];
    graph_type =obj['graph_type'];
    argumentField = obj['argumentField'];
    valueField = obj['valueField'];
    tooltip = obj['tooltip'];
    x_axis_min_limit = obj['min-x'];
    x_axis_max_limit = obj['max-x'];
    y_axis_min_limit = obj['min-y'];
    y_axis_max_limit = obj['max-y'];
    x_axis_name = obj['x-axis-name'];
    y_axis_name = obj['y-axis-name'];
    series_name =obj['series_name'];
    total = obj['avg'];
    
    $(obj['set']).dxChart({
        dataSource: dataSource,
         commonSeriesSettings:{
            type: graph_type
         },
         series: {
            argumentField: argumentField,
            valueField: valueField,
            name: series_name,
        },
        legend: {
            verticalAlignment: "bottom",
            horizontalAlignment: "center"
        },
        tooltip: {
            enabled: true
        },
	valueAxis: {
            title: {
                text: y_axis_name
            },
	    max:y_axis_max_limit,
	    min: y_axis_min_limit,
            constantLines: [{
                label: {
                    text: 'CGPA ='+total
                },
                width: 2,
                value: total,
                color: '#ff4500',
                dashStyle: 'dash'
            }]
            
        },
	argumentAxis:{
		title:{
                    text:x_axis_name
                },
                max:x_axis_max_limit,
                min:x_axis_min_limit
            }
        });
}


function Comparision_graph(data) {
    
    obj = JSON.parse(data);
    dataSource =obj['data'];
    argumentField = obj['argumentField'];
    graph_type =obj['graph_type'];
    valueField = obj['valueField'];
    series =obj['series'];
    tooltip = obj['tooltip'];
    title = obj['title'];
    x_axis_min_limit = obj['min-x'];
    x_axis_max_limit = obj['max-x'];
    y_axis_min_limit = obj['min-y'];
    y_axis_max_limit = obj['max-y'];
    x_axis_name = obj['x-axis-name'];
    y_axis_name = obj['y-axis-name'];
    
    $(obj['set']).dxChart({
    dataSource: dataSource,
    commonSeriesSettings: {
        argumentField: argumentField,
        type: graph_type,
        hoverMode: "allArgumentPoints",
        selectionMode: "allArgumentPoints"
    },
    series:series,
    title: title,
    legend: {
        verticalAlignment: "bottom",
        horizontalAlignment: "center"
    },
    tooltip: {
        enabled: tooltip
    },
    valueAxis: {
            title: {
                text: y_axis_name
            },
	    max:y_axis_max_limit,
	    min: y_axis_min_limit            
        },
    argumentAxis:{
	    title:{
                text:x_axis_name
            },
            max:x_axis_max_limit,
            min:x_axis_min_limit
        }
});

}










/*
function donut_chart(plot_graph) {
    //return "bar chart";
    var donutData = [
          {label: "Series2", data: 30, color: "#3c8dbc"},
          {label: "Series3", data: 20, color: "#0073b7"},
          {label: "Series4", data: 50, color: "#00c0ef"}
        ];
    $.plot("#"+plot_graph, donutData, {
          series: {
            pie: {
              show: true,
              radius: 1,
              innerRadius: 0.5,
              label: {
                show: true,
                radius: 2 / 3,
                formatter: labelFormatter,
                threshold: 0.1
              }

            }
          },
          legend: {
            show: false
          }
        });
}


function bar_chart(plot_graph) {
    var bar_data = {
          data: [["January", 10], ["February", 8], ["March", 4], ["April", 13], ["May", 17], ["June", 9]],
          color: "#3c8dbc"
        };
        $.plot("#"+plot_graph, [bar_data], {
          grid: {
            borderWidth: 1,
            borderColor: "#f3f3f3",
            tickColor: "#f3f3f3"
          },
          series: {
            bars: {
              show: true,
              barWidth: 0.5,
              align: "center"
            }
          },
          xaxis: {
            mode: "categories",
            tickLength: 0
          }
        });
}

function line_chart(data) {
        //alert(data);
        data = JSON.parse(data);
        $.plot(data[0],data[1],data[2]);
        $("<div class='tooltip-inner' id='line-chart-tooltip'></div>").css({
          position: "absolute",
          display: "none",
          opacity: 0.8
        }).appendTo("body");
        $(data[0]).bind("plothover", function (event, pos, item) {
            
          if (item) {
            var x = item.datapoint[0].toFixed(2),
                    y = item.datapoint[1].toFixed(2);

            $("#line-chart-tooltip").html(item.series.label + " of " + x + " = " + y)
                    .css({top: item.pageY + 5, left: item.pageX + 5})
                    .fadeIn(200);
          } else {
            $("#line-chart-tooltip").hide();
          }

        });
       
}


function labelFormatter(label, series) {
        return "<div style='font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;'>"
                + label
                + "<br/>"
                + Math.round(series.percent) + "%</div>";
      }
*/