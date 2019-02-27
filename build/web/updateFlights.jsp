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
               width: 350px;
               height: 900px;
               margin-left: 500px;
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
                background-image: url("images/af.jpg");
                height: 900px;
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
                 width: 200px;
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
        <html:form action="FlightServ" method="post">
             <table align="center">
                 <tr>
                      <td colspan="2"><h3>Update Flight Details</h3></td>
                 </tr>
                  <tr>
                     <td><b>Flight ID</b></td>
                      <td><html:text property="fid" value="${param.msg2}" readonly="true"/></td>
                 </tr>
                 <tr>
                     <td><b>Flight Name</b></td>
                      <td><html:text property="fname" /></td>
                 </tr>
                 <tr>
                      <td><b>Day</b></td>
                      <td><html:text property="day"  /></td>
                 </tr>
                 <tr>
                      <td><b>Seats</b></td>
                      <td><html:text property="seats"  /></td>
                 </tr>
                 <tr>
                      <td><b>From Location</b></td>
                      <td><html:text property="fromloc"  /></td>
                 </tr>
                 <tr>
                      <td><b>To Location</b></td>
                      <td><html:text property="toloc"  /></td>
                 </tr>
                 <tr>
                      <td><b>Duration</b></td>
                      <td><html:text property="duration"  /></td>
                 </tr>
                 <tr>
                      <td><b>Arrival Time</b></td>
                      <td><html:text property="arrival"  /></td>
                 </tr>
                 <tr>
                      <td><b>Departure Time</b></td>
                      <td><html:text property="departure"  /></td>
                 </tr>
                 <tr>
                      <td><b>Cost of Ticket</b></td>
                      <td><html:text property="price"  /></td>
                 </tr>
	         <tr>
                     <td colspan="2"><html:submit value="SUBMIT" /></td>
                 </tr>
                 <tr>
                      <td colspan="2">
                           <c:if test="${param.msg != null }">
                              <b>${param.msg}</b>
                           </c:if>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2"><a href="adminPage.jsp" title="Back to home page">
                             <font color="white">BACK</font>
                         </a>
                     </td>
                 </tr>
            </table>
        </html:form>
     </div>
        </div>
        <div class="mydiv2">
            <h3 style="text-align: center;color: white">Copyright 2015. All rights reserved.</h3>
        </div>
    </body>
</html>
