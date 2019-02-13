<%--
  Created by IntelliJ IDEA.
  User: DELL-PC
  Date: 2017/5/15
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@page import="javax.servlet.http.HttpServletRequest" %>--%>
<html>
<head>
    <title>贵州省异地就医</title>
    <script src="../echarts/echarts.js" type="text/javascript"></script>
    <script src="../echarts/map/js/gz.js" type="text/javascript"></script>
    <style type="text/css">
        #tableDiv{
            background-color: #1A1C1A;
            width: 99%;
            height: 39%;
            border-top: 1px solid red;
            position: absolute;
            bottom: 1%;
            opacity:0.75;
            color: white;
        }
        #tableDiv1{
            float: left;
            width: 33%;
            height: 100%;
            border-right:1px solid red ;
        }
        #tableDiv2{
            float: left;
            width: 23%;
            height: 100%;
            border-right:1px solid red ;
        }
        #tableDiv3{
            float: left;
            width: 43%;
        }
        h1{
            margin: 0px;
            font-size: 60%;
        }
        h1 span{
            color: black;
            background-color: #05f7ff;
        }
        #tableDiv1 table, #tableDiv2 table,#tableDiv3 table{
            padding-left: 20%;
            width: 100%;
            font-size: 30%;
        }
       /* #tableDiv2 table{
            margin-top: 5%;
        }*/
        table {
            color: white;
        }
        #showButton{
            right: 1%;
            bottom: 2%;
            position: absolute;
            opacity:0.6;
        }
        #hideButton{
            right: 1%;
            top: 56%;
            position: absolute;
            opacity:0.6;
        }
        .tdBorder{
            border-bottom: 1px dotted white;
        }
    </style>
</head>
<body>
    <div id="gzYdjyMap" style="width:100%;height:100%;"></div>

    <input id="hideButton" type="button" value="隐藏" onclick="hideTable();"/>
    <input id="showButton" type="button" value="显示" onclick="showTable();"/>
    <!--表格-->
    <div id="tableDiv">
        <div id="tableDiv1">
            <h1><span>今日医保参保排序</span></h1>
            <table>
                <%--<tr><td>1.贵阳市</td><td><span>171</span>件</td></tr>
                <tr><td>2.安顺市</td><td><span>161</span>件</td></tr>
                <tr><td>3.省本级社保局</td><td><span>151</span>件</td></tr>
                <tr><td>4.贵安新区</td><td><span>141</span>件</td></tr>
                <tr><td>5.黔南布依族苗族自治州</td><td><span>131</span>件</td></tr>
                <tr><td>6.黔西南布依族苗族自治州</td><td><span>121</span>件</td></tr>--%>
            </table>
            <%--<table>
                <tr><td>7.六盘水市</td><td><span>71</span>件</td></tr>
                <tr><td>8.铜仁市</td><td><span>61</span>件</td></tr>
                <tr><td>9.毕节市</td><td><span>51</span>件</td></tr>
                <tr><td>10.遵义市</td><td><span>41</span>件</td></tr>
                <tr><td>11.黔东南苗族侗族自治州</td><td><span>31</span>件</td></tr>
            </table>--%>
        </div>
        <div id="tableDiv2">
            <h1><span>今日事件类型排序</span></h1>
            <table>
                <%--<tr><td>1.异地备案</td><td><span>71</span>件</td></tr>
                <tr><td>2.普通门诊</td><td><span>61</span>件</td></tr>
                <tr><td>3.特殊门诊</td><td><span>51</span>件</td></tr>
                <tr><td>4.普通住院</td><td><span>41</span>件</td></tr>
                <tr><td>5.急症抢救</td><td><span>31</span>件</td></tr>--%>
            </table>
        </div>
        <div id="tableDiv3">
            <h1><span>实时事件</span></h1>
            <table>
                <%--<tr><td>2017/5/16/ 13:02</td><td>门诊结算</td><td>贵阳市</td><td><span>71</span>件</td></tr>
                <tr><td>2017/5/16/ 12:13</td><td>入院办理</td><td>遵义市</td><td><span>61</span>件</td></tr>
                <tr><td>2017/5/16/ 11:33</td><td>门诊结算</td><td>铜仁市</td><td><span>51</span>件</td></tr>
                <tr><td>2017/5/16/ 11:01</td><td>出院办理</td><td>毕节市</td><td><span>41</span>件</td></tr>
                <tr><td>2017/5/16/ 10:53</td><td>住院结算</td><td>黔东南苗族侗族自治州</td><td><span>31</span>件</td></tr>
                <tr><td>2017/5/16/ 10:11</td><td>入院办理</td><td>安顺市</td><td><span>31</span>件</td></tr>
                <tr><td>2017/5/16/ 9:35</td><td>门诊结算</td><td>六盘水市</td><td><span>21</span>件</td></tr>
                <tr><td>2017/5/16/ 9:33</td><td>出院办理</td><td>贵安新区</td><td><span>11</span>件</td></tr>--%>
            </table>
        </div>
    </div>
