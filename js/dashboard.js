$(document).ready(function(){
    //alert($('#usertype').html());
    $.post('php/examtype.php',{types:$('#usertype').attr('name'),active_id:$('#users').attr('name')}, function(result){
        result = result.substr(1);
        $.getJSON(result,function(data){
            obj =data;
            functionList =[];
            //console.log(obj);
            graph_list =(Object.keys(obj));
            //alert(graph_list);
            for (var i = 0; i < graph_list.length; i++) {
                test =obj[graph_list[i]];
                //alert(graph_list[i]);
                
                schema = "<div class='col-md-6'>";
                schema +="<div class='box box-success box-solid'>";
                schema +="<div class='box-header with-border'>";
                schema +="<h3 class='box-title'>"+test['title']+"</h3>";
                schema +="<div class='box-tools pull-right'>";
                schema +="<button class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i></button>";
                schema +="</div></div>";
                schema +="<div class='box-body' id='"+graph_list[i]+"'>";
                schema +="<div id='graphs' style='height: 450px; padding: 0px; position: relative;'></div>";
                schema +="</div></div>";

                $('#DashboardGraphs').append(schema);
            
                functions = test['graphFunction']+"('"+graph_list[i]+"','"+JSON.stringify(test)+"')";
                //alert(functions);
                functionList.push(functions);
            };
            //console.log(functionList);
            for (var i = 0; i < functionList.length; i++) {
                eval(functionList[i]);
            };
        });

        });
});



function NormalGraph(setLocation,data){
    obj = JSON.parse(data);
    console.log(obj);
    $("#"+setLocation+" #graphs").dxChart({
        dataSource: obj['dataSource'],
         commonSeriesSettings:{
            type: "bar"
         },
         series: {
            argumentField: "stream",
            valueField: "Total"
        },
        legend: {
            verticalAlignment: "bottom",
            horizontalAlignment: "center"
        },
        tooltip: {
            enabled: true
        },
    valueAxis: {
        max:obj['maximum']+5,
        min:obj['minimum']-5
        }
        });
}

function ComparisionGraph(setLocation,data){
    obj = JSON.parse(data);
    $("#"+setLocation+" #graphs").dxChart({
    dataSource: obj['dataSource'],
    commonSeriesSettings: {
        argumentField: "year",
        type: "bar",
        hoverMode: "allArgumentPoints",
        selectionMode: "allArgumentPoints"
    },
    series:obj['series'],
    legend: {
        verticalAlignment: "bottom",
        horizontalAlignment: "center"
    },
    tooltip: {
        enabled: "true"
    },
    valueAxis: {
        max:obj['maximum'],
        min:obj['minimum']            
        }
    });
}





