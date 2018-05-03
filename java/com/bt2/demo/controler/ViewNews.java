package com.bt2.demo.controler;

import com.bt2.demo.DAO.File_DAO;
import com.bt2.demo.DAO.News_DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ViewNews {
    @Autowired
    News_DAO news_dao;
    @Autowired
    File_DAO file_dao;
    @RequestMapping(value = "/viewnews", method = RequestMethod.GET)
    public String viewnews(Model model, @RequestParam(value = "id") String id){
        model.addAttribute("news",news_dao.select_content(id));
        model.addAttribute("files",file_dao.selectlink(id));
        return "Xemnoidungtin";
    }
}
