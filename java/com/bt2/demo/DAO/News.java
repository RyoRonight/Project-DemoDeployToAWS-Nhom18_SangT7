package com.bt2.demo.DAO;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class News extends JdbcDaoSupport {
   String title;
   String des;
   String content;
   String id;

    public String getTitle() {
        return title;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
