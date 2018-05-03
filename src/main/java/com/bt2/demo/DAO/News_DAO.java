package com.bt2.demo.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class News_DAO extends JdbcDaoSupport{
    @Autowired
    public News_DAO (DataSource dataSource){
        this.setDataSource(dataSource);
    }
    public int getid(){
        String SQL="select LAST_INSERT_ID()";
        int idnews=Integer.parseInt(getJdbcTemplate().queryForObject(SQL,String.class));
        return idnews;
    }
    public void insert(News news){
        String SQL="insert into page(title,content,des) " +
                "values(?,?,?)";
        this.getJdbcTemplate().update(SQL,news.title,news.content,news.des);
    }
    public void update(News news){
        String SQL="UPDATE page SET title=?,content=?,des=? " +
                "where id=?";
        this.getJdbcTemplate().update(SQL,news.title,news.content,news.des,news.id);
    }
    public void delete(String id){
        String SQL="DELETE FROM tep WHERE pageid=?";
        String SQL2="DELETE  FROM page WHERE id=?";
        this.getJdbcTemplate().update(SQL,id);
        this.getJdbcTemplate().update(SQL2,id);
    }
    public List<News> selectall(){
        String SQL="select * from page WHERE id<>1";
        List<News> news=new ArrayList<>();
        List<Map<String,Object>> rows=this.getJdbcTemplate().queryForList(SQL);
        for (Map row : rows) {
            News news1=new News();
            news1.setId(""+(row.get("id")));
            System.out.println(news1.getId());
            news1.setTitle((String)(row.get("title")));
            news1.setDes((String)(row.get("des")));
            news1.setContent((String)(row.get("content")));
            news.add(news1);
        }
        return news;
    }
    public List<News> select_title_des(){
        String SQL="select id,title,des from page WHERE id<>1";
        List<News> news=new ArrayList<>();
        List<Map<String,Object>> rows=this.getJdbcTemplate().queryForList(SQL);
        for (Map row : rows) {
            News news1=new News();
            news1.setId(""+(row.get("id")));
            news1.setTitle((String)(row.get("title")));
            news1.setDes((String)(row.get("des")));
            news.add(news1);
        }
        return news;
    }
    public String select_content(String id){
        String SQL="SELECT content FROM page WHERE id="+id+"";
        return (String) this.getJdbcTemplate().queryForObject(SQL,String.class);
    }
    public News select_id(String id){
        String SQL="select id,title,des,content from page WHERE id<>1 AND id="+id+"";
        List<Map<String,Object>> rows=this.getJdbcTemplate().queryForList(SQL);
        News news1=new News();
        for (Map row : rows) {
            news1.setId(""+(row.get("id")));
            news1.setTitle((String)(row.get("title")));
            news1.setDes((String)(row.get("des")));
            news1.setContent((String)(row.get("content")));
        }return news1;
    }
}
