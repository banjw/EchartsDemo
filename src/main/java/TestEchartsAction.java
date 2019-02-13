
import org.apache.struts2.interceptor.RequestAware;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

/**
 * Created by DELL-PC on 2017/5/11.
 */

public class TestEchartsAction implements RequestAware {
    private Map<String, Object> request;
    Date time = new Date();
    Calendar calendar = Calendar.getInstance();
    SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm");

    public String execute(){
        setGuizhouData();
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

    public void setRequest(Map<String, Object> map) {
        this.request = map;
    }
}
