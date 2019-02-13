<%--
  Created by IntelliJ IDEA.
  User: DELL-PC
  Date: 2017/5/11
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>贵州地图</title>
    <script src="../echarts/echarts.js" type="text/javascript"></script>
   <%-- <script src="ta-echart3-all/theme/dark.js" type="text/javascript"></script>--%>
    <%--<script src="ta-echart3-all/map/js/china.js" type="text/javascript"></script>--%>
    <script src="../echarts/map/js/gz.js" type="text/javascript"></script>
   <%-- <script src="ta-echart3-all/map/js/gzexternal.js" type="text/javascript"></script>
    <script src="ta-echart3-all/map/js/as.js" type="text/javascript"></script>
    <script src="ta-echart3-all/map/js/bj.js" type="text/javascript"></script>
    <script src="ta-echart3-all/map/js/gy.js" type="text/javascript"></script>
    <script src="ta-echart3-all/map/js/lps.js" type="text/javascript"></script>
    <script src="ta-echart3-all/map/js/qdn.js" type="text/javascript"></script>
    <script src="ta-echart3-all/map/js/qn.js" type="text/javascript"></script>
    <script src="ta-echart3-all/map/js/qxn.js" type="text/javascript"></script>
    <script src="ta-echart3-all/map/js/tr.js" type="text/javascript"></script>
    <script src="ta-echart3-all/map/js/zy.js" type="text/javascript"></script>--%>

    <style type="text/css">
        /*市州按钮*/
        #buttonDivSz{
            position: absolute;
            bottom:40%;
            left: 50%;
        }
        /*表格*/
        /*table{
            background-color: #343234;
            color: white;
            font-size: 50%;
        }
        table tr td,th{
            border: 1px white solid;
        }
        !*表头*!
        table thead{
            background-color: #1BB395;
        }
        !*表格隔列换色*!
        table tr td:nth-child(even){
            !*background-color: #FF7E52;*!
            background-color: #DB6B67;
          !*  background-color: white;
            color: black;
            font-size: 50%;*!
        }*/
        .gzTable{
            background-color: #343234;
            color: white;
            font-size: 50%;
        }
        .gzTable tbody{
            padding: 0;
            margin: 0;
        }
        .gzTable thead{
            background-color: #1BB395;
        }
        .gzTable tbody tr td table{
            background-color: #343234;
            color: white;
            font-size: 50%;
        }
        .gzTable tbody tr td:nth-child(even) table{
            background-color: #DB6B67;
        }
        .gzTable tbody tr td table td{
            border: 1px white solid;
        }
    </style>
