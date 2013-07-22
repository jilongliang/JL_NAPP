package com.app.json;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.PostMethod;

import com.app.entity.duapp.Address;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
@SuppressWarnings("all")
/**
 * @author liangjilong
 * @date:2013-07-18
 */
public class JsonMap {
	private static Gson gson=new Gson();
	private static final HttpClient client = new HttpClient();
	private static final String url = "http://api.map.baidu.com/geocoder/v2/?ak=E4805d16520de693a3fe707cdc962045&callback=renderReverse&location=39.983424,116.322987&output=json&pois=1";

	public static void main(String[] args) throws Exception {

		///////////////////////////////////
		//setDataByJsonLib();
		//setDataByGson();
		///////////////////////////////////
		//getDataByJsonLib(url);
		//getDataByGson(url);
		///////////////////////////////////
		//getStrToJsonByJsonLib();
		//getObjectToJsonByJsonLib();
		//getArrayToJsonByJsonLib();
		getArrayToJsonByJSONLib();
		//getStrToJsonByGson();
		//getObjectToJsonByGson();
		//getArrayToJsonByGson();
		///////////////////////////////////
	}

	/**
	 * ByJsonLib把字符串转换成Json数据
	 * @throws Exception
	 */
	private static void getStrToJsonByJsonLib()throws Exception
	{
		String jsonStr="{\"city\":\"广州市\",\"province\":\"广东省\"}"; //这本身是json数据,也是字符串!
		 //String jsonStr="{city:广州市,province:广东省}"; //JsonLib不支持这个格式
		JSONObject jsonObject=new JSONObject();
		jsonObject=jsonObject.fromObject(jsonStr);
		if(!jsonObject.isEmpty()){
			System.out.println(jsonObject.get("province")+"\t"+jsonObject.get("city"));
		}
	}
	/**
	 * ByGson把字符串转换成Json数据
	 * @throws Exception
	 */
	private static void getStrToJsonByGson()throws Exception
	{
		//String jsonStr="{\"city\":\"广州市\",\"province\":\"广东省\"}"; //这本身是json数据,也是字符串!
		 String jsonStr="{city:广州市,province:广东省}"; 
		 Address addr =gson.fromJson(jsonStr,Address.class);//把字符串转换成Json
		 String json=gson.toJson(addr);//把对象转换成json
		 System.out.println(json);
		 System.out.println(addr.getProvince()+"\t"+addr.getCity());
	}

	/**
	 * Gson结合反射对象,把对象转换成Json数据
	 * @throws Exception
	 */
	private static void getObjectToJsonByGson()throws Exception
	{
		 Address addr = new Address(); 
		 addr.setProvince("广东省");
		 addr.setCity("广州市");
		 String json=gson.toJson(addr);//把对象转换成Json
		 //创建一个JsonParser对象
		 //JsonParser parser = new JsonParser();  
		 //创建一个JsonElement对象
         //JsonElement jsonEl = parser.parse(json);  
		 Type type = new TypeToken<Address>(){}.getType();//通过反射
		 Address add= gson.fromJson(json,type);
		 //Address add= gson.fromJson(jsonEl,type);
		 System.out.println(add.getProvince()+"\t"+add.getCity());
	}
	/**
	 * ByJsonLib,把对象转换成Json数据
	 * @throws Exception
	 */
	private static void getObjectToJsonByJsonLib()throws Exception
	{
		 Address addr = new Address(); 
		 addr.setProvince("广东省");
		 addr.setCity("广州市");
		 JSONObject jsonObject=new JSONObject();
		 jsonObject=jsonObject.fromObject(addr);
		 Address addrs=  (Address) JSONObject.toBean(jsonObject, Address.class);
		 System.out.println(addrs.getProvince()+"\t"+addrs.getCity());
	}
	