</body>
<script type="text/javascript" src="../jquery1.8.3/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#showButton").hide();
        var data = <%=request.getAttribute("data")%>;
        var data1 = <%=request.getAttribute("table1")%>;
        var data2 = <%=request.getAttribute("table2")%>;
        var data3 = <%=request.getAttribute("table3")%>;
//        setValueForTable();
        window.clearTimeout(timer);
        setTime(data,data1,data2,data3);
//        paintQy(data);
    });




    //将Echarts定于成全局
    var myChart;
    var geoCoordMap = {
            '贵阳市':[106.6992,26.7682],
            '安顺市':[105.9461844576,26.2536992282],
            '贵安新区':[106.322692,26.5109496],
            '省本级社保局':[106.692692,26.99496],
            '黔南布依族苗族自治州':[107.1186766696,26.1598064743],
            '黔西南布依族苗族自治州':[104.9019900000,25.0981390000],
            '六盘水市':[104.8302421718,26.1933497580],
            '铜仁市':[108.1897374075,27.7199634697],
            '毕节市':[105.2939081544,27.2969074164],
            '遵义市':[106.9272267268,27.7254323080],
            '黔东南苗族侗族自治州':[107.9788900283,26.5777643627]
        };
    option = {
        backgroundColor: '#404a59',
        title: {
            text: '贵州省异地就医',
            left: 'center',
            textStyle: {
                color: '#fff'
            }
        },
        /*数据对应颜色*/
        visualMap: {
            type: 'continuous',
            min: 0,
            max: 200,
            calculable: true,
            top: '30%',
            textStyle:{
                color:'#f8ffff'
            },
            inRange: {
                symbol: 'circle',
                symbolSize: [5, 10],
                color: ['#ff0a07', 'orange', 'yellow','lime','aqua'],
            },
        },
        /*鼠标悬浮提示开关*/
        tooltip: {
            trigger: 'item'
        },
        /*地理坐标系组件*/
        geo: {
            map: 'gz',
            label: {
                emphasis: {
                    show: false
                }
            },
            itemStyle: {
                normal: {
                    areaColor: '#323c48',
                    borderColor: '#111'
                },
                emphasis: {
                    areaColor: '#2a333d'
                }
            },
            bottom: '-50%'
        },
        series : [
            /*画线*/
            {
                name: 'lines',
                type: 'lines',
                zlevel: 1,
                /*特效*/
                effect: {
                    show: true,
                    symbolSize: 6,
                    trailLength: 0.6,
                    color: '#fff',
                    shadowColor: '#08ffe9',
                    shadowBlur: 10,
                },
                lineStyle: {
                    normal: {
                        color: '#08ffe9',
                        width: 0.1,
                        curveness: 0.2,
                    },
                },
                data: [],
//                    data: transferToLineData(lineData),
                tooltip: {
                    show: false,
                },
                zlevel: 1,
            },
            /*画点*/
            {
                name: 'points',
                type: 'effectScatter',
                coordinateSystem: 'geo',
                data: [],
                /*涟漪特效相关配置*/
                rippleEffect: {
                    scale: 10,
                    brushType: 'fill'
                },
                label: {
                    normal: {
                        formatter: function (params) {
                            var data = params.data;
                            return data.name+" : "+data.value[2]+"例";
                        },
                        position: 'right',
                        show: true
                    }
                },
                tooltip: {
                    formatter: function (params) {
                        var data = params.data;
                        return data.name+" : "+data.value[2]+"例";
                    }
                },
                zlevel: 2,
            }
        ]
    };
    //Echarts初始化
    myChart = echarts.init(document.getElementById('gzYdjyMap'), 'dark');
    /*线路data*/
    var lineData =getFromlineData(<%=request.getAttribute("data")%>,"贵阳市");
    //给线数据
    option.series[0].data =transferFromLineData(lineData);
    //加载
    myChart.setOption(option);
    //单击事件
    myChart.on('click', function (params) {
        /*线路data*/
        var lineData =getFromlineData(<%=request.getAttribute("data")%>,params.name);
        //给线数据
        option.series[0].data =transferFromLineData(lineData);
        myChart.setOption(option);
        changeTableData(params.name);
    });
    //双击事件
    myChart.on('dblclick', function (params) {
        /*线路data*/
        var lineData =getFromlineData(<%=request.getAttribute("data")%>,'贵阳市');
        //给线数据
        option.series[0].data =transferFromLineData(lineData);
        myChart.setOption(option);
        changeTableData('贵阳市');
    });
    function paintQy(data) {
        //给点数据
        option.series[1].data = convertData(data);
        option.visualMap.max = getMaxVisualMapValue(data);
        option.visualMap.min = getMinVisualMapValue(data);
        myChart.setOption(option);
    }
    /*迁移数据构造*/
    function getFromlineData(data,name) {
        var res = {};
        var toData = [];
        for(var i = 0; i<data.length; i++){
            if(data[i].name != name){
                toData.push(data[i].name);
            }
        }
        res= {
            from: name,
            to: toData
        };
        return res;
    }
    /* 迁出数据构造*/
    function transferFromLineData(data) {
        var res = [];
        for (var i = 0; i < data.to.length; i++) {
            var fromCoord = geoCoordMap[data.from];
            var toCoord = geoCoordMap[data.to[i]];
            if (fromCoord && toCoord) {
                res.push({
                    name: data.from+"-"+data.to[i],
                    coords: [fromCoord, toCoord]
                });
            }
        }
        return res;
    };
    /* 迁入数据构造*/
    function transferToLineData(data) {
        var res = [];
        for (var i = 0; i < data.to.length; i++) {
            var fromCoord = geoCoordMap[data.to[i]];
            var toCoord = geoCoordMap[data.from];
            if (fromCoord && toCoord) {
                res.push({
                    name: data.from+"-"+data.to[i],
                    coords: [fromCoord, toCoord]
                });
            }
        }
        return res;
    };
    /*点数据构造*/
    function convertData(data) {
        var res = [];
        for (var i = 0; i < data.length; i++) {
            var geoCoord = geoCoordMap[data[i].name];
            if (geoCoord) {
                res.push({
                    name: data[i].name,
                    value: geoCoord.concat(data[i].value)
                });
            }
        }
        return res;
    };

    /*视觉映射最大数据构造*/
    function getMaxVisualMapValue(data) {
        var minValue = data[0].value;
        var maxValue = data[0].value;
        for(var i = 1; i < data.length; i++){
            if(minValue>data[i].value){
                minValue = data[i].value;
            }
            if(maxValue<data[i].value){
                maxValue = data[i].value;
            }
        }
        return maxValue;
//            option.visualMap.min=minValue;
//        option.visualMap.max=maxValue;
    }
    function getMinVisualMapValue(data) {
        var minValue = data[0].value;
        for(var i = 1; i < data.length; i++){
            if(minValue>data[i].value){
                minValue = data[i].value;
            }
        }
        return minValue;
    }
    function hideTable() {
        $("#tableDiv").hide();
        $("#hideButton").hide();
        $("#showButton").show();
    }
    function showTable() {
        $("#tableDiv").show();
        $("#showButton").hide();
        $("#hideButton").show();
    }
    function changeTableData(name) {
//        console.log(name);
        if(name == "贵阳市"){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("guiyangTable1")%>;
            var data2 = <%=request.getAttribute("guiyangTable2")%>;
            var data3 = <%=request.getAttribute("guiyangTable3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
        if(name == "遵义市"){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("zunyiTable1")%>;
            var data2 = <%=request.getAttribute("zunyiTable2")%>;
            var data3 = <%=request.getAttribute("zunyiTable3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
        if(name == "铜仁市"){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("tongrenTable1")%>;
            var data2 = <%=request.getAttribute("tongrenTable2")%>;
            var data3 = <%=request.getAttribute("tongrenTable3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
        if(name == "毕节市"){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("bijieTable1")%>;
            var data2 = <%=request.getAttribute("bijieTable2")%>;
            var data3 = <%=request.getAttribute("bijieTable3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
        if(name == "六盘水市"){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("liupanshuiTable1")%>;
            var data2 = <%=request.getAttribute("liupanshuiTable2")%>;
            var data3 = <%=request.getAttribute("liupanshuiTable3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
        if(name == "安顺市"){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("anshunTable1")%>;
            var data2 = <%=request.getAttribute("anshunTable2")%>;
            var data3 = <%=request.getAttribute("anshunTable3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
        if(name == "黔西南布依族苗族自治州"){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("qianxinanTable1")%>;
            var data2 = <%=request.getAttribute("qianxinanTable2")%>;
            var data3 = <%=request.getAttribute("qianxinanTable3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
        if(name == "黔南布依族苗族自治州"){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("qiannanTable1")%>;
            var data2 = <%=request.getAttribute("qiannanTable2")%>;
            var data3 = <%=request.getAttribute("qiannanTable3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
        if(name == "黔东南苗族侗族自治州"){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("qiandongnanTable1")%>;
            var data2 = <%=request.getAttribute("qiandongnanTable2")%>;
            var data3 = <%=request.getAttribute("qiandongnanTable3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
        if(name ==null || name == undefined || name == ""){
            var data = <%=request.getAttribute("data")%>;
            var data1 = <%=request.getAttribute("table1")%>;
            var data2 = <%=request.getAttribute("table2")%>;
            var data3 = <%=request.getAttribute("table3")%>;
            window.clearTimeout(timer);
            setTime(data,data1,data2,data3);
        }
    }
    /*动态为表格赋值*/
    function setValueForTable(data1,data2,data3) {
        <%--var table1Data = <%=request.getAttribute("table1")%>;
        var table2Data = <%=request.getAttribute("table2")%>;
        var table3Data = <%=request.getAttribute("table3")%>;--%>
        var table1Data = data1;
        var table2Data = data2;
        var table3Data = data3;

        var table1 = $("#tableDiv1 table");
        table1.empty();
        for(var i = 0; i < table1Data.length; i++){
            var tr = null;
            var td1 = null;
            var td2 = null;
            if(i < 3){
                tr = $("<tr style='color:#07dfff;'/>");
                td1 = $("<td class='tdBorder'/>").append((i+1)+"."+table1Data[i].name);
                td2 = $("<td class='tdBorder'/>").append("<span style='color: #07dfff;padding-left: 20px;'>"+table1Data[i].value+"</span>"+" 件");
            }else {
                tr = $("<tr/>");
                td1 = $("<td class='tdBorder'/>").append((i+1)+"."+table1Data[i].name);
                td2 = $("<td class='tdBorder'/>").append("<span style='color: #f4f3ff;padding-left: 20px;'>"+table1Data[i].value+"</span>"+" 件");
            }

            td1.appendTo(tr);
            td2.appendTo(tr);
            tr.appendTo(table1);
        }
        var table2 = $("#tableDiv2 table");
        table2.empty();
        for(var i = 0; i < table2Data.length; i++){
            var tr = null;
            var td1 = null;
            var td2 = null;
            if(i < 3){
                tr = $("<tr style='color:#07dfff;'/>");
                td1 = $("<td class='tdBorder'/>").append((i+1)+"."+table2Data[i].name);
                td2 = $("<td class='tdBorder'/>").append("<span style='color: #07dfff;padding-left: 20px;'>"+table2Data[i].value+"</span>"+" 件");
            }else {
                tr = $("<tr/>");
                td1 = $("<td class='tdBorder'/>").append((i+1)+"."+table2Data[i].name);
                td2 = $("<td class='tdBorder'/>").append("<span style='color: #f4f3ff;padding-left: 20px;'>"+table2Data[i].value+"</span>"+" 件");
            }
            td1.appendTo(tr);
            td2.appendTo(tr);
            tr.appendTo(table2);
        }

        var table3 = $("#tableDiv3 table");
        table3.empty();
        for(var i = 0; i < table3Data.length; i++){
            var tr = null;
            var td1 = null;
            var td2 = null;
            var td3 = null;
            var td4 = null;
            if(i < 3){
                tr = $("<tr style='color:#07dfff;'/>");
                td1 = $("<td class='tdBorder'/>").append(table3Data[i].time);
                td2 = $("<td class='tdBorder'/>").append(table3Data[i].type);
                td3 = $("<td class='tdBorder'/>").append(table3Data[i].name);
                td4 = $("<td class='tdBorder'/>").append("<span style='color: #07dfff;padding-left: 20px;'>"+table3Data[i].value+"</span>"+" 件");
            }else {
                tr = $("<tr/>");
                td1 = $("<td class='tdBorder'/>").append(table3Data[i].time);
                td2 = $("<td class='tdBorder'/>").append(table3Data[i].type);
                td3 = $("<td class='tdBorder'/>").append(table3Data[i].name);
                td4 = $("<td class='tdBorder'/>").append("<span style='color: #f4f3ff;padding-left: 20px;'>"+table3Data[i].value+"</span>"+" 件");
            }

            td1.appendTo(tr);
            td2.appendTo(tr);
            td3.appendTo(tr);
            td4.appendTo(tr);
            tr.appendTo(table3);
        }
    }
    /*定时器全局*/
    var timer;
    /*设置定时函数*/
    function setTime(data,data1,data2,data3) {
         var data = incrementData(data);
         var data1 = incrementData(data1);
         var data2 = incrementData(data2);
         var data3 = incrementData(data3);
        paintQy(data);
//        testQy(data);
        setValueForTable(data1,data2,data3);
        var transfer = JSON.stringify(data);
        var transfer1 = JSON.stringify(data1);
        var transfer2 = JSON.stringify(data2);
        var transfer3 = JSON.stringify(data3);
        /*if(count % 4  == 0){
            window.location.reload();
        }*/
//        timer = window.setTimeout("setTime("+transfer+","+transfer1+","+transfer2+","+transfer3+")",2000);
    }
    /*递增函数*/
    function incrementData(data) {
        var newData = [];
        for(var i = 0; i < data.length; i++){
            if( undefined != data[0].time){
                newData.push({
                    time: data[i].time,
                    type: data[i].type,
                    name: data[i].name,
                    value: data[i].value + 1
                });
            }else {
                newData.push({
                    name: data[i].name,
                    value: data[i].value + 1
                });
            }
        }
        return newData;
    }
    function testQy(data) {
        var data = data;
        var geoCoordMap = {
            '贵阳市':[106.6992,26.7682],
            '安顺市':[105.9461844576,26.2536992282],
            '贵安新区':[106.322692,26.5109496],
            '省本级社保局':[106.692692,26.99496],
            '黔南布依族苗族自治州':[107.1186766696,26.1598064743],
            '黔西南布依族苗族自治州':[104.9019900000,25.0981390000],
            '六盘水市':[104.8302421718,26.1933497580],
            '铜仁市':[108.1897374075,27.7199634697],
            '毕节市':[105.2939081544,27.2969074164],
            '遵义市':[106.9272267268,27.7254323080],
            '黔东南苗族侗族自治州':[107.9788900283,26.5777643627]
        };
        /*迁出数据构造*/
        function getFromlineData(data,name) {
            var res = {};
            var toData = [];
            for(var i = 0; i<data.length; i++){
                if(data[i].name != name){
                    toData.push(data[i].name);
                }
            }
            res= {
                from: name,
                to: toData
            };
            return res;
        }
        /*线路data*/
        var lineData =getFromlineData(data,"贵阳市");
        var transferFromLineData = function (data) {
            var res = [];
            for (var i = 0; i < data.to.length; i++) {
                var fromCoord = geoCoordMap[data.from];
                var toCoord = geoCoordMap[data.to[i]];
                if (fromCoord && toCoord) {
                    res.push({
                        name: data.from+"-"+data.to[i],
                        coords: [fromCoord, toCoord]
                    });
                }
            }
            return res;
        };
        var transferToLineData = function (data) {
            var res = [];
            for (var i = 0; i < data.to.length; i++) {
                var fromCoord = geoCoordMap[data.to[i]];
                var toCoord = geoCoordMap[data.from];
                if (fromCoord && toCoord) {
                    res.push({
                        name: data.from+"-"+data.to[i],
                        coords: [fromCoord, toCoord]
                    });
                }
            }
            return res;
        };
        var convertData = function (data) {
            var res = [];
            for (var i = 0; i < data.length; i++) {
                var geoCoord = geoCoordMap[data[i].name];
                if (geoCoord) {
                    res.push({
                        name: data[i].name,
                        value: geoCoord.concat(data[i].value)
                    });
                }
            }
            return res;
        };

        option = {
            backgroundColor: '#404a59',
            title: {
                text: '贵州省异地就医',
                left: 'center',
                textStyle: {
                    color: '#fff'
                }
            },
            /*数据对应颜色*/
            visualMap: {
                type: 'continuous',
                min: 0,
                max: 200,
                calculable: true,
                top: '30%',
                textStyle:{
                    color:'#f8ffff'
                },
                inRange: {
                    symbol: 'circle',
                    symbolSize: [3, 10],
                    color: ['#ff0a07', 'orange', 'yellow','lime','aqua'],
                },
            },
            /*鼠标悬浮提示开关*/
            tooltip: {
                trigger: 'item'
            },
            /*地理坐标系组件*/
            geo: {
                map: 'gz',
                label: {
                    emphasis: {
                        show: false
                    }
                },
                itemStyle: {
                    normal: {
                        areaColor: '#323c48',
                        borderColor: '#111'
                    },
                    emphasis: {
                        areaColor: '#2a333d'
                    }
                },
                bottom: '-50%'
            },
            series : [
                /*画线*/
                {
                    name: 'lines',
                    type: 'lines',
                    zlevel: 1,
                    /*特效*/
                    effect: {
                        show: true,
                        symbolSize: 6,
                         trailLength: 0.6,
                        color: '#fff',
                        shadowColor: '#08ffe9',
                        shadowBlur: 10,
                    },
                    lineStyle: {
                        normal: {
                            color: '#08ffe9',
                            width: 0.1,
                            curveness: 0.2,
                        },
                    },
                    data: transferFromLineData(lineData),
//                    data: transferToLineData(lineData),
                    tooltip: {
                        show: false,
                    },
                    zlevel: 1,
                },
                /*画点*/
                {
                    name: 'points',
                    type: 'effectScatter',
                    coordinateSystem: 'geo',
                    data: convertData(data.sort(function (a, b) {
                        return a.value > b.value;
                    })),
                    /*涟漪特效相关配置*/
                    rippleEffect: {
                        scale: 10,
                        brushType: 'fill'
                    },
                    label: {
                        normal: {
                            formatter: function (params) {
                                var data = params.data;
                                return data.name+" : "+data.value[2]+"例";
                            },
                            position: 'right',
                            show: true
                        }
                    },
                    tooltip: {
                        formatter: function (params) {
                            var data = params.data;
                            return data.name+" : "+data.value[2]+"例";
                        }
                    },
                    zlevel: 2,
                }
            ]
        };
        function setVisualMapValue(data) {
            var minValue = data[0].value;
            var maxValue = data[0].value;
            for(var i = 1; i < data.length; i++){
                if(minValue>data[i].value){
                    minValue = data[i].value;
                }
                if(maxValue<data[i].value){
                    maxValue = data[i].value;
                }
            }
//            option.visualMap.min=minValue;
            option.visualMap.max=maxValue;
        }
        /*设置映射值*/
        setVisualMapValue(data);
        var chart = echarts.init(document.getElementById('gzYdjyMap'), 'dark');
        chart.setOption(option);
    }
    /*当屏幕大小变动*/
    window.onresize = function () {
        <%--paintQy(<%=request.getAttribute("data")%>);--%>
        myChart.resize();
    }
</script>
</html>
