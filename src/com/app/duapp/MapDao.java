package com.app.duapp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.app.common.AppDbUtil;
import com.app.entity.duapp.Address;
import com.app.entity.duapp.Location;
import com.app.entity.duapp.Point;
import com.app.entity.duapp.Pois;

@SuppressWarnings("all")
public class MapDao {


	/**
	 * 保存
	 */
	public static int batchsUpdateData(List<Pois> list) {
		int index=0;
		String sqls[]=new String[list.size()];//多条SQL
		for (int i = 0; i < list.size(); i++) {
			StringBuffer buffer=new StringBuffer();
			Pois p=(Pois) list.get(i);
			List<Location> locations=p.getLocations();
			List<Address> address=p.getAddress();
			List<Point> points=p.getPoints();

			DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:ss:mm");
			for (Location location:locations) {

				for (Address addr:address) {

					for (Point point:points) {

						buffer.append("Insert into mapsearch(status,lat,lng,formatted_address,business,streetNumber,street,district,city,province,cityCode,addr,distance,name,poiType,tel,zip,x,y,importDate)");
						buffer.append("values(");
					    buffer.append("'"+p.getStatus()+"',").append("'"+location.getLat()+"',");
					    buffer.append("'"+location.getLng()+"',").append("'"+location.getFormattedAddress()+"',");
					    buffer.append("'"+location.getBusiness()+"',").append("'"+addr.getStreetNumber()+"',");
					    buffer.append("'"+addr.getStreet()+"',").append("'"+addr.getDistrict()+"',");
					    buffer.append("'"+addr.getCity()+"',").append("'"+addr.getProvince()+"',");
					    buffer.append("'"+addr.getCityCode()+"',").append("'"+p.getAddr()+"',");
					    buffer.append("'"+p.getDistance()+"',").append("'"+p.getName()+"',");
					    buffer.append("'"+p.getPoiType()+"',").append("'"+p.getTel()+"',");
					    buffer.append("'"+p.getZip()+"',").append("'"+point.getX()+"',").append("'"+point.getY()+"',");
					    buffer.append("'"+format.format(new Date())+"'").append(")");//当前时间函数./now(),CURDATE(), CURRENT_DATE() 
					    String sql=buffer.toString();
					    sqls[index]=sql;	
					}
			    }
			}
			index++;
		}
		int rows=AppDbUtil.getInstance().supportsBatch(sqls);
		return rows;
	}
}