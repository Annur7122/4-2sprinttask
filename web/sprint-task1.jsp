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
        <a style="font-size: 35px; font-weight: bold; color: black; text-decoration: none;" href="/home.html">BITLAB SHOP</a>
        <div style="display: flex; justify-content: space-around">
            <a style="margin-left:25px; margin-top: 15px; text-decoration: none; color: black;" href="">Top Sales</a>
            <a style="margin-left:25px; margin-top: 15px; text-decoration: none; color: black;" href="">New Sales</a>
            <a style="margin-left:25px; margin-top: 15px; text-decoration: none; color: black;" href="">By Category</a>
            <a style="margin-left:25px; margin-top: 15px; text-decoration: none; color: black;" href="/check_data">Sign In</a>
        </div>
    </div>
        <div style="margin:auto;">
            <h1 style="text-align:center;">>Welcome to BITLAB SHOP</h1>
            <p style="text-align:center;">>Electronic devices with high quality and service</p>
        </div>
<%--        <div style="display: flex; flex-wrap: wrap;">--%>
<%--             <%--%>
<%--                  ArrayList<Item> itemstar = (ArrayList<Item>) request.getAttribute("producty");--%>
<%--                  if(itemstar != null){--%>
<%--                      for(Item item : itemstar){--%>
<%--             %>--%>
<%--                <p><%=item.getId()%></p>--%>
<%--                <p><%=item.getName()%></p>--%>
<%--                <p><%=item.getDescription()%></p>--%>
<%--                <p><%=item.getPrice()%></p>--%>
<%--                <p><%=item.getProcessor()%></p>--%>
<%--                <p><%=item.getGbram()%>  kzt</p>--%>
<%--                <p><%=item.getGbssd()%>  kzt</p>--%>
<%--            <br><br>--%>
<%--            <%--%>
<%--                    }--%>
<%--                  }--%>
<%--            %>--%>
<%--        </div>--%>



        <br>

        <div style="display: flex; flex-wrap: wrap;">
            <%
                ArrayList<Item> items = (ArrayList<Item>)request.getAttribute("producty");
                if(items != null){
                    for(Item item : items){
            %>
            <div style="width: 28%; height: 285px; margin-left: 23px; margin-top: 23px; box-shadow: 3px 3px 20px black;">
                <div style="background-color: lightgray; text-align: center; height: 50px;padding-top: 10px; "><h4 style="font-weight: normal;"><%=item.getName()%></h4></div>
                <div style="margin: auto;">
                    <h2 style="color: green; text-align:center;"><%=item.getPrice()%></h2>
                    <p style="text-align:center; margin-top: 15px;"><%=item.getGbram()%> GB RAM</p>
                    <p style="text-align:center;"><%=item.getGbssd()%> GB SSD</p>
                    <p style="text-align:center;"><%=item.getProcessor()%></p>
                </div>
                <button style="border: none; width:90%; height:30px; margin-left: 20px; margin-top: 15px; background-color: green;color:white;">Buy Now</button>
            </div>

            <%
                    }
                }
            %>
        </div>



</div>





</body>
<script src=”https://code.jquery.com/jquery-3.2.1.slim.min.js” integrity=”sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN” crossorigin=”anonymous”></script>

<script src=https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js integrity=”sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q” crossorigin=”anonymous”></script>

<script src=”https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js” integrity=”sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl” crossorigin=”anonymous”></script>
</html>
