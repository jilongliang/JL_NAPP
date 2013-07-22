package com.app.domain.timer;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.select.Elements;

import com.app.duapp.MapDao;
import com.app.entity.duapp.Address;
import com.app.entity.duapp.Location;
import com.app.entity.duapp.Point;
import com.app.entity.duapp.Pois;

/**
 *@DEMO:napp
 *@Author:jilongliang
 *@Date:2013-7-15
 */
@SuppressWarnings("all")
public class DuApp {
	public void doDeocoder() throws Exception{
		MapDao dao=new MapDao();
		String url = "http://api.map.baidu.com/geocoder/v2/?ak=E4805d16520de693a3fe707cdc962045&callback=renderReverse&location=39.983424,116.322987&output=xml&pois=1";
		List<Pois> list=JsoupReadXml(url);
		int result=dao.batchsUpdateData(list);
		if(result>0){
			System.out.println("成功保存"+result+"条数据");
		}else{
			System.out.println("保存失败..");
		}
	}

	/**
	 * 用Jsoup去解析xml
	 * @param url
	 */
	private static List<Pois> JsoupReadXml(String url) throws Exception{
		List<Pois> list=new ArrayList<Pois>();
		org.jsoup.nodes.Document doc=Jsoup.connect(url).get();

		if(doc!=null)
		{
			Elements pois=doc.select("poi");//获取到poi节点
			String  status=doc.select("status").text().trim();//获取到poi节点
			for(org.jsoup.nodes.Element poi:pois){
				Pois p=new Pois();

				Point point=new Point();
				List<Point> listPoint=new ArrayList<Point>();

				p.setStatus(status);
				p.setAddr(poi.getElementsByTag("addr").text().trim());
				p.setDistance(poi.getElementsByTag("distance").text().trim());
				p.setName(poi.getElementsByTag("name").text().trim());
				p.setPoiType(poi.getElementsByTag("poiType").text().trim());
				p.setTel(poi.getElementsByTag("tel").text().trim());
				p.setZip(poi.getElementsByTag("zip").text().trim());
				point.setX(poi.getElementsByTag("x").text().trim());
				point.setY(poi.getElementsByTag("y").text().trim());

				listPoint.add(point);//
				p.setPoints(listPoint);//添加点集合

				List<Address> lisAdds=new ArrayList<Address>();

				Elements comps=doc.select("addressComponent");

				for (org.jsoup.nodes.Element comp:comps) {
					Address addr=new Address();
					addr.setStreetNumber(comp.getElementsByTag("streetNumber").text().trim());
					addr.setStreet(comp.getElementsByTag("street").text().trim());
					addr.setDistrict(comp.getElementsByTag("district").text().trim());
					addr.setCity(comp.getElementsByTag("city").text().trim());//
					addr.setProvince(comp.getElementsByTag("province").text().trim());
					addr.setCityCode(doc.getElementsByTag("cityCode").text().trim());
					lisAdds.add(addr);
				}
				p.setAddress(lisAdds);

				Location location=new Location();
				List<Location> listLocatios=new ArrayList<Location>();

				location.setLat(doc.select("lat").text().trim());
				location.setLng(doc.select("lng").text().trim());
				location.setFormattedAddress(doc.select("formatted_address").text().trim());
				location.setBusiness(doc.select("business").text().trim());
				listLocatios.add(location);

				p.setLocations(listLocatios);//添加当地集合
				list.add(p);//添加整个
			}
		}
		return list;
	}
}