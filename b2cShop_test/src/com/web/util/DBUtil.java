package com.web.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

public class DBUtil {
	 private static String driver;
	 private static String url;
	 private static String username;
	 private static String password;
	static{
		Properties props=new Properties();
		try {
			props.load(DBUtil.class.getClassLoader().getResourceAsStream("mysql.properties"));
            driver = props.getProperty("Driver");
            url =props.getProperty("url");
            username = props.getProperty("username");
            password = props.getProperty("password");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	/**
     * 获取与数据库的连接
     * @return
     * @throws Exception
     */
    public static Connection getConnection() throws Exception{
        Class.forName(driver);
        return DriverManager.getConnection(url,username,password);
    }
    /**
     * 关闭连接
     * @param conn
     * @param stm
     * @param rs
     */
    public static void closeConnection(Connection conn,Statement stm,ResultSet rs){
        try {
            if (conn != null)
                conn.close();
            if (stm != null)
                stm.close();
            if (rs != null)
                rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
         
    }
    public static void main(String[] args) {
        try {
        	
            System.out.println(DBUtil.url+"\n"+DBUtil.driver+"\n"+DBUtil.username);
            getConnection();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
