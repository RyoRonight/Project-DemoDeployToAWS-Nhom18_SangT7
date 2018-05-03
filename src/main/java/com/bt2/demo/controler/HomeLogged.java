package com.bt2.demo.controler;


import com.bt2.demo.DAO.News_DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeLogged {
    @Autowired
    News_DAO news_dao;
    @RequestMapping(value = "/Home",method = RequestMethod.GET)
    public String index(Model model){
        String content=news_dao.select_content("1");
        model.addAttribute("about",content);
        return "index_in";
    }
}
