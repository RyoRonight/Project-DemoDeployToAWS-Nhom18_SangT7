package com.bt2.demo.DAO;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class File extends JdbcDaoSupport {
    int id;
    String link;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
