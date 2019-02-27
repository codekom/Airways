<%--
    Document   : admin
    Created on : Jun 24, 2015, 8:51:51 PM
    Author     : Dell_Vostro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .mydiv
            {
               width: 550px;
               height: 400px;
               margin-left: 400px;
               margin-top: 25px;
               background-color: transparent;

            }
            .mydiv2
            {
                width:1330px;
                height: 30px;
                background-color: #000000;
            }
            .mydiv1
            {
                width: 1330px;
                height: 100px;
                background-color: black;
                margin-top: 0px;
                padding: 0px;
                text-align: center;
            }
            .mydiv3{
                height: 500px;
                background-image: url("images/af.jpg");
            }
            body
            {
                background-color: black;
             }
            a{
                text-align: center;
                color: yellow;
                 text-decoration: none;
              }
              a:hover
              {
                  text-decoration: underline;
              }
             td{
                 height: 80px;
                 font-size: 30px;
                 text-align: center;
                 width: 200px;
              }
               h1{
                   padding-left: 400px;
               }
               b{
                   color:  yellow;
                }
        </style>
    </head>
    <body>
        <%
           String s = (String)session.getAttribute("adminlg");
           if (s == null)
               {
                 response.sendRedirect("admin.jsp");
                 }
        %>
        <div class="mydiv1">
            <font color="white" size="20px">Airline Ticket Booking</font>
            <%
               Date dNow = new Date( );
               SimpleDateFormat ft =new SimpleDateFormat ("E yyyy.MM.dd");
               out.print( "<h2 align=\"right\" style=\"color:white\">" + ft.format(dNow) + "</h2>");
           %>
        </div>
        <div class="mydiv3">
        <div class="mydiv">
            <font size="50px" style="padding-left:100px"><b>Welcome Admin!!</b></font>
            <table align="center" width="550">
                 <tr>
                     <td colspan="2"><a href="addFlights.jsp"><b>Add Flights</b></a></td>
                 </tr>
                 <tr>
                      <td colspan="2"><a href="viewFlights.do"><b>View Flights</b></a></td>
                 </tr>
                 <tr>
                      <td colspan="2"><a href="viewUsers.do"><b>View Users</b></a></td>
                 </tr>
                 <tr>
                         <td>
                             <a href="admin.jsp?msg=Logged out">
                                 <input type="button" value="Log out">
                             </a>
                             <p>
                                   <c:if test="${param.msg != null }">
                                       <b>${param.msg}</b>
                                   </c:if>
                             </p>
                         </td>
                  </tr>
            </table>
     </div>
        </div>
        <div class="mydiv2">
            <h3 style="text-align: center;color: white">Copyright 2015. All rights reserved.</h3>
        </div>
    </body>
</html>
