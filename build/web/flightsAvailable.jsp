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
              <font color="white" size="40px" style="padding-left:500px">Flights Available</font>
              <table align="center">
                <tr style="font-weight:bold">
                    <td>Name</td>
                    <td>Departure</td>
                    <td>Arrival</td>
                    <td>Seats</td>
                    <td>Ticket Rate</td>
                    <td>Day</td>
                    <td>Duration</td>
                </tr>
                <c:forEach var="d" items="${requestScope.temp}">
                <tr>
                     <td><c:out value="${d.fname}"/></td>
                     <td><c:out value="${d.departure}"/></td>
                     <td><c:out value="${d.arrival}"/></td>
                     <td><c:out value="${d.seats}"/></td>
                     <td><c:out value="${d.price}"/></td>
                     <td>
                     <c:if test="${d.day == 0}">
                       <c:out value="Sunday"/>
                     </c:if>
                     <c:if test="${d.day == 1}">
                       <c:out value="Monday"/>
                     </c:if>
                     <c:if test="${d.day == 2}">
                       <c:out value="Tuesday"/>
                     </c:if>
                     <c:if test="${d.day == 3}">
                       <c:out value="Wednesday"/>
                     </c:if>
                     <c:if test="${d.day == 4}">
                       <c:out value="Thursday"/>
                     </c:if>
                     <c:if test="${d.day == 5}">
                       <c:out value="Friday"/>
                     </c:if>
                     <c:if test="${d.day == 6}">
                       <c:out value="Saturday"/>
                     </c:if>
                     </td>
                     <td><c:out value="${d.duration}"/></td>
                     <td><a href="bookTicket.jsp?m=${d.fid}">BOOK</a></td>
                </tr>
	        </c:forEach>
                <tr>
                     <td colspan="9"><a href="SearchFlight.jsp" title="Back to Search Flights">
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
