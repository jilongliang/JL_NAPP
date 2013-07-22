package com.app.domain.wsmx;

import javax.xml.namespace.QName;
import javax.xml.rpc.ParameterMode;

import org.apache.axis.client.Call;
import org.apache.axis.client.Service;
import org.apache.axis.encoding.XMLType;
@SuppressWarnings("all")
public class TestAxis2 {
	public static void main(String[] args)throws Exception {
		/**
		 * 与web.xml配置有关系!
		 *services/*
		 *String url="http://localhost:8081/napp/services/MyAxis2WebService.jws";
		 */
		String url="http://localhost:8081/napp/services/MyAxis2WebService.jws";
		Service service = new Service();
        Call call;
        try {
            //call = (Call) service.createCall();
            call =new Call(service);
            call.setTargetEndpointAddress(new java.net.URL(url) );
            //call.setOperationName(new QName("https://github.com/jilongliang/", "axis2Test"));
            //call.addParameter("arg1", XMLType.XSD_STRING, ParameterMode.IN);
            //call.setReturnType(org.apache.axis.encoding.XMLType.XSD_STRING);
            
            call.setOperationName("axis2Test");// 这是要调用的方法
            String res = (String)call.invoke( new Object[] {} );
            System.out.println(res);
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
}
