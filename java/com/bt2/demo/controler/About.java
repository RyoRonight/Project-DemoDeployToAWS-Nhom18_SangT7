package com.bt2.demo.controler;


import com.bt2.demo.DAO.News;
import com.bt2.demo.DAO.News_DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
public class About {
    @Autowired
    News_DAO news_dao;
    @RequestMapping(value = "/about",method = RequestMethod.GET)
    public String get_about(Model model){
        String content=news_dao.select_content("1");
        model.addAttribute("about",content);
        return"about";
    }
    @RequestMapping(value = "/about",method = RequestMethod.POST)
    public String post_about(Model model, HttpServletRequest request) throws IOException{
        String content=request.getParameter("content");
        News news=new News();
        news.setContent(content);
        news.setTitle("about");
        news.setDes("about");
        news.setDes("about");
        news.setId("1");
        news_dao.update(news);
        return"redirect:/";
    }
}
