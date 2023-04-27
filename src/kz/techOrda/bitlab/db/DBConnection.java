package kz.techOrda.bitlab.db;

import javax.swing.table.AbstractTableModel;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;

public class DBConnection {

    private static Connection connection;

    static {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:8889/schema_name",
                    "root",
                    "root"
            );
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public static ArrayList<Item> getProduct(){
        ArrayList<Item> items = new ArrayList<>();

        try{
            PreparedStatement statement = connection.prepareStatement(
                 "SELECT * FROM products"
            );
            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()){
                Item item = new Item();
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setPrice(resultSet.getDouble("price"));
                item.setGbram(resultSet.getInt("gbram"));
                item.setGbssd(resultSet.getInt("gbssd"));
                item.setProcessor(resultSet.getString("processor"));
                item.setDescription(resultSet.getString("description"));


                items.add(item);
            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }



    public static ArrayList<User> getUser(){
        ArrayList<User> users = new ArrayList<>();

        try{
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM users"
            );
            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()){
                User user = new User();
                user.setEmail(resultSet.getString("email"));
                user.setId(resultSet.getLong("id"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));

                users.add(user);
            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }
}