</head>
<body>
    <%--地图--%>
    <div id="gzMap" style="width:50%;height:60%;margin:0 auto;float:left;"></div>
    <%--柱状图--%>
    <div id="gzBar" style="width:50%;height:60%;margin:0 auto;float:right;"></div>
    <div id="buttonDivSz"  style="text-align: center;">
        <input id="hideButton" type="button" value="隐藏" onclick="hideTable();"/>
        <input id="showButton" type="button" value="显示" onclick="showTable();"/>
    </div>

    <div id="gzTableDiv" style="width:100%;height:40%;">
        <%--省表格--%>
        <h1 id="tableTitle" style="background-color: #343234;font-size: 120%;color: white;text-align: center;padding: 0;margin: 0;">贵州省数据</h1>
        <table id="table1" class="gzTable" style="width:100%;height: 45%;" >
            <thead>
                <tr>
                <th>年龄分布</th>
                <th>特殊人群分布</th>
                <th>户口性质分布</th>
                <th>参保状态分布</th>
                <th>待遇状态分布</th>
                <th>性别分布</th>
                <th>连续缴费人数分布</th>
                <th>参保数</th>
                <th>待遇领取人数</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="height: 100%;">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%;">
                            <tr>
                                <td>0-15岁</td>
                                <td>123人</td>
                            </tr>
                            <tr>
                                <td>16-55岁</td>
                                <td>123456人</td>
                            </tr>
                            <tr>
                                <td>55岁以上</td>
                                <td>54321人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%;">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%;">
                            <tr>
                                <td>重度残疾</td>
                                <td>123人</td>
                            </tr>
                            <tr>
                                <td>低保</td>
                                <td>123456人</td>
                            </tr>
                            <tr>
                                <td>三无</td>
                                <td>54321人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%;">
                            <tr>
                                <td>农村户口</td>
                                <td>645656人</td>
                            </tr>
                            <tr>
                                <td>城镇户口</td>
                                <td>345656人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>参保缴费</td>
                                <td>345656人</td>
                            </tr>
                            <tr>
                                <td>终止缴费</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>正常发放</td>
                                <td>345656人</td>
                            </tr>
                            <tr>
                                <td>暂停发放</td>
                                <td>123456人</td>
                            </tr>
                            <tr>
                                <td>终止发放</td>
                                <td>54321人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>男</td>
                                <td>345656人</td>
                            </tr>
                            <tr>
                                <td>女</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>10年以内</td>
                                <td>345656人</td>
                            </tr>
                            <tr>
                                <td>10-15年</td>
                                <td>123456人</td>
                            </tr>
                            <tr>
                                <td>15年以上</td>
                                <td>54321人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="table2" class="gzTable" style="width:100%;height: 45%;" >
                <thead>
                <tr>
                    <th>缴费人数</th>
                    <th>续保人数</th>
                    <th>续保率</th>
                    <th>停保人数</th>
                    <th>新增待遇人数</th>
                    <th>停发待遇人数</th>
                    <th>续发待遇人数</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>30%</td>
                                <td>40%</td>
                                <td>50%</td>
                                <td>60%</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        <%--<table style="width:100%;" >
                <thead>
                <tr>
                    <th>缴费档次人数分布</th>
                    <th>100档</th>
                    <th>200档</th>
                    <th>300档</th>
                    <th>400档</th>
                    <th>500档</th>
                    <th>600档</th>
                    &lt;%&ndash;<th>700档</th>
                    <th>800档</th>
                    <th>900档</th>
                    <th>1000档</th>
                    <th>1100档</th>
                    <th>1200档</th>&ndash;%&gt;
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td></td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>
                    &lt;%&ndash;<td style="height: 100%">
                        <table style="padding:0;margin: 0;text-align: center;width: 100%;height: 100%">
                            <tr>
                                <td>日</td>
                                <td>月</td>
                                <td>年</td>
                                <td>累计</td>
                            </tr>
                            <tr>
                                <td>123人</td>
                                <td>456人</td>
                                <td>789人</td>
                                <td>123456人</td>
                            </tr>
                        </table>
                    </td>&ndash;%&gt;
                </tr>
                </tbody>
            </table>--%>
        <%--市州表格--%>
        <table id="szTable" style="width:100%;display: none;" >
            <thead>
                <tr>
                    <th>市州</th>
                    <th>年龄分布</th>
                    <th>特殊人群分布</th>
                    <th>户口性质分布</th>
                    <th>参保状态分布</th>
                    <th>待遇状态分布</th>
                    <th>性别分布</th>
                    <th>连续缴费人数分布</th>
                    <th>缴费档次人数分布</th>
                    <th>参保数</th>
                    <th>缴费人数</th>
                    <th>续保率</th>
                    <th>续保人数</th>
                    <th>停保人数</th>
                </tr>
            </thead>
            <tr>
                <td>毕节市</td>
                <td>16-55:345656人</td>
                <td>低保:345656人</td>
                <td>城镇:345656人</td>
                <td>参保缴费:345656人</td>
                <td>正常发放:345656人</td>
                <td>男:345656人</td>
                <td>10年以内:345656人</td>
                <td>1000档:345656人</td>
                <td>345656人</td>
                <td>345656人</td>
                <td>56%</td>
                <td>345345</td>
                <td>345345</td>
            </tr>
            <tr>
                <td>遵义市</td>
                <td>16-55:345656人</td>
                <td>低保:345656人</td>
                <td>城镇:345656人</td>
                <td>参保缴费:345656人</td>
                <td>正常发放:345656人</td>
                <td>男:345656人</td>
                <td>10年以内:345656人</td>
                <td>1000档:345656人</td>
                <td>345656人</td>
                <td>345656人</td>
                <td>56%</td>
                <td>345345</td>
                <td>345345</td>
            </tr>
            <tr>
                <td>铜仁市</td>
                <td>16-55:345656人</td>
                <td>低保:345656人</td>
                <td>城镇:345656人</td>
                <td>参保缴费:345656人</td>
                <td>正常发放:345656人</td>
                <td>男:345656人</td>
                <td>10年以内:345656人</td>
                <td>1000档:345656人</td>
                <td>345656人</td>
                <td>345656人</td>
                <td>56%</td>
                <td>345345</td>
                <td>345345</td>
            </tr>
            <tr>
                <td>六盘水市</td>
                <td>16-55:345656人</td>
                <td>低保:345656人</td>
                <td>城镇:345656人</td>
                <td>参保缴费:345656人</td>
                <td>正常发放:345656人</td>
                <td>男:345656人</td>
                <td>10年以内:345656人</td>
                <td>1000档:345656人</td>
                <td>345656人</td>
                <td>345656人</td>
                <td>56%</td>
                <td>345345</td>
                <td>345345</td>
            </tr>
            <tr>
                <td>安顺市</td>
                <td>16-55:345656人</td>
                <td>低保:345656人</td>
                <td>城镇:345656人</td>
                <td>参保缴费:345656人</td>
                <td>正常发放:345656人</td>
                <td>男:345656人</td>
                <td>10年以内:345656人</td>
                <td>1000档:345656人</td>
                <td>345656人</td>
                <td>345656人</td>
                <td>56%</td>
                <td>345345</td>
                <td>345345</td>
            </tr>
            <tr>
                <td>贵阳市</td>
                <td>16-55:345656人</td>
                <td>低保:345656人</td>
                <td>城镇:345656人</td>
                <td>参保缴费:345656人</td>
                <td>正常发放:345656人</td>
                <td>男:345656人</td>
                <td>10年以内:345656人</td>
                <td>1000档:345656人</td>
                <td>345656人</td>
                <td>345656人</td>
                <td>56%</td>
                <td>345345</td>
                <td>345345</td>
            </tr>
            <tr>
                <td>黔西南布依族苗族自治州</td>
                <td>16-55:345656人</td>
                <td>低保:345656人</td>
                <td>城镇:345656人</td>
                <td>参保缴费:345656人</td>
                <td>正常发放:345656人</td>
                <td>男:345656人</td>
                <td>10年以内:345656人</td>
                <td>1000档:345656人</td>
                <td>345656人</td>
                <td>345656人</td>
                <td>56%</td>
                <td>345345</td>
                <td>345345</td>
            </tr>
            <tr>
                <td>黔南布依族苗族自治州</td>
                <td>16-55:345656人</td>
                <td>低保:345656人</td>
                <td>城镇:345656人</td>
                <td>参保缴费:345656人</td>
                <td>正常发放:345656人</td>
                <td>男:345656人</td>
                <td>10年以内:345656人</td>
                <td>1000档:345656人</td>
                <td>345656人</td>
                <td>345656人</td>
                <td>56%</td>
                <td>345345</td>
                <td>345345</td>
            </tr>
            <tr>
                <td>黔东南苗族侗族自治州</td>
                <td>16-55:345656人</td>
                <td>低保:345656人</td>
                <td>城镇:345656人</td>
                <td>参保缴费:345656人</td>
                <td>正常发放:345656人</td>
                <td>男:345656人</td>
                <td>10年以内:345656人</td>
                <td>1000档:345656人</td>
                <td>345656人</td>
                <td>345656人</td>
                <td>56%</td>
                <td>345345</td>
                <td>345345</td>
            </tr>
        </table>
    </div>
