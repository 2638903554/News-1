package com.sq.News.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sq.News.dao.NewsMapper;
import com.sq.News.pojo.NewsInfo;

@Service("newsService")
public class NewsServiceclass implements NewsService {

	private NewsMapper newsMapper = null;
	
	@Resource(name="newsMapper")
	public void setNewsmapper(NewsMapper newsMapper) {
		this.newsMapper = newsMapper;
	}
	
	public ArrayList<NewsInfo> getAllNews() {
		
		return newsMapper.getAllNews();
	}

	public boolean addNews(NewsInfo ni) {
		
		return newsMapper.addNews(ni);
	}

	
	public boolean deleteNews(int id) {
		return newsMapper.deleteNews(id);
	}

	
	public boolean updateNews(NewsInfo ni) {
		return newsMapper.updateNews(ni);
	}


	public NewsInfo getContent(int id) {
		
		return newsMapper.getContent(id);
	}

	
}
