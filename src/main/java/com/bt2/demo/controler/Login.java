package com.bt2.demo.controler;


import com.bt2.demo.DAO.Login_DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
public class Login {
    @Autowired
    Login_DAO login_dao;
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String getlogin(Model model){
        return "Login";
    }
    @RequestMapping(value = "/login", method= RequestMethod.POST)
    public String postlogin (HttpServletRequest request) throws IOException{
        String username=request.getParameter("username");
        String pass=request.getParameter("pass");
        boolean login=login_dao.login(username.trim(),pass.trim());
        if(login) {
            return "dieuhuong";
        }
        return "exception";
    }
}
