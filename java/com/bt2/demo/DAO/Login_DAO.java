package com.bt2.demo.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class Login_DAO extends JdbcDaoSupport {
    @Autowired
    public Login_DAO (DataSource dataSource){
        this.setDataSource(dataSource);
    }
    public boolean login(String username,String pass){
        String SQL="Select id from admin where username='"+username+"' and pass='"+pass+"'";
        int id=this.getJdbcTemplate().queryForObject(SQL,int.class);
        if(id>0) return true;
        return false;
    }
}
