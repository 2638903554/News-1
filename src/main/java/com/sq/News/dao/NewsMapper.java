package com.sq.News.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.sq.News.pojo.NewsInfo;

@Repository("newsMapper")
public interface NewsMapper {
	ArrayList<NewsInfo> getAllNews();   //获取所有新闻
	boolean addNews(NewsInfo ni);       //向数据库添加一条记录
	boolean deleteNews(int id);         //根据id删除数据库中一条记录
	boolean updateNews(NewsInfo ni);    //根据id更新数据库中某条记录
	NewsInfo getContent(int id);     //根据id获得该条新闻的内容

}