/*
function BarChart(setLocation,graphData){
    alert(setLocation);
    alert(graphData);
    schema = "<div class='col-md-6'>";
    schema +="<div class='box box-success box-solid'>";
    schema +="<div class='box-header with-border'>";
    schema +="<h3 class='box-title'>"+JSON.parse(Titles)['Title1']+"</h3>";
    schema +="<div class='box-tools pull-right'>";
    schema +="<button class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i></button>";
    schema +="</div></div>";
    schema +="<div class='box-body' id='"+setLocation+"'>";
    schema +="<div id='graphs' style='height: 350px; padding: 0px; position: relative;'></div>";
    schema +="</div></div>";

    $('#DashboardGraphs').append(schema);

    $("#"+setLocation+" #graphs").dxChart({
        dataSource: JSON.parse(graphData), 
        series: {
            argumentField: "stream",
            valueField: "total",
            name: "My oranges",
            type: "bar",
            color: '#ffa500'
        },legend: {
            verticalAlignment: "bottom",
            horizontalAlignment: "center"
        }
    });
}



function PieChart(setLocation,graphName,graphData){
    alert(JSON.parse(graphData)[i]['total'])
    $("#"+setLocation+" #graphs").dxPieChart({
    dataSource: JSON.parse(graphData),
    legend: {
            verticalAlignment: "bottom",
            horizontalAlignment: "center"
        },
    series: [
        {
            argumentField: "stream",
            valueField: "total",
            label:{
                visible: true,
                connector:{
                    visible:true,           
                    width: 1
                }
            }
        }
    ],
    title: "Total user registered"
});
}

function YearlyBarChart(setLocation,graphName,graphData,Titles){
    //alert(Titles);
    Titles = JSON.parse(Titles);
    //alert();
    obj = JSON.parse(graphData);
    dataSource1 = [];
    dataSource2 =[];
    yearsList =[];
    stream = [];
    for (var i = 0; i < obj.length; i++) {
        streamName = Object.keys(obj[i]);
        stream.push(streamName);
        //console.log(JSON.stringify(obj[i][streamName]));
        for (var j = 0; j < obj[i][streamName].length; j++) {
                   if(yearsList){
                    if(yearsList.indexOf(obj[i][streamName][j]['year']) == -1){
                        yearsList.push(obj[i][streamName][j]['year']);
                    } 
                   }else{
                    yearsList.push(obj[i][streamName][j]['year']);
                   }
              };
        yearsList.sort();
    };

    
    for (var k = 0; k < yearsList.length; k++) {
        test1 ={};
        test2 ={};
        test1['Year'] = test2['Year'] = yearsList[k].toString();
        for (var i = 0; i < stream.length; i++) {
        //alert(JSON.stringify(obj[i][stream[i]]));
            for (var j = 0; j < obj[i][stream[i]].length; j++) {
                if (obj[i][stream[i]][j]['year'] == yearsList[k]) {
                    test1[stream[i]] = obj[i][stream[i]][j]['total marks'];
                    test2[stream[i]] = obj[i][stream[i]][j]['total user'];
                };
            };
        };
        dataSource1.push(test1);
        dataSource2.push(test2);
        test1 = test2 =[];
    };

    for (var i = 0; i < Object.keys(Titles).length; i++) {
        //alert(Titles["Title"+(i+1)]);
        //console.log(eval("dataSource"+(i+1)));
        SideBarChart(setLocation+(i+1),graphName,eval("dataSource"+(i+1)),Titles["Title"+(i+1)]);
    };

    //alert(JSON.strigify(dataSource1));
    //alert(dataSource1);
    //SideBarChart(setLocation+"1",graphName,dataSource1);
    //alert(dataSource2);
    //SideBarChart(setLocation+"2",graphName,dataSource2);
    yearsList =[];
    stream =[];
}

function SideBarChart(setLocation,graphName,graphData,titles){
    
    schema = "<div class='col-md-12'>";
    schema +="<div class='box box-success box-solid'>";
    schema +="<div class='box-header with-border'>";
    schema +="<h3 class='box-title'>"+titles+"</h3>";
    schema +="<div class='box-tools pull-right'>";
    schema +="<button class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i></button>";
    schema +="</div></div>";
    schema +="<div class='box-body' id='"+setLocation+"'>";
    schema +="<div id='graphs' style='height: 350px; padding: 0px; position: relative;'></div>";
    schema +="</div></div>";

    $('#DashboardGraphs').append(schema);

    //$('#DashboardGraphs').append("<div class='col-md-6'><div class='box box-success box-solid'><div class='box-header'><h1 class='box-title'>"+setLocation+"</h1></div><div class='box-body'><div id="+setLocation+"><div id='graphs' style='height: 350px; padding: 0px; position: relative;'></div></div></div></div></div>");


    //alert(graphData);
    $("#"+setLocation+" #graphs").dxChart({
    dataSource: graphData,
    commonSeriesSettings: {
        argumentField: "Year",
        type: "bar",
        hoverMode: "allArgumentPoints",
        selectionMode: "allArgumentPoints",
    },
    series: [
        { valueField: "IT", name: "IT" },
        { valueField: "COMP", name: "COMP" },
        { valueField: "ELEX", name: "ELEX" },
        { valueField: "EXTC", name: "EXTC" }
    ],
    legend: {
        verticalAlignment: "bottom",
        horizontalAlignment: "center"
    },

    onPointClick: function (e) {
        e.target.select();
    }
});
}
*/
