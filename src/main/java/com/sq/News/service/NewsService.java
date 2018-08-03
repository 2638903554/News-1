package com.sq.News.service;

import java.util.ArrayList;

import com.sq.News.pojo.NewsInfo;

public interface NewsService {

	ArrayList<NewsInfo> getAllNews();
	boolean addNews(NewsInfo ni);
	boolean deleteNews(int id);
	boolean updateNews(NewsInfo ni);
	NewsInfo getContent(int id);


}
