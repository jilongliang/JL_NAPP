package com.app.domain.timer;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.app.entity.sys.Quartz;
import com.app.service.QuartService;
import com.app.service.impl.QuartServiceImpl;
@SuppressWarnings("all")
public class QuartzJob /*extends TimerTask*/ {
	private static final Log logger = LogFactory.getLog(QuartzJob.class);
	private QuartService quartService = new QuartServiceImpl();
	private static DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
	public void doQuartzs() {
		
		//		System.out.println("Test start.");
		//		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContextion.xml");
		//		// 如果配置文件中将startQuertz bean的lazy-init设置为false 则不用实例化
		//		context.getBean("startQuertz");//获取Bean
		//		System.out.print("Test end..");
		
		//Long start = System.nanoTime();// 伪代码
		Long startTime = System.currentTimeMillis(); // 获取开始时间

		int ret = quartService.saveData("Spring and Quart定时器!"+new Date());

		Long endTime = System.currentTimeMillis(); // 获取结束时间
		if (ret > 0) {
			logger.info("执行成功: \t" + "用时：" + (endTime - startTime) + "ms");
		} else {
			logger.info("执行失败");
		}
	}
	/**
	 * 批处理保存
	 */
	public void doBatchsSave() {
	 
		Long startTime = System.currentTimeMillis(); // 获取开始时间
		Quartz q1=new Quartz();
		Quartz q2=new Quartz();
		q1.setName("Quart1"+format.format(new Date()));
		q2.setName("Quart2"+format.format(new Date()));

		List list=new ArrayList();
		list.add(q1);
		list.add(q2);
		int ret = quartService.batchsSaveData(list);
		Long endTime = System.currentTimeMillis(); // 获取结束时间
		if (ret > 0) {
			logger.info("已保存"+ret+"条数据 \t" + "用时：" + (endTime - startTime) + "ms");
		} else {
			logger.info("执行失败");
		}
	}
	
	/**
	 * 批处理更新
	 */
	public void doBatchsUpdate() {
		Long startTime = System.currentTimeMillis(); // 获取开始时间
		Quartz q1=new Quartz();
		Quartz q2=new Quartz();
		q1.setId(41);
		q1.setName("Quart1");
		q2.setName("Quart2");
		q2.setId(42);

		List list=new ArrayList();
		list.add(q1);
		list.add(q2);
		int ret = quartService.batchsUpdateData(list);
		Long endTime = System.currentTimeMillis(); // 获取结束时间
		if (ret > 0) {
			logger.info("已更新"+ret+"条数据 \t" + "用时：" + (endTime - startTime) + "ms");
		} else {
			logger.info("执行失败");
		}
	}
	/**
	 * 批处理删除
	 */
	public void doBatchsDelete() {
		Long startTime = System.currentTimeMillis(); // 获取开始时间
		Quartz q1=new Quartz();
		Quartz q2=new Quartz();
		q1.setId(41);
		q2.setId(42);

		List list=new ArrayList();
		list.add(q1);
		list.add(q2);
		int ret = quartService.batchsDeleteData(list);
		Long endTime = System.currentTimeMillis(); // 获取结束时间
		if (ret > 0) {
			logger.info("已删除"+ret+"条数据 \t" + "用时：" + (endTime - startTime) + "ms");
		} else {
			logger.info("执行失败");
		}
	}
	public void doBatchsQuery() {
		Long startTime = System.currentTimeMillis(); // 获取开始时间
		Quartz q1=new Quartz();
		Quartz q2=new Quartz();
		q1.setId(43);
		q2.setId(44);

		List list=new ArrayList();
		list.add(q1);
		list.add(q2);
		List ret = quartService.batchsQueryData(list);
		Long endTime = System.currentTimeMillis(); // 获取结束时间

		for (int i = 0; i < ret.size(); i++) {
			
		}
		if (ret.size() > 0) {
			logger.info("已删除"+ret+"条数据 \t" + "用时：" + (endTime - startTime) + "ms");
		} else {
			logger.info("执行失败");
		}
	}
}