</body>
<script type="text/javascript" src="../jquery1.8.3/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
//        gzCityMap();
        gzBar();
        paintMap('贵州省');

        $("#showButton").hide();
    });



    function paintMap(name) {

        var data =[
            {name:'贵阳市',value:[
                /*维度联动*/
                0.64,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"64%"}]},
            {name:'遵义市',value:[
                /*维度联动*/
                0.70,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"70%"}]},
            {name:'铜仁市',value:[
                /*维度联动*/
                0.86,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"86%"}]},
            {name:'毕节市',value:[
                /*维度联动*/
                0.54,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"54%"}]},
            {name:'六盘水市',value:[
                /*维度联动*/
                0.50,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"50%"}]},
            {name:'安顺市',value:[
                /*维度联动*/
                0.46,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"46%"}]},
            {name:'黔西南布依族苗族自治州',value:[
                /*维度联动*/
                0.36,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"36%"}]},
            {name:'黔南布依族苗族自治州',value:[
                /*维度联动*/
                0.32,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"32%"}]},
            {name:'黔东南苗族侗族自治州',value:[
                /*维度联动*/
                0.24,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"24%"}]}
        ];
        option = {
//            backgroundColor: '#25499F',
            /*标题组件，包含主标题和副标题*/
            title: {
                text: '贵州省参保情况统计图',
                /*水平安放位置，默认为左侧*/
                x: 'center'
            },
            /*提示框组件*/
            /*tooltip: {
             /!*提示框浮层内容格式器，支持字符串模板和回调函数两种形式*!/
             formatter: function (params) {
             var data = params.data.value;
             var res =  '地区：' + params.name +"<br/>";
             for(var i = 1; i < data.length; i++){
             res += data[i].name+":"+data[i].value+"<br/>";
             }
             return res;
             }
             },*/
            visualMap : {
                min : 0,
                max : 1,
//                text : [ '高', '低' ],
                /*定义 在选中范围中 的视觉元素*/
                calculable: true,
                inRange: {
                    /*图元的颜色*/
                    color: [ 'orangered', 'yellow', 'green' ]
                },
                precision : 2,//精度
                dimension : 0,
                textStyle : {
                    color : '#EDEDED'
                },
                /*formatter : function(value) {
                 // 范围标签显示内容。
                 return parseFloat(value * 100).toFixed(2) + '%';
                 }*/

            },
            /*系列列表。每个系列通过 type 决定自己的图表类型*/
            series:[
                {
                    type: 'map',
                    /*地图类型*/
                    map: choseMap(name),
                    top: '5%',
                    bottom: '-1%',
                    /*图形上的文本标签，可用于说明图形的一些数据信息*/
                    label: {
                        normal: {
                            show: true

                        },
                        emphasis: {
                            show: true
                        }
                    },
                    data: []
                }
            ]
        }

        var myChart = echarts.init(document.getElementById('gzMap'), 'dark');
        myChart.setOption(option);
        myChart.on('click', function (params) {
//        console.log(params.name);
            paintMap(params.name);
        });
    }
    /*根据参数名选取地图*/
    function choseMap(name) {
        var rang = ['贵州省','贵阳市','遵义市','铜仁市','毕节市','六盘水市','安顺市','黔西南布依族苗族自治州','黔南布依族苗族自治州','黔东南苗族侗族自治州'];
        var index = rang.indexOf(name);
        if(index > 0){
            if(name == "贵州省"){
                return 'gz';
            }
            if(name == "贵阳市"){
                return 'gy';
            }
            if(name == "遵义市"){
                return 'zy';
            }
            if(name == "铜仁市"){
                return 'tr';
            }
            if(name == "毕节市"){
                return 'bj';
            }
            if(name == "六盘水市"){
                return 'lps';
            }
            if(name == "安顺市"){
                return 'as';
            }
            if(name == "黔西南布依族苗族自治州"){
                return 'qxn';
            }
            if(name == "黔南布依族苗族自治州"){
                return 'qn';
            }
            if(name == "黔东南苗族侗族自治州"){
                return 'qdn';
            }
        }else {
            return 'gz';
        }
    }





















    /*当屏幕大小变动*/
    window.onresize = function () {
        gzCityMap();
        gzBar();
    }
    //显示全省信息
    function gzMap(){
        var data =[
            {name:'贵州省',value:[
                /*维度联动*/
                0.64,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"64%"}]}
        ];
        option = {
//            backgroundColor: '#25499F',
                /*标题组件，包含主标题和副标题*/
                title: {
                    text: '贵州省参保情况统计图',
                    /*水平安放位置，默认为左侧*/
                    x: 'center'
                },
                /*提示框组件*/
                tooltip: {
                    /*提示框浮层内容格式器，支持字符串模板和回调函数两种形式*/
                    formatter: function (params) {
                        var data = params.data.value;
                        var res =  '地区：' + params.name +"<br/>";
                        for(var i = 1; i < data.length; i++){
                            res += data[i].name+":"+data[i].value+"<br/>";
                        }
                        return res;
                    }
                },
            visualMap : {
                min : 0,
                max : 1,
                text : [ '高', '低' ],
                /*定义 在选中范围中 的视觉元素*/
                inRange: {
                    /*图元的颜色*/
                    color: [ 'orangered', 'yellow', 'green' ]
                },
                precision : 2,//精度
                dimension : 0,
                textStyle : {
                    color : '#EDEDED'
                },
                formatter : function(value) {
                    // 范围标签显示内容。
                    return parseFloat(value * 100).toFixed(2) + '%';
                }

            },
                /*系列列表。每个系列通过 type 决定自己的图表类型*/
                series:[
                    {
                        /*系列名称，用于tooltip的显示，legend 的图例筛选，在 setOption 更新数据和配置项时用于指定对应的系列*/
                        id: 'gzexternal',
                        type: 'map',
                        /*地图类型*/
                        map: 'gzexternal',
//                    map:'gz',
                        /*是否开启鼠标缩放和平移漫游*/
//                        roam: true,
//                        top: '10%',
//                        bottom: '10%',
                        /*图形上的文本标签，可用于说明图形的一些数据信息*/
                        label: {
                            normal: {
                                show: true

                            },
                            emphasis: {
                                show: true
                            }
                        },
                        top: '5%',
                        bottom: '-1%',
                        data: data
                    }
                ]
            }
            
        var chart = echarts.init(document.getElementById('gzMap'), 'dark');
        chart.setOption(option);
        chart.on('click', function (params) {
            gzCityMap();
        });
    }
    //显示市州信息
    function gzCityMap(){
        var data =[
            {name:'贵阳市',value:[
                /*维度联动*/
                0.64,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"64%"}]},
            {name:'遵义市',value:[
                /*维度联动*/
                0.70,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"70%"}]},
            {name:'铜仁市',value:[
                /*维度联动*/
                0.86,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"86%"}]},
            {name:'毕节市',value:[
                /*维度联动*/
                0.54,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"54%"}]},
            {name:'六盘水市',value:[
                /*维度联动*/
                0.50,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"50%"}]},
            {name:'安顺市',value:[
                /*维度联动*/
                0.46,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"46%"}]},
            {name:'黔西南布依族苗族自治州',value:[
                /*维度联动*/
                0.36,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"36%"}]},
            {name:'黔南布依族苗族自治州',value:[
                /*维度联动*/
                0.32,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"32%"}]},
            {name:'黔东南苗族侗族自治州',value:[
                /*维度联动*/
                0.24,
                {name:"人口总数",value:43702934},
                {name:"已参保人数",value:28256615},
                {name:"未参保人数",value:15446319},
                {name:"参保率",value:"24%"}]}
        ];
        option = {
//            backgroundColor: '#25499F',
            /*标题组件，包含主标题和副标题*/
            title: {
                text: '贵州省参保情况统计图',
                /*水平安放位置，默认为左侧*/
                x: 'center'
            },
            /*提示框组件*/
            tooltip: {
                /*提示框浮层内容格式器，支持字符串模板和回调函数两种形式*/
                formatter: function (params) {
                    var data = params.data.value;
                    var res =  '地区：' + params.name +"<br/>";
                    for(var i = 1; i < data.length; i++){
                        res += data[i].name+":"+data[i].value+"<br/>";
                    }
                    return res;
                }
            },
            visualMap : {
                min : 0,
                max : 1,
//                text : [ '高', '低' ],
                /*定义 在选中范围中 的视觉元素*/
                calculable: true,
                inRange: {
                    /*图元的颜色*/
                    color: [ 'orangered', 'yellow', 'green' ]
                },
                precision : 2,//精度
                dimension : 0,
                textStyle : {
                    color : '#EDEDED'
                },
                formatter : function(value) {
                    // 范围标签显示内容。
                    return parseFloat(value * 100).toFixed(2) + '%';
                }

            },
            /*系列列表。每个系列通过 type 决定自己的图表类型*/
            series:[
                {
                    /*系列名称，用于tooltip的显示，legend 的图例筛选，在 setOption 更新数据和配置项时用于指定对应的系列*/
                    id: 'gz',
                    type: 'map',
                    /*地图类型*/
                    map: 'gz',
                    top: '5%',
                    bottom: '-1%',
                    /*图形上的文本标签，可用于说明图形的一些数据信息*/
                    label: {
                        normal: {
                            show: true

                        },
                        emphasis: {
                            show: true
                        }
                    },
                    data: data
                }
            ]
        }

        var chart = echarts.init(document.getElementById('gzMap'), 'dark');
        chart.setOption(option);
        chart.on('click', function (params) {
            gzMap();
        });
    }
    //显示各区县信息
    function gzQuXianMap(params_name) {
        var series_map = "";

            var data =[
                {name:'贵州省',value:[
                    /*维度联动*/
                    0.64,
                    {name:"人口总数",value:43702934},
                    {name:"已参保人数",value:28256615},
                    {name:"未参保人数",value:15446319},
                    {name:"参保率",value:"64%"}]}
            ];
            option = {
//            backgroundColor: '#25499F',
                /*标题组件，包含主标题和副标题*/
                title: {
                    text: '贵州省参保情况统计图',
                    /*水平安放位置，默认为左侧*/
                    x: 'center'
                },
                /*提示框组件*/
                tooltip: {
                    /*提示框浮层内容格式器，支持字符串模板和回调函数两种形式*/
                    formatter: function (params) {
                        var data = params.data.value;
                        var res =  '地区：' + params.name +"<br/>";
                        for(var i = 1; i < data.length; i++){
                            res += data[i].name+":"+data[i].value+"<br/>";
                        }
                        return res;
                    }
                },
                visualMap : {
                    min : 0,
                    max : 1,
                    text : [ '高', '低' ],
                    /*定义 在选中范围中 的视觉元素*/
                    inRange: {
                        /*图元的颜色*/
                        color: [ 'orangered', 'yellow', 'green' ]
                    },
                    precision : 2,//精度
                    dimension : 0,
                    textStyle : {
                        color : '#EDEDED'
                    },
                    formatter : function(value) {
                        // 范围标签显示内容。
                        return parseFloat(value * 100).toFixed(2) + '%';
                    }

                },
                /*系列列表。每个系列通过 type 决定自己的图表类型*/
                series:[
                    {
                        /*系列名称，用于tooltip的显示，legend 的图例筛选，在 setOption 更新数据和配置项时用于指定对应的系列*/
                        id: 'gzexternal',
                        type: 'map',
                        /*地图类型*/
                        map: 'gzexternal',
//                    map:'gz',
                        /*是否开启鼠标缩放和平移漫游*/
//                        roam: true,
//                        top: '10%',
//                        bottom: '10%',
                        /*图形上的文本标签，可用于说明图形的一些数据信息*/
                        label: {
                            normal: {
                                show: true

                            },
                            emphasis: {
                                show: true
                            }
                        },
                        data: data
                    }
                ]
            }

            var chart = echarts.init(document.getElementById('gzMap'), 'dark');
            chart.setOption(option);
            chart.on('click', function (params) {
                gzCityMap();
            });
        }
    //根据名字转化地图js
    /*function () {

    }*/
    //市州柱状图
    function gzBar() {
        var data =[
            {
                catagery:"人数",
                data:[
                    {
                        "name": "贵阳市",
                        "value": 5851462
                    },
                    {
                        "name": "遵义市",
                        "value": 5251462
                    },
                    {
                        "name": "黔南布依族苗族自治州",
                        "value": 4651462
                    },
                    {
                        "name": "安顺市",
                        "value": 3688424
                    }, {
                        "name": "六盘水市",
                        "value": 4051462
                    }, {
                        "name": "毕节市",
                        "value": 2865755
                    }, {
                        "name": "铜仁市",
                        "value": 1666049
                    }, {
                        "name": "黔西南布依族苗族自治州",
                        "value": 2256941
                    }, {
                        "name": "黔东南苗族侗族自治州",
                        "value": 1077040
                    }
                ]
            },
            {
                catagery:"退休比例",
                data:[
                    {
                        "name": "贵阳市",
                        "value": 0.25
                    },
                    {
                        "name": "遵义市",
                        "value": 0.28
                    },
                    {
                        "name": "黔南布依族苗族自治州",
                        "value": 0.18
                    },
                    {
                        "name": "安顺市",
                        "value": 0.24
                    }, {
                        "name": "六盘水市",
                        "value": 0.26
                    }, {
                        "name": "毕节市",
                        "value": 0.22
                    }, {
                        "name": "铜仁市",
                        "value": 0.2
                    }, {
                        "name": "黔西南布依族苗族自治州",
                        "value": 0.18
                    }, {
                        "name": "黔东南苗族侗族自治州",
                        "value": 0.2
                    }
                ]
            },
            {
                catagery:"累计参保数",
                data:[
                    {
                        "name": "贵阳市",
                        "value": 51462
                    },
                    {
                        "name": "遵义市",
                        "value": 44419
                    },
                    {
                        "name": "黔南布依族苗族自治州",
                        "value": 51462
                    },
                    {
                        "name": "安顺市",
                        "value": 88424
                    }, {
                        "name": "六盘水市",
                        "value": 66028
                    }, {
                        "name": "毕节市",
                        "value": 65755
                    }, {
                        "name": "铜仁市",
                        "value": 66049
                    }, {
                        "name": "黔西南布依族苗族自治州",
                        "value": 56941
                    }, {
                        "name": "黔东南苗族侗族自治州",
                        "value": 77040
                    }
                ]
            },
            {
                catagery:"当天参保数",
                data:[
                    {
                        "name": "贵阳市",
                        "value": 587
                    },
                    {
                        "name": "遵义市",
                        "value": 419
                    },
                    {
                        "name": "黔南布依族苗族自治州",
                        "value": 462
                    },
                    {
                        "name": "安顺市",
                        "value": 424
                    }, {
                        "name": "六盘水市",
                        "value": 328
                    }, {
                        "name": "毕节市",
                        "value": 755
                    }, {
                        "name": "铜仁市",
                        "value": 449
                    }, {
                        "name": "黔西南布依族苗族自治州",
                        "value": 941
                    }, {
                        "name": "黔东南苗族侗族自治州",
                        "value": 740
                    }
                ]
            }
        ]
        function sortJson(a,b) {
            return a.value>b.value;
        }
        var rsData =[];
        var txblData=[];
        var ljcbsData=[];
        var dtcbsData=[];
        for(var i = 0; i<data.length; i++){
            if(data[i].catagery == "人数"){
                rsData = data[i].data.sort(sortJson);
            }
            if(data[i].catagery == "退休比例"){
                txblData = data[i].data.sort(sortJson);
            }
            if(data[i].catagery == "累计参保数"){
                ljcbsData = data[i].data.sort(sortJson);
            }
            if(data[i].catagery == "当天参保数"){
                dtcbsData = data[i].data.sort(sortJson);
            }
        }
        option = {
            tooltip : {
                trigger: 'axis',
                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            /*图例组件展现了不同系列的标记(symbol)，颜色和名字。可以通过点击图例控制哪些系列不显示*/
            legend: {
                /*图例选择的模式，控制是否可以通过点击图例改变系列的显示状态*/
                selectedMode: 'single',
                /*图例的数据数组。数组项通常为一个字符串，每一项代表一个系列的 name*/
                data: ['当天参保数','累计参保数','人数', '退休比例'],
                selected: {
                    '当天参保数':true,
                    '累计参保数':false,
                    '人数':false,
                    '退休比例':false
                }
            },
            /*直角坐标系内绘图网格*/
            grid: {
                left: '-10%',
                right: '-15%',
                bottom: '1%',
                /*grid 区域是否包含坐标轴的刻度标签*/
                containLabel: true
            },
            /*直角坐标系 grid 中的 x 轴*/
            xAxis:  [
                {
                /* 'value' 数值轴，适用于连续数据*/
                type: 'value'
                }
            ],
            /*直角坐标系 grid 中的 y 轴*/
            yAxis: [
                {
                    /*'category' 类目轴，适用于离散的类目数据，为该类型时必须通过 data 设置类目数据*/
                    type: 'category',
                    show: false,
                    /*人数*/
                    data: data[0].data.map(function(ele) {
                        return ele.name;
                    })
                },
                {
                    /*'category' 类目轴，适用于离散的类目数据，为该类型时必须通过 data 设置类目数据*/
                    type: 'category',
                    show: false,
                    /*退休比例*/
                    data: data[1].data.map(function(ele) {
                        return ele.name;
                    })
                },
                {
                    /*'category' 类目轴，适用于离散的类目数据，为该类型时必须通过 data 设置类目数据*/
                    type: 'category',
                    show: false,
                    /*累计参保数*/
                    data: data[2].data.map(function(ele) {
                        return ele.name;
                    })
                },
                {
                    /*'category' 类目轴，适用于离散的类目数据，为该类型时必须通过 data 设置类目数据*/
                    type: 'category',
                    show: false,
                    /*当天参保数*/
                    data: data[3].data.map(function(ele) {
                        return ele.name;
                    })
                }
            ],
            series: [
                {
                    name: '当天参保数',
                    type: 'bar',
                    yAxisIndex: 3,
                    itemStyle: {
                        normal:{
                            /*渐变颜色 LinearGradient(0, 0, 1, 0 x轴渐变 LinearGradient(0, 0, 0, 1 y轴渐变*/
                            color: new echarts.graphic.LinearGradient(0, 0, 1, 0, [{
                                offset: 0,
                                color: '#00ff7f'
                            }, {
                                offset: 1,
                                color: '#068fff'
                            }]),
                            //柱形边框圆角半径，单位px（顺时针左上，右上，右下，左下）
                            barBorderRadius: [0, 5, 5, 0],
                        }
                    },
                    label: {
                        normal: {
                            show: true,
                            position: 'right',
                            formatter: '{b} : {c}'
                        }
                    },
                    data: dtcbsData.map(function(ele) {
                        return ele.value;
                    })
                },
                {
                    name: '累计参保数',
                    type: 'bar',
                    yAxisIndex: 2,
                    itemStyle: {
                        normal:{
                            /*渐变颜色 LinearGradient(0, 0, 1, 0 x轴渐变 LinearGradient(0, 0, 0, 1 y轴渐变*/
                            color: new echarts.graphic.LinearGradient(0, 0, 1, 0, [{
                                offset: 0,
                                color: '#a8b9ff'
                            }, {
                                offset: 1,
                                color: '#164bff'
                            }]),
                            barBorderRadius: [0, 5, 5, 0],
                        }
                    },
                    label: {
                        normal: {
                            show: true,
                            position: 'right',
                            formatter: '{b} : {c}'
                        }
                    },
                    data: ljcbsData.map(function(ele) {
                        return ele.value;
                    })
                },
                {
                    name: '人数',
                    type: 'bar',
                    yAxisIndex: 0,
                    /*图形上的文本标签*/
                    itemStyle: {
                        normal:{
                            /*渐变颜色 LinearGradient(0, 0, 1, 0 x轴渐变 LinearGradient(0, 0, 0, 1 y轴渐变*/
                            color: new echarts.graphic.LinearGradient(0, 0, 1, 0, [{
                                offset: 0,
                                color: '#ddff82'
                            }, {
                                offset: 1,
                                color: '#2aff10'
                            }]),
                            barBorderRadius: [0, 5, 5, 0],
                        }
                    },
                    label: {
                        normal: {
                            show: true,
                            /*通过相对的百分比或者绝对像素值表示标签相对于图形包围盒左上角的位置*/
                            position: 'right',
                            /*模板变量有 {a}、{b}、{c}，分别表示系列名，数据名，数据值。*/
                            formatter: '{b} : {c}'
                        }
                    },
                    data: rsData.map(function(ele) {
                        return ele.value;
                    })
                },
                {
                    name: '退休比例',
                    type: 'bar',
                    yAxisIndex: 1,
                    itemStyle: {
                        normal:{
                            /*渐变颜色 LinearGradient(0, 0, 1, 0 x轴渐变 LinearGradient(0, 0, 0, 1 y轴渐变*/
                            color: new echarts.graphic.LinearGradient(0, 0, 1, 0, [{
                                offset: 0,
                                color: '#ffdea0'
                            }, {
                                offset: 1,
                                color: '#ff7e0e'
                            }]),
                            barBorderRadius: [0, 5, 5, 0],
                        }
                    },
                    label: {
                        normal: {
                            show: true,
                            position: 'right',
                            formatter: '{b} : {c}'
                            /*formatter: function (params) {
                                return params.name + ":" + parseFloat(params.value * 100).toFixed(2) + '%';;
                            }*/
                        }
                    },
                    data: txblData.map(function(ele) {
                        return ele.value;
                    })
                },
            ]
        };
        var chart = echarts.init(document.getElementById('gzBar'), 'dark');
        chart.setOption(option);
    }
    //市州隐藏表格
    function hideTable() {
        $("#gzTableDiv").hide();
        $("#gzMap").height("100%");
        $("#gzBar").height("100%");
        gzCityMap();
        gzBar();
        $("#hideButton").hide();
        $("#showButton").show();
        $("#buttonDivSz").css("bottom","7px");
    }
    //市州显示表格
    function showTable() {
        $("#gzMap").height("60%");
        $("#gzBar").height("60%");
        gzCityMap();
        gzBar();
        $("#gzTableDiv").show();
        $("#hideButton").show();
        $("#showButton").hide();
        $("#buttonDivSz").css("bottom","40%");
    }
</script>
</html>
