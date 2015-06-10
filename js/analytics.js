$(document).ready( function(){
    $('#grahps').removeData();
    username = $('#users').attr('name');
    $.post('php/analytics.php',{users:username}, function(result){
        
        result = result.substr(1);
        $.getJSON(result,function(data){
        schema ='';
        total_records = Object.keys(data['Suceeded_Analytic']);
        for (i=0; i<total_records.length; i++) {
            pass = data['Suceeded_Analytic'][total_records[i]];
            if (pass['type'] == 'rank') {
                schema +="<div class='col-md-4'>";
                schema +="<div class='box box-success box-solid'>";
                schema +="<div class='box-header'>";
                schema +="<p class='box-title'>"+pass['Question']+"</p>";
                schema +="<div class='box-tools pull-right'>";
                schema +="<button class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-plus'>";
                schema +="</i></button></div>";
                schema +="</div>";
                schema +="<div class='box-body' id='id_"+i+"'style='display:none'>";
                schema +="<div class='row'>";
                schema +="<div class='col-sm-6' id='college'>";
                schema +="<p id='rank_label_field'>"+pass['college_rank']+"</p>";
                schema +="<p id='rank_field'>"+pass['college']+"</p>";
                schema +="</div>";
                schema +="<div class='col-sm-6' id='university'>";
                schema +="<p id='rank_label_field'>"+pass['university_rank']+"</p>";
                schema +="<p id='rank_field'>"+pass['university']+"</p>";
                schema +="</div>";
                schema +="</div>";
                schema +="</div>";
                schema +="</div>";
                schema +="</div>";
                $('#ranks').append(schema);
                schema ='';
            }else if(pass['type'] == 'graph'){
                
            //alert(pass['type']);
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
        }
        });
    });

    $('#ranks, #graphs').on('click','.btn-box-tool', function(){
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
                text: y_axis_name,
                font:{
                    family: 'Droid Sans, sans-serif',
                }
            },
	    max:y_axis_max_limit,
	    min: y_axis_min_limit,
            constantLines: [{
                label: {
                    text: 'Avg ='+total,
                    font:{
                        family: 'Droid Sans, sans-serif',
                    }
                },
                width: 2,
                value: total,
                color: '#ff4500',
                dashStyle: 'dash'
            }]
            
        },
	argumentAxis:{
		title:{
                    text:x_axis_name,
                    font:{
                        family: 'Droid Sans, sans-serif',
                    }
                },
                max:x_axis_max_limit,
                min:x_axis_min_limit
            }
        });
}


function Comparison_graph(data) {
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
                text: y_axis_name,
                font:{
                    family: 'Droid Sans, sans-serif',
                }
            },
	    max:y_axis_max_limit,
	    min: y_axis_min_limit            
        },
    argumentAxis:{
	    title:{
                text:x_axis_name,
                font:{
                    family: 'Droid Sans, sans-serif',
                }
            },
            max:x_axis_max_limit,
            min:x_axis_min_limit
        }
});

}

function pie_graph(data){
    obj =JSON.parse(data);
    dataSource =obj['data'];
    argumentField = obj['argumentField'];
    graph_type =obj['graph_type'];
    valueField = obj['valueField'];
    title = obj['title'];
    //alert(argumentField);
    $(obj['set']).dxPieChart({
        dataSource: dataSource,
        series: [
            {
                argumentField: argumentField,
                valueField: valueField
            }
        ],
        tooltip: {
            enabled: tooltip
        },
        legend: {
            verticalAlignment: "bottom",
            horizontalAlignment: "center"
        },
        title: title,
        onPointClick: function(e) {
            var point = e.target;
            point.isVisible() ? point.hide() : point.show();
        }
    });
}