	/**
	 * 通过ByJSONLib把数组转换成Json数据
	 * @param url
	 * @throws Exception
	 */
	private static void getArrayToJsonByJsonLib()throws Exception
	{ 
		Address address=new Address();
		address.setDistrict("天河区");
		address.setCity("广州");
		address.setProvince("广东省");
		JSONArray jsonArr = JSONArray.fromObject(address);  //把对象转换成Json对象
		 //注释掉的也可以执行
		//Map<String, Class<Address>> map=new HashMap<String,Class<Address>>();
		//map.put("address", Address.class);
	    //List<Address> lists = JSONArray.toList(jsonArr, Address.class, map); //把对象Json数组转换成Json数组
		List<Address> lists = JSONArray.toList(jsonArr, Address.class); //把对象Json数组转换成Json数组
	    for (Address obj : lists) {  
	    	System.out.println(obj.getProvince());
	    	System.out.println(obj.getCity());
	    	System.out.println(obj.getDistrict());
	    }
	}
	
	/**
	 * 通过ByJSONLib把数组转换成Json数据
	 * @param url
	 * @throws Exception
	 */
	private static void getArrayToJsonByJSONLib()throws Exception
	{ 
		List<Address> lists=new ArrayList<Address>();
		for (int i = 1; i <=12; i++) {
			Address addr = new Address(); 
			addr.setProvince("第"+i+"个省份");
			addr.setCity("第"+i+"个城市");
			addr.setCityCode("130"+i);
			addr.setStreet("街道"+i);
			addr.setStreetNumber("街道号码"+i);
			lists.add(addr);
		}
		JSONArray jsonArr = JSONArray.fromObject(lists);  //把对象转换成Json对象
		System.out.println(jsonArr);
		
		Map<String, Class<Address>> map=new HashMap<String,Class<Address>>();
		//拼接成address[{"city":"第1个城市","cityCode":"1301","district":"","province":"第1个省份","street":"街道1","streetNumber":"街道号码1"},{"city":"第2个城市","cityCode":"1302","district":"","province":"第2个省份","street":"街道2","streetNumber":"街道号码2"},{"city":"第3个城市","cityCode":"1303","district":"","province":"第3个省份","street":"街道3","streetNumber":"街道号码3"},{"city":"第4个城市","cityCode":"1304","district":"","province":"第4个省份","street":"街道4","streetNumber":"街道号码4"},{"city":"第5个城市","cityCode":"1305","district":"","province":"第5个省份","street":"街道5","streetNumber":"街道号码5"},{"city":"第6个城市","cityCode":"1306","district":"","province":"第6个省份","street":"街道6","streetNumber":"街道号码6"},{"city":"第7个城市","cityCode":"1307","district":"","province":"第7个省份","street":"街道7","streetNumber":"街道号码7"},{"city":"第8个城市","cityCode":"1308","district":"","province":"第8个省份","street":"街道8","streetNumber":"街道号码8"},{"city":"第9个城市","cityCode":"1309","district":"","province":"第9个省份","street":"街道9","streetNumber":"街道号码9"},{"city":"第10个城市","cityCode":"13010","district":"","province":"第10个省份","street":"街道10","streetNumber":"街道号码10"},{"city":"第11个城市","cityCode":"13011","district":"","province":"第11个省份","street":"街道11","streetNumber":"街道号码11"},{"city":"第12个城市","cityCode":"13012","district":"","province":"第12个省份","street":"街道12","streetNumber":"街道号码12"}]数组形势
		map.put("address", Address.class);//
	    List<Address> listAdds = JSONArray.toList(jsonArr, Address.class, map); //把对象Json数组转换成Json数组
	
		for(Iterator iter=listAdds.iterator();iter.hasNext();)
		{
			Address add=(Address)iter.next();
			System.out.println(add.getProvince()+"\t"+add.getCity()+"\t"+add.getStreet()+"\t"+add.getCityCode());
		} 
	}
	/**
	 * 通过Gson把数组转换成Json数据
	 * @param url
	 * @throws Exception
	 */
	private static void getArrayToJsonByGson()throws Exception
	{
		List<Address> lists=new ArrayList<Address>();
		for (int i = 1; i <=12; i++) {
			Address addr = new Address(); 
			addr.setProvince("第"+i+"个省份");
			addr.setCity("第"+i+"个城市");
			lists.add(addr);
		}
		String json=gson.toJson(lists);//把数组对象转换成Json
		Type type = new TypeToken<List<Address>>(){}.getType();//通过反射
		List<Address> adds= gson.fromJson(json,type);
		for (Address a:adds) {
			System.out.println(a.getCity());
		}
	}
	/**
	 * 通过Gson组装Json数据
	 */
	private  static void setDataByGson(){
		///////////////////组装json////////////////////
		 JsonObject jsonObject=new JsonObject();
		 Map<String, String> lists = new HashMap <String, String>(); 
		 lists.put("广东省", "广州市");
		 lists.put("广州市", "天河区");
		 lists.put("天河区", "棠东"); 
         String json=gson.toJson(lists);//转换成json数据
         System.out.println(json); //输出json
         
         ///////////////////获取json////////////////////
         JsonParser parser = new JsonParser();
		 JsonElement jsonEl = parser.parse(json);
         JsonObject jsonObjRoot = null;
         jsonObjRoot = jsonEl.getAsJsonObject();
         if(jsonObjRoot.isJsonObject()&&jsonObjRoot.get("天河区")!=null &&jsonObjRoot.get("天河区").getAsString()!=""){
        	 String district=jsonObjRoot.get("天河区").getAsString();
        	 System.out.println(district);
         }
	} 
	
