<%@ page import="kz.techOrda.bitlab.db.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.techOrda.bitlab.db.User" %><%--
  Created by IntelliJ IDEA.
  User: LEGION
  Date: 25.04.2023
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
  <script type="text/javascript" src="/js/bootstrap.bundle.js"></script>

</head>
<body>
<div style="width: 70%; margin:auto;">

  <div style="border-bottom: 1px solid black; display: flex; justify-content: space-between">
    <a style="font-size: 35px; font-weight: bold; color: black; text-decoration: none;" href="/home.html ">BITLAB SHOP</a>
    <div style="display: flex; justify-content: space-around">
      <a style="margin-left:25px; margin-top: 15px; text-decoration: none; color: black;" href="">Top Sales</a>
      <a style="margin-left:25px; margin-top: 15px; text-decoration: none; color: black;" href="">New Sales</a>
      <a style="margin-left:25px; margin-top: 15px; text-decoration: none; color: black;" href="">By Category</a>
      <a style="margin-left:25px; margin-top: 15px; text-decoration: none; color: black;" href="">Sign In</a>
    </div>
  </div>


  <br>
      <%
        boolean find = false;
        try {
          find = (boolean) request.getAttribute("find");
        }catch (Exception e){
          e.printStackTrace();
        }
        if(find){
      %>
      <div style="background-color: #ff9fb4; width: 95%; height: 50px; padding-left: 20px; padding-top: 12px; margin: auto;">
        <p style="color: #ff4c85">Incorrect <span style="color: #ff1b3e ">email</span> or <span style="color: #ff414e">password</span>!</p>
      </div>
      <%
        }
      %>
    <div style="width: 95%; height: 245px; margin: auto; box-shadow: 3px 3px 20px black;">
      <div style="background-color: lightgray; height: 50px;padding-top: 10px; padding-left: 20px"><h4 style="font-weight: normal;">Login Page</h4></div>
      <div style="width: 100%;">
      <form action="/check_data">
         <table style="width: 100%; margin-left: 20px; line-height: 10px;">
           <tr style="width: 160px; ">
             <td style="width:10%;">Email</td>
             <td style="padding-top: 10px;"><input name="email_input" style="width: 90%; height: 30px; border: 0.5px solid lightgray;"><br></td>
           </tr>
           <br>
           <tr style="width: 160px;  padding: 50px;">
             <td style="width:10%; padding-top: 20px; ">Password</td>
             <td style="padding-top: 20px;"><input name="password_input" style="width: 90%; height: 30px; border: 0.5px solid lightgray; "></td>
           </tr>
         </table>
        <br>
        <button style="border: none; width:15%; height:30px; margin-left: 20px; background-color: green;color:white;">Login</button>
      </form>
      </div>

    </div>

  </div>






</body>
<script src=”https://code.jquery.com/jquery-3.2.1.slim.min.js” integrity=”sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN” crossorigin=”anonymous”></script>

<script src=https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js integrity=”sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q” crossorigin=”anonymous”></script>

<script src=”https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js” integrity=”sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl” crossorigin=”anonymous”></script>
</html>
