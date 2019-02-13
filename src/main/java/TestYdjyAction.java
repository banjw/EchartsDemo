
import org.apache.struts2.interceptor.RequestAware;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

/**
 * Created by DELL-PC on 2017/5/15.
 */

public class TestYdjyAction implements RequestAware {
    private Map<String, Object> request;
    Date time = new Date();
    Calendar calendar = Calendar.getInstance();
    SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm");
    public String execute(){
        setGuizhouData();
        setGuiyangData();
        setZunyiData();
        setTongrenData();
        setBijieData();
        setLiupanshuiData();
        setAnshunData();
        setQianxinanData();
        setQiannanData();
        setQiandongnanData();
        return "success";
    }
    /*贵州省数据*/
    public void setGuizhouData(){
        //构造一组数据
        StringBuffer data = new StringBuffer("[\n" +
                "            {name: '贵阳市', value: 71},\n" +
                "            {name: '安顺市', value: 62},\n" +
                "            {name: '省本级社保局', value: 53},\n" +
                "            {name: '贵安新区', value: 144},\n" +
                "            {name: '黔南布依族苗族自治州', value: 135},\n" +
                "            {name: '黔西南布依族苗族自治州', value: 126},\n" +
                "            {name: '六盘水市', value: 117},\n" +
                "            {name: '铜仁市', value: 108},\n" +
                "            {name: '毕节市', value: 199},\n" +
                "            {name: '遵义市', value: 180},\n" +
                "            {name: '黔东南苗族侗族自治州', value: 171},\n" +
                "        ]");
        request.put("data",data);
        StringBuffer table1 = new StringBuffer("[{name:'贵阳市',value:279},\n" +
                "{name:'安顺市',value:268},\n" +
                "{name:'省本级社保局',value:257},\n" +
                "{name:'贵安新区',value:246},\n" +
                "{name:'黔南布依族苗族自治州',value:235},\n" +
                "{name:'黔西南布依族苗族自治州',value:224},\n" +
                "{name:'六盘水市',value:173},\n" +
                "{name:'铜仁市',value:162},\n" +
                "{name:'毕节市',value:151},\n" +
                "{name:'遵义市',value:140},\n" +
                "{name:'黔东南苗族侗族自治州',value:131}]");
        request.put("table1",table1);
        StringBuffer table2 = new StringBuffer("[{name:'异地备案',value:379},\n" +
                "{name:'普通门诊',value:367},\n" +
                "{name:'特殊门诊',value:255},\n" +
                "{name:'普通住院',value:243},\n" +
                "{name:'急症抢救',value:231}]");
        request.put("table2",table2);

        StringBuffer table3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'贵阳市',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        table3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'遵义市',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        table3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'铜仁市',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        table3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'毕节市',value:146},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        table3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'黔东南苗族侗族自治州',value:135},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        table3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'安顺市',value:134},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        table3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'六盘水市',value:123},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        table3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'贵安新区',value:112}]");
        request.put("table3",table3);
    }
    /*贵阳市数据*/
    public void setGuiyangData(){
        //构造一组数据
        StringBuffer guiyangTable1 = new StringBuffer("[{name:'观山湖区',value:171},\n" +
                "{name:'云岩区',value:161},\n" +
                "{name:'南明区',value:151},\n" +
                "{name:'花溪区',value:141},\n" +
                "{name:'乌当区',value:131},\n" +
                "{name:'白云区',value:121},\n" +
                "{name:'修文县',value:71},\n" +
                "{name:'息烽县',value:61},\n" +
                "{name:'开阳县',value:51}]");
        request.put("guiyangTable1",guiyangTable1);

        StringBuffer guiyangTable2 = new StringBuffer("[{name:'异地备案',value:71},\n" +
                "{name:'普通门诊',value:61},\n" +
                "{name:'特殊门诊',value:51},\n" +
                "{name:'普通住院',value:41},\n" +
                "{name:'急症抢救',value:31}]");
        request.put("guiyangTable2",guiyangTable2);


        StringBuffer guiyangTable3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'观山湖区',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        guiyangTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'云岩区',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        guiyangTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'南明区',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        guiyangTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'花溪区',value:146},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        guiyangTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'乌当区',value:135},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        guiyangTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'白云区',value:134},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        guiyangTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'修文县',value:123},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        guiyangTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'息烽县',value:112},\n");
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        guiyangTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'开阳县',value:102}]");
        request.put("guiyangTable3",guiyangTable3);
    }
    /*遵义市数据*/
    public void setZunyiData(){
        //构造一组数据
        StringBuffer zunyiTable1 = new StringBuffer("[{name:'红花岗区',value:171},\n" +
                "{name:'汇川区',value:161},\n" +
                "{name:'新蒲新区',value:151},\n" +
                "{name:'赤水市',value:141},\n" +
                "{name:'仁怀市',value:131},\n" +
                "{name:'遵义县',value:121},\n" +
                "{name:'桐梓县',value:71},\n" +
                "{name:'绥阳县',value:61},\n" +
                "{name:'正安县',value:51},\n" +
                "{name:'凤冈县',value:41},\n" +
                "{name:'湄潭县',value:31}]");
        request.put("zunyiTable1",zunyiTable1);

        StringBuffer zunyiTable2 = new StringBuffer("[{name:'异地备案',value:71},\n" +
                "{name:'普通门诊',value:61},\n" +
                "{name:'特殊门诊',value:51},\n" +
                "{name:'普通住院',value:41},\n" +
                "{name:'急症抢救',value:31}]");
        request.put("zunyiTable2",zunyiTable2);


        StringBuffer zunyiTable3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'红花岗区',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'汇川区',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'新蒲新区',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'赤水市',value:146},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'仁怀市',value:135},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'遵义县',value:134},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'桐梓县',value:123},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'绥阳县',value:112},\n");
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'正安县',value:102},\n");
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'凤冈县',value:134},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        zunyiTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'湄潭县',value:135}]" );
        request.put("zunyiTable3",zunyiTable3);
    }
    /*铜仁市数据*/
    public void setTongrenData(){
        //构造一组数据
        StringBuffer tongrenTable1 = new StringBuffer("[{name:'碧江区',value:171},\n" +
                "{name:'万山区',value:161},\n" +
                "{name:'江口县',value:151},\n" +
                "{name:'石阡县',value:141},\n" +
                "{name:'思南县',value:131},\n" +
                "{name:'德江县',value:121},\n" +
                "{name:'松桃苗族自治县',value:71},\n" +
                "{name:'玉屏侗族自治县',value:61},\n" +
                "{name:'印江土家族苗族自治县',value:51},\n" +
                "{name:'沿河土家族自治县',value:41},\n" +
//                "{name:'大龙开发区',value:31},\n"+
                "{name:'铜仁高新技术产业开发区',value:21}]");
        request.put("tongrenTable1",tongrenTable1);

        StringBuffer tongrenTable2 = new StringBuffer("[{name:'异地备案',value:71},\n" +
                "{name:'普通门诊',value:61},\n" +
                "{name:'特殊门诊',value:51},\n" +
                "{name:'普通住院',value:41},\n" +
                "{name:'急症抢救',value:31}]");
        request.put("tongrenTable2",tongrenTable2);


        StringBuffer tongrenTable3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'碧江区',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'万山区',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'江口县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'石阡县',value:146},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'思南县',value:135},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'德江县',value:134},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'松桃苗族自治县',value:123},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'玉屏侗族自治县',value:112},\n");
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'印江土家族苗族自治县',value:102},\n");
        /*calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'大龙开发区',value:134},\n" );*/
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        tongrenTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'铜仁高新技术产业开发区',value:135}]" );
        request.put("tongrenTable3",tongrenTable3);
    }
    /*毕节市数据*/
    public void setBijieData(){
        //构造一组数据
        StringBuffer bijieTable1 = new StringBuffer("[{name:'大方县',value:171},\n" +
                "{name:'黔西县',value:161},\n" +
                "{name:'金沙县',value:151},\n" +
                "{name:'织金县',value:141},\n" +
                "{name:'纳雍县',value:131},\n" +
                "{name:'赫章县',value:121},\n" +
                "{name:'威宁彝族回族苗族自治县',value:71},\n" +
                "{name:'七星关区',value:61},\n" +
                "{name:'百里杜鹃管委会',value:21}]");
        request.put("bijieTable1",bijieTable1);

        StringBuffer bijieTable2 = new StringBuffer("[{name:'异地备案',value:71},\n" +
                "{name:'普通门诊',value:61},\n" +
                "{name:'特殊门诊',value:51},\n" +
                "{name:'普通住院',value:41},\n" +
                "{name:'急症抢救',value:31}]");
        request.put("bijieTable2",bijieTable2);


        StringBuffer bijieTable3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'大方县',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        bijieTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'黔西县',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        bijieTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'金沙县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        bijieTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'织金县',value:146},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        bijieTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'纳雍县',value:135},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        bijieTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'赫章县',value:134},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        bijieTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'威宁彝族回族苗族自治县',value:123},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        bijieTable3.append("{time:'"+format.format(time)+"',type:'出院办理',name:'七星关区',value:112},\n");
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        bijieTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'百里杜鹃管委会',value:135}]" );
        request.put("bijieTable3",bijieTable3);
    }
    /*六盘水市数据*/
    public void setLiupanshuiData(){
        //构造一组数据
        StringBuffer liupanshuiTable1 = new StringBuffer("[{name:'钟山区',value:171},\n" +
                "{name:'六枝特区',value:161},\n" +
                "{name:'盘县',value:151},\n" +
                "{name:'水城县',value:21}]");
        request.put("liupanshuiTable1",liupanshuiTable1);

        StringBuffer liupanshuiTable2 = new StringBuffer("[{name:'异地备案',value:71},\n" +
                "{name:'普通门诊',value:61},\n" +
                "{name:'特殊门诊',value:51},\n" +
                "{name:'普通住院',value:41},\n" +
                "{name:'急症抢救',value:31}]");
        request.put("liupanshuiTable2",liupanshuiTable2);


        StringBuffer liupanshuiTable3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'钟山区',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        liupanshuiTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'六枝特区',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        liupanshuiTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'盘县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        liupanshuiTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'水城县',value:135}]" );
        request.put("liupanshuiTable3",liupanshuiTable3);
    }
    /*安顺市数据*/
    public void setAnshunData(){
        //构造一组数据
        StringBuffer anshunTable1 = new StringBuffer("[{name:'西秀区',value:171},\n" +
                "{name:'平坝区',value:161},\n" +
                "{name:'普定县',value:151},\n" +
                "{name:'镇宁布依族苗族自治县',value:151},\n" +
                "{name:'关岭布依族苗族自治县',value:151},\n" +
                "{name:'紫云苗族布依族自治县',value:151},\n" +
                "{name:'安顺经济开发区',value:151},\n" +
                "{name:'黄果树风景名胜区',value:21}]");
        request.put("anshunTable1",anshunTable1);

        StringBuffer anshunTable2 = new StringBuffer("[{name:'异地备案',value:71},\n" +
                "{name:'普通门诊',value:61},\n" +
                "{name:'特殊门诊',value:51},\n" +
                "{name:'普通住院',value:41},\n" +
                "{name:'急症抢救',value:31}]");
        request.put("anshunTable2",anshunTable2);


        StringBuffer anshunTable3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'西秀区',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        anshunTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'平坝区',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        anshunTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'普定县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        anshunTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'镇宁布依族苗族自治县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        anshunTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'关岭布依族苗族自治县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        anshunTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'紫云苗族布依族自治县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        anshunTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'安顺经济开发区',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        anshunTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'黄果树风景名胜区',value:135}]" );
        request.put("anshunTable3",anshunTable3);
    }
    /*黔西南布依族苗族自治州数据*/
    public void setQianxinanData(){
        //构造一组数据
        StringBuffer qianxinanTable1 = new StringBuffer("[{name:'兴义市',value:171},\n" +
                "{name:'兴仁县',value:161},\n" +
                "{name:'安龙县',value:151},\n" +
                "{name:'贞丰县',value:151},\n" +
                "{name:'普安县',value:151},\n" +
                "{name:'晴隆县',value:151},\n" +
                "{name:'册亨县',value:151},\n" +
                "{name:'顶效开发区',value:151},\n" +
                "{name:'望谟县',value:21}]");
        request.put("qianxinanTable1",qianxinanTable1);

        StringBuffer qianxinanTable2 = new StringBuffer("[{name:'异地备案',value:71},\n" +
                "{name:'普通门诊',value:61},\n" +
                "{name:'特殊门诊',value:51},\n" +
                "{name:'普通住院',value:41},\n" +
                "{name:'急症抢救',value:31}]");
        request.put("qianxinanTable2",qianxinanTable2);


        StringBuffer qianxinanTable3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'兴义市',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qianxinanTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'兴仁县',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qianxinanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'安龙县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qianxinanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'贞丰县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qianxinanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'普安县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qianxinanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'晴隆县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qianxinanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'册亨县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qianxinanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'望谟县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qianxinanTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'顶效开发区',value:135}]" );
        request.put("qianxinanTable3",qianxinanTable3);
    }
    /*黔南布依族苗族自治州数据*/
    public void setQiannanData(){
        //构造一组数据
        StringBuffer qiannanTable1 = new StringBuffer("[{name:'都匀市',value:171},\n" +
                "{name:'福泉市',value:161},\n" +
                "{name:'荔波县',value:151},\n" +
                "{name:'贵定县',value:151},\n" +
                "{name:'瓮安县',value:151},\n" +
                "{name:'独山县',value:151},\n" +
                "{name:'平塘县',value:151},\n" +
                "{name:'罗甸县',value:151},\n" +
                "{name:'龙里县',value:151},\n" +
                "{name:'惠水县',value:151},\n" +
//                "{name:'三都县',value:151},\n" +
                "{name:'长顺县',value:21}]");
        request.put("qiannanTable1",qiannanTable1);

        StringBuffer qiannanTable2 = new StringBuffer("[{name:'异地备案',value:71},\n" +
                "{name:'普通门诊',value:61},\n" +
                "{name:'特殊门诊',value:51},\n" +
                "{name:'普通住院',value:41},\n" +
                "{name:'急症抢救',value:31}]");
        request.put("qiannanTable2",qiannanTable2);


        StringBuffer qiannanTable3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'都匀市',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'福泉市',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'荔波县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'贵定县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'瓮安县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'独山县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'平塘县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'罗甸县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'龙里县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'惠水县',value:157},\n" );
        /*calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'三都县',value:157},\n" );*/
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiannanTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'长顺县',value:135}]" );
        request.put("qiannanTable3",qiannanTable3);
    }
    /*黔东南苗族侗族自治州数据*/
    public void setQiandongnanData(){
        //构造一组数据
        StringBuffer qiandongnanTable1 = new StringBuffer("[{name:'凯里市',value:171},\n" +
                "{name:'黄平县',value:161},\n" +
                "{name:'施秉县',value:151},\n" +
                "{name:'三穗县',value:151},\n" +
                "{name:'镇远县',value:151},\n" +
                "{name:'岑巩县',value:151},\n" +
                "{name:'天柱县',value:151},\n" +
                "{name:'锦屏县',value:151},\n" +
                "{name:'剑河县',value:151},\n" +
                "{name:'台江县',value:151},\n" +
               /* "{name:'黎平县',value:151},\n" +
                "{name:'从江县',value:151},\n" +
                "{name:'雷山县',value:151},\n" +
                "{name:'麻江县',value:151},\n" +
                "{name:'丹寨县',value:151},\n" +*/
                "{name:'榕江县',value:21}]");
        request.put("qiandongnanTable1",qiandongnanTable1);

        StringBuffer qiandongnanTable2 = new StringBuffer("[{name:'异地备案',value:71},\n" +
                "{name:'普通门诊',value:61},\n" +
                "{name:'特殊门诊',value:51},\n" +
                "{name:'普通住院',value:41},\n" +
                "{name:'急症抢救',value:31}]");
        request.put("qiandongnanTable2",qiandongnanTable2);


        StringBuffer qiandongnanTable3 = new StringBuffer("[{time:'"+format.format(time)+"',type:'门诊结算',name:'凯里市',value:179},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'入院办理',name:'黄平县',value:168},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'施秉县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'三穗县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'镇远县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'天柱县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'锦屏县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'剑河县',value:157},\n" );
        /*calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'台江县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'黎平县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'从江县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'雷山县',value:157},\n" );
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'门诊结算',name:'麻江县',value:157},\n" );*/
        calendar.add(Calendar.HOUR_OF_DAY,-1);
        time = calendar.getTime();
        qiandongnanTable3.append("{time:'"+format.format(time)+"',type:'住院结算',name:'丹寨县',value:135}]" );
        request.put("qiandongnanTable3",qiandongnanTable3);
    }

    public void setRequest(Map<String, Object> map) {
        this.request = map;
    }
}
