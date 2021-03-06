package com.sun.autoGenerated;

import java.io.IOException;
import java.sql.SQLException;

import freemarker.template.TemplateException;

public class AutoGenerationDemo {

    public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException, TemplateException {
    	  //数据库地址
        String url = "jdbc:mysql://10.4.249.163:3306/wapage";
        //用户名
        String name = "root";
        //密码
        String passWord = "123";
        //驱动
        String driver = "com.mysql.jdbc.Driver";
        //表名
        String tableName = "m_auth_copy";
        //模板路径
        String templateDir = "./template";
        //生成文件路径
        String autoGeneratedFile = "./autoGenerated";
        AutoGenerationJavaCode autoGenerationJavaCode = new AutoGenerationJavaCode(url, name, passWord, driver,
                tableName,autoGeneratedFile,templateDir);
        
        autoGenerationJavaCode.autoGenerationJavaCode();
    }

}
