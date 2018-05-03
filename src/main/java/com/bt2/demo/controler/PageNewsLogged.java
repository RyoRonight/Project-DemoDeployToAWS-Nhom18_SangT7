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
public class PageNewsLogged {
    @Autowired
    News_DAO news_dao;
    @RequestMapping(value = "/Pagenews",method = RequestMethod.GET)
    public String loadpagenews(Model model){
        List<News> news=news_dao.select_title_des();
        model.addAttribute("listnews",news);
        return "TrangTinTuc_in";
    }
}