	/**
	 * 用gson去解析数据
	 * @param url网止连接
	 * @throws Exception
	 */
	private static void getDataByGson(String url) throws Exception {
		PostMethod method = new PostMethod(url);
		int statusCode = client.executeMethod(method);
		if (statusCode == HttpStatus.SC_OK) {
			String responseData = method.getResponseBodyAsString();
			//处理页面的json数据
			int start = responseData.indexOf("(") + 1;
			responseData = responseData.substring(start, responseData.lastIndexOf(")"));
			
			// 创建一个JsonParser
			JsonParser parser = new JsonParser();
			JsonElement jsonEl = parser.parse(responseData);
			// 把JsonElement对象转换成JsonObject
			JsonObject jsonObjRoot = null;
			if (jsonEl.isJsonObject()) {
				 jsonObjRoot = jsonEl.getAsJsonObject();
				 String status="",result="",lat="",lng="",formatted_address="",business="",city="",district="",province="",street="",street_number="",cityCode="";
				 //String status=gson.toJson(jsonObjRoot.get("status"));//方法一
				 status=jsonObjRoot.get("status").getAsString();//方法二
				 JsonElement resultEl=jsonObjRoot.get("result");//result节点
				 
				 JsonElement locationEl=resultEl.getAsJsonObject().get("location");//location节点
				 
				 lat=locationEl.getAsJsonObject().get("lat").getAsString();
				 lng=locationEl.getAsJsonObject().get("lng").getAsString();
				 	
				 
			     formatted_address=resultEl.getAsJsonObject().get("formatted_address").getAsString();//formatted_address节点
			     business=resultEl.getAsJsonObject().get("business").getAsString();//business节点
				 cityCode=resultEl.getAsJsonObject().get("cityCode").getAsString();//cityCode节点

				 JsonElement compEl=resultEl.getAsJsonObject().get("addressComponent");//addressComponent节点
				 
				 city=compEl.getAsJsonObject().get("city").getAsString();
				 district=compEl.getAsJsonObject().get("district").getAsString();
				 province=compEl.getAsJsonObject().get("province").getAsString();
				 street=compEl.getAsJsonObject().get("street").getAsString();
				 street_number=compEl.getAsJsonObject().get("street_number").getAsString();
				 
				 JsonElement poisEl=resultEl.getAsJsonObject().get("pois");//pois节点
				 boolean flag=poisEl.isJsonArray();//是否为Json数组
				 if(flag){
					// System.out.println(poisEl.getAsJsonArray());
					 JsonArray jsonArray= poisEl.getAsJsonArray();//转为数组
					 String addr="",cp="",distance="",name="",poiType="",tel="",uid="",zip="",x="",y="";
					 //方法一
					 /*for(Iterator iter=jsonArray.iterator();iter.hasNext();){
						 JsonObject jop=(JsonObject) iter.next();
						 addr=jop.get("addr").getAsString();
						 x=jop.get("point").getAsJsonObject().get("x").getAsString();//x节点
						 System.out.println(jop.get("point").getAsJsonObject());
						 System.out.println("address"+addr+"\t\tx="+x);
					 }
					 */
					 //方法二
					 for (int i = 0; i < jsonArray.size(); i++) {
						 JsonObject jop=(JsonObject)jsonArray.get(i);
						 addr=jop.get("addr").getAsString();
						 cp=jop.get("cp").getAsString();
						 distance=jop.get("distance").getAsString();
						 name=jop.get("name").getAsString();
						 poiType=jop.get("poiType").getAsString();
						 tel=jop.get("tel").getAsString();
						 uid=jop.get("uid").getAsString();
						 zip=jop.get("zip").getAsString();
						
						 if(jop.get("point").getAsJsonObject().isJsonObject())
						 {
							// System.out.println(jop.get("point").getAsJsonObject());
							 x=jop.get("point").getAsJsonObject().get("x").getAsString();//x节点
							 y=jop.get("point").getAsJsonObject().get("y").getAsString();//y节点
							 System.out.println(x);
						 }
					 }
				 }
			}
		}
		method.releaseConnection();//释放
		
	}

