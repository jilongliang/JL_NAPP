package com.app.common;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
 
/**
 * @Author:jilongliang
 * @Date :2012-8-10
 * @Project:JAVA7
 * @Description:时间处理类
 * @From:http://eternal1025.iteye.com/blog/344360
 */
@SuppressWarnings("all")
public class DateHelper {
    /**
     * 字符串转换为java.util.Date<br>
     * 支持格式为 yyyy.MM.dd G 'at' hh:mm:ss z
     * Example:'2002-1-1 AD at 22:10:59 PSD'<br>
     * yy/MM/dd HH:mm:ss 如 '2002/1/1 17:55:00'<br>
     * yy/MM/dd HH:mm:ss pm 如 '2002/1/1 17:55:00 pm'<br>
     * yy-MM-dd HH:mm:ss 如 '2002-1-1 17:55:00' <br>
     * yy-MM-dd HH:mm:ss am 如 '2002-1-1 17:55:00 am' <br>
     * @param time
     *            String 字符串<br>
     * @return Date 日期<br>
     */
    public static Date stringToDate(String time) {
       SimpleDateFormat formatter;
       int tempPos = time.indexOf("AD");
       time = time.trim();
       formatter = new SimpleDateFormat("yyyy.MM.dd G 'at' hh:mm:ss z");
       if (tempPos > -1) {
           time = time.substring(0, tempPos) + "公元"
                  + time.substring(tempPos + "AD".length());// china
           formatter = new SimpleDateFormat("yyyy.MM.dd G 'at' hh:mm:ss z");
       }
       tempPos = time.indexOf("-");
       if (tempPos > -1 && (time.indexOf(" ") < 0)) {
           formatter = new SimpleDateFormat("yyyyMMddHHmmssZ");
       } else if ((time.indexOf("/") > -1) && (time.indexOf(" ") > -1)) {
           formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
       } else if ((time.indexOf("-") > -1) && (time.indexOf(" ") > -1)) {
           formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       } else if ((time.indexOf("/") > -1) && (time.indexOf("am") > -1)
              || (time.indexOf("pm") > -1)) {
           formatter = new SimpleDateFormat("yyyy-MM-dd KK:mm:ss a");
       } else if ((time.indexOf("-") > -1) && (time.indexOf("am") > -1)
              || (time.indexOf("pm") > -1)) {
           formatter = new SimpleDateFormat("yyyy-MM-dd KK:mm:ss a");
       }
       ParsePosition pos = new ParsePosition(0);
       Date date = formatter.parse(time, pos);
       return date;
    }
    /**
     * 将java.util.Date 格式转换为字符串格式'yyyy-MM-dd HH:mm:ss'(24小时制)<br>
     * 如Sat May 11 17:24:21 CST 2002 to '2002-05-11 17:24:21'<br>
     * @param time
     *            Date 日期<br>
     * @return String 字符串<br>
     */
    public static String dateToString(Date time) {
       SimpleDateFormat formatter;
       formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       String Time = formatter.format(time);
       return Time;
    }
    /**
     * 将java.util.Date 格式转换为字符串格式'yyyy-MM-dd HH:mm:ss a'(12小时制)<br>
     * 如Sat May 11 17:23:22 CST 2002 to '2002-05-11 05:23:22 下午'<br>
     *
     * @param time
     *            Date 日期<br>
     * @param x
     *            int 任意整数如：1<br>
     * @return String 字符串<br>
     */
    public static String dateToString(Date time, int x) {
       SimpleDateFormat formatter;
       formatter = new SimpleDateFormat("yyyy-MM-dd KK:mm:ss a");
       String date = formatter.format(time);
       return date;
    }
    /**
     * 取系统当前时间:返回只值为如下形式 2002-10-30 20:24:39
     * @return String
     */
    public static String Now() {
       return dateToString(new Date());
    }
    /**
     * 取系统当前时间:返回只值为如下形式 2002-10-30 08:28:56 下午
     * @param hour
     *            为任意整数
     * @return String
     */
    public static String Now(int hour) {
       return dateToString(new Date(), hour);
    }
    /**
     * 取系统当前时间:返回值为如下形式 2002-10-30
     * @return String
     */
    public static String getYYYY_MM_DD() {
       return dateToString(new Date()).substring(0, 10);
    }
    /**
     * 取系统给定时间:返回值为如下形式 2002-10-30
     * @return String
     */
    public static String getYYYY_MM_DD(String date) {
       return date.substring(0, 10);
    }
    /**
     * 获取小时
     * @return
     */
    public static String getHour() {
       SimpleDateFormat formatter;
       formatter = new SimpleDateFormat("H");
       String hour = formatter.format(new Date());
       return hour;
    }
    /**
     * 获取当前日日期返回
     * <return>Day</return>
     */
    public static String getDay() {
       SimpleDateFormat formatter;
       formatter = new SimpleDateFormat("d");
       String day = formatter.format(new Date());
       return day;
    }
    /**
     * 获取月份
     * @return
     */
    public static String getMonth() {
       SimpleDateFormat formatter;
       formatter = new SimpleDateFormat("M");
       String month = formatter.format(new Date());
       return month;
    }
    /**
     * 获取年
     * @return
     */
    public static String getYear() {
       SimpleDateFormat formatter;
       formatter = new SimpleDateFormat("yyyy");
       String year = formatter.format(new Date());
       return year;
    }
    /**
     * 获取周
     *
     * @return
     */
    public static String getWeek() {
       SimpleDateFormat formatter;
       formatter = new SimpleDateFormat("E");
       String week = formatter.format(new Date());
       return week;
    }
    /**
     * 对日期格式的转换成("yyyy-MM-dd)格式的方法
     *
     * @param str
     * @return
     */
    public static java.sql.Date Convert(String str) {
       SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
       try {
           java.util.Date d = sdf.parse(str);
           java.sql.Date d1 = new java.sql.Date(d.getTime());
           return d1;
       } catch (Exception ex) {
           ex.printStackTrace();
           return null;
       }
    }
    /**
     * 获取当前年、月、日：
     *
     * @return
     */
    public static int getYYMMDD() {
       Date date = new Date();
       int year = date.getYear() + 1900;// thisYear = 2003
       int month = date.getMonth() + 1;// thisMonth = 5
       int day = date.getDate();// thisDate = 30
       return year + month + day;
    }
    /**
     * 在jsp页面中的日期格式和sqlserver中的日期格式不一样，怎样统一?
     * 在页面上显示输出时，用下面的函数处理一下
     * @param date
     * @return
     */
    public static String fromateDate(Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String strDate = formatter.format(date);
        return strDate;
    }
    /**
     * 本地时区输出当前日期
     * GMT时间
     */
    public static String getLocalDate() {
       Date date = new Date();
       return date.toLocaleString();//date.toGMTString();
    }
    /**
     * 测试
     * @param args
     */
    public static void main(String[] args) {
       System.out.println(new DateHelper().getDay());
    }
}
 
 