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
               width: 1330px;
               min-height: 500px;
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
                min-height: 500px;
                background-image: url("images/a2.jpg");
            }
            body
            {
                background-color: black;
             }
            h3{
                text-align: center;
                color: white;
             }
             td{
                 height: 50px;
                 font-size: 30px;
                 text-align: center;
                 width: 400px;
                 color: white;
              }
               h1{
                   padding-left: 400px;
               }
               b{
                   color: white;
                }
                a{
                text-align: center;
                color: white;
                 text-decoration: none;
              }
              a:hover
              {
                  text-decoration: underline;
              }
        </style>
    </head>
    <body>
        <%---<%
           String s = (String)session.getAttribute("plg");
           if (s == null)
               {
                 response.sendRedirect("home.jsp");
                 }

        %>---%>
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
              <font color="white" size="40px" style="padding-left:500px">Tickets Booked</font>
              <table align="center">
        <tr style="font-weight:bold">
            <td>Ticket ID</td>
            <td>Flight ID</td>
            <td>Seats Booked</td>
       </tr>

       <c:forEach var="d" items="${requestScope.data1}">

	 <tr>
                 <td><c:out value="${d.tid}"/></td>
                 <td><c:out value="${d.bkfid}"/></td>
                 <td><c:out value="${d.wanted}"/></td>
                 <td colspan="2"><a href="CancelTicket1.do?k=${d.tid}">Cancel</a></td>
         </tr>
	 </c:forEach>
         <tr>
                     <td colspan="4"><a href="cpage.jsp" title="Back to home page">
                             <font color="white">BACK</font>
                         </a>
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
