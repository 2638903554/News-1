package com.sq.News.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sq.News.pojo.NewsInfo;
import com.sq.News.service.NewsService;

@Controller
public class NewsController {
	private static boolean isLogined = false;
	private NewsService newsService = null;
	
	@Resource(name = "newsService")
	public void setNewsservice(NewsService newsService) {
		this.newsService = newsService;
	}

	//进入新闻网站首页
	@RequestMapping("/news")
	public ModelAndView getModelAndView() {
		ModelAndView mv = null;

		try {
			mv = new ModelAndView("index");
			ArrayList<NewsInfo> news = newsService.getAllNews();
			mv.addObject("data",news);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	//进入管理员登录界面
	@RequestMapping("/login")
	public String addNews(String news_user,String news_password) {
		if("sqroot".equals(news_user)&&"dyr2015".equals(news_password)) {
			isLogined = true;
			return "addNews";
		}
		else {
			return "login";
		}
	}
	
	//进入发布新闻界面
	@RequestMapping(value="/add")
	public String returAaddNews() {
		if(isLogined) {
			return "addNews";
		}
		else {
			return "login";
		}
	}
	
	//进入更新新闻界面
	@RequestMapping("/update")
	public String updateNews() {
		if(isLogined) {
			return "updateNews";
		}
		else {
			return "login";
		}
	}
	
	//进入删除新闻界面
	@RequestMapping("/delete")
	public String deleteNews() {
		if(isLogined) {
			return "deleteNews";
		}
		else {
			return "login";
		}
	}
	
	//点击退出登录按钮后，将登录状态置为假
	@RequestMapping("/exit")
	public String exitLogin() {
		isLogined = false;
		return "login";
	}
	
	//向数据库添加记录
	@RequestMapping("/add1")
	public String addData(NewsInfo ni) {
		boolean isDone = false;
		isDone = newsService.addNews(ni);
		if(isDone) {
			return "done";
		}
		else {
			return "failed";
		}
	}
	
	//根据新闻id删除数据库中的某个记录
	@RequestMapping("/delete1")
	public String deleteData(int id) {
		boolean isDone = false;
		isDone = newsService.deleteNews(id);
		if(isDone) {
			return "done";
		}
		else {
			return "failed";
		}
	}
	
	//根据新闻id更新数据库中的记录
	@RequestMapping("/update1")
	public String updateData(NewsInfo ni) {
		boolean isDone = false;
		isDone = newsService.updateNews(ni);
		if(isDone) {
			return "done";
		}
		else {
			return "failed";
		}
	}
	
	//点击某个新闻的链接后根据id获得该条新闻的内容等
	@RequestMapping("/read")
	public ModelAndView getContent(int id) {
		ModelAndView mv = null;

		try {
			mv = new ModelAndView("content");
			NewsInfo news = newsService.getContent(id);
			mv.addObject("data",news);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
