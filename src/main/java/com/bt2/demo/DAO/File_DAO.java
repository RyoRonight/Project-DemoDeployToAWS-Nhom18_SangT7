package com.bt2.demo.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class File_DAO extends JdbcDaoSupport {
    @Autowired
    public File_DAO (DataSource dataSource){
        this.setDataSource(dataSource);
    }
    public void insert(String linkfile,int idnews){
            String SQL="insert into tep(link, pageid) " +
                    "values(?,?)";
                this.getJdbcTemplate().update(SQL,linkfile,idnews);
    }
    public List<File> selectall(String id){
        String SQL="select * from tep WHERE id=?";
        List<File> files=new ArrayList<>();
        List<Map<String,Object>> rows=this.getJdbcTemplate().queryForList(SQL,id);
        for (Map row : rows) {
            File file =new File();
            file.setId(Integer.parseInt(row.get("id").toString()));
            file.setLink(row.get("link").toString());
            files.add(file);
        }
            return files;
    }
    public void delete(String id){
        String SQL="DELETE FROM tep WHERE id=?";
        this.getJdbcTemplate().update(SQL,id);
    }
    public List<String> selectlink(String id){
        String SQL="select  link from tep WHERE pageid="+id+"";
        List<String> linkfiles=this.getJdbcTemplate().queryForList(SQL,String.class);
        return linkfiles;
    }
}
