package com.bt2.demo.controler;


import com.bt2.demo.DAO.File_DAO;
import com.bt2.demo.DAO.News;
import com.bt2.demo.DAO.News_DAO;
import com.bt2.demo.DAO.uploaddrive;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class NewsAdd {
    @Autowired
    News_DAO news_dao;
    @Autowired
    File_DAO file_dao;
    @RequestMapping(value = "/addnews",method = RequestMethod.GET)
    public String addnews(Model model){
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        model.addAttribute("curdate",dateFormat.format(date));
        return "News_Add";
    }
    @RequestMapping(value = "/addnews",method = RequestMethod.POST)
    public String addnews(Model model, HttpServletRequest request,
                          @RequestAttribute("file") MultipartFile[] file)
            throws IOException{
        request.setCharacterEncoding("UTF-8");
        News news=new News();
        news.setTitle(request.getParameter("title"));
        news.setDes(request.getParameter("des"));
        news.setContent(request.getParameter("content"));
        news_dao.insert(news);
        int idnews=news_dao.getid();
        uploaddrive uploaddrive=new uploaddrive();
        List<String> linktep=uploaddrive.doUpload(request,model,file,idnews);
        for (String link:linktep
             ) {
            file_dao.insert(link,idnews);
        }
        System.out.println(""+idnews);
        return "redirect:/listnews";
    }
}