	/**
	 * 使用Json-lib组装数据
	 * @throws Exception
	 */
	private static void setDataByJsonLib()throws Exception{
		JSONObject jsonObject=new JSONObject();
		Map<String, String> lists=new HashMap<String, String>();
		lists.put("广东省", "广州市");
		lists.put("广州市", "天河区");
		lists.put("天河区", "棠东");
		jsonObject=jsonObject.fromObject(lists);//转换为json数据
		System.out.println(jsonObject);//打印json数据
		System.out.println(jsonObject.get("天河区"));//取出json数据
	}

	/**
	 * 使用Json-lib获取json数据
	 * @throws Exception
	 */
	private static void getDataByJsonLib(String url)throws Exception{
		PostMethod method = new PostMethod(url);
		int statusCode = client.executeMethod(method);
		if (statusCode == HttpStatus.SC_OK) {
			 String responseData = method.getResponseBodyAsString();
			 //处理页面的json数据
			 int start = responseData.indexOf("(") + 1;
			 responseData = responseData.substring(start, responseData.lastIndexOf(")"));
			 JSONObject jsonObject= JSONObject.fromObject(responseData);
			 //变量
			 String status="",result="",lat="",lng="",formatted_address="",business="",city="",district="",province="",street="",street_number="";
			 
			 if(jsonObject.has("status")&&jsonObject.get("status")!=null&&jsonObject.get("status")!=""){
				 status=jsonObject.get("status").toString();//status
			 }
			 result=jsonObject.get("result").toString();//result
			 JSONObject location= JSONObject.fromObject(JSONObject.fromObject(result).get("location").toString());
			 
			 lat=location.get("lat").toString();//lat
			 lng=location.get("lng").toString();//lng
		
			 JSONObject formatAddr= JSONObject.fromObject(result);
			 formatted_address=formatAddr.get("formatted_address").toString();//formatted_address
			 business=formatAddr.get("business").toString();//business

			//变量
			 JSONObject compObj = JSONObject.fromObject(JSONObject.fromObject(result).get("addressComponent").toString());//addressComponent
		     city=compObj.get("city").toString();
		     district=compObj.get("district").toString();
		     province=compObj.get("province").toString();
		     street=compObj.get("street").toString();
		     street_number=compObj.get("street_number").toString();
			 
			 JSONArray poisArr = JSONObject.fromObject(result).getJSONArray("pois");
				
			 if(poisArr !=null && poisArr.size()>0){
	    		
				for(int i = 0; i < poisArr.size(); i++) {
					//变量
	    			String addr="",cp="",distance="",name="",poiType="",tel="",uid="",zip="";
	    			JSONObject tempJson = JSONObject.fromObject(poisArr.get(i));
	    			addr = tempJson.get("addr").toString();
	    			cp = tempJson.get("cp").toString();
	    			distance = tempJson.get("distance").toString();
	    			name = tempJson.get("name").toString();
	    			poiType = tempJson.get("poiType").toString();
	    			tel = tempJson.get("tel").toString();
	    			uid = tempJson.get("uid").toString();
	    			zip = tempJson.get("zip").toString();
	    			  
	    			JSONArray pointArr=poisArr.fromObject(tempJson.get("point"));//获取ponit
	    			//变量
	    			String x="",y="";
	    		    for (int j = 0; j < pointArr.size(); j++) {
	    				JSONObject obj = JSONObject.fromObject(pointArr.get(j));
	    				x=obj.get("x").toString();
	    				y=obj.get("x").toString();
					}
	    	  }
		  }
	  }
	}
}