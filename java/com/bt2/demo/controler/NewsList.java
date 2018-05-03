package com.bt2.demo.controler;


import com.bt2.demo.DAO.News;
import com.bt2.demo.DAO.News_DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import java.util.List;

@Controller
public class NewsList {
    @Autowired
    News_DAO news_dao;
    @RequestMapping(value = "/listnews",method = RequestMethod.GET)
    public String showlistnews(Model model){
        List<News> news=news_dao.selectall();
        model.addAttribute("news",news);
        return "News_List";
    }
}
