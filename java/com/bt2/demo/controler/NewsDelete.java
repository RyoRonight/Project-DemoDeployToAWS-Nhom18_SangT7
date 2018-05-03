package com.bt2.demo.controler;


import com.bt2.demo.DAO.News_DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
public class NewsDelete {
    @Autowired
    News_DAO news_dao;
    @RequestMapping(value = "/delnews",method = RequestMethod.POST)
    public String addnews(Model model, HttpServletRequest request,
                          @RequestAttribute("file") MultipartFile[] file)
            throws IOException {
        request.setCharacterEncoding("UTF-8");
        String id=request.getParameter("id");
        news_dao.delete(id);
        return "redirect:/listnews";
    }
}
