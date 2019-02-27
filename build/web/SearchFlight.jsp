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
               height: 500px;
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
                text-align: center;
            }
            .mydiv3{
                height: 500px;
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
        <html:form action="searchFlightServ" method="post">
             <table align="center">
                 <tr>
                      <td colspan="2"><h3>Search Flights</h3></td>
                 </tr>
                  <tr>
                     <td><b>From Location</b></td>
                     <td><html:select property="fromloc">
                             <html:option value="select">select</html:option>
                             <html:option value="Mumbai">Mumbai</html:option>
                             <html:option value="Delhi">Delhi</html:option>
                             <html:option value="Chennai">Chennai</html:option>
                             <html:option value="Kolkata">Kolkata</html:option>
                             <html:option value="Ranchi">Ranchi</html:option>
                         </html:select>
                     </td>
                 </tr>
                 <tr>
                     <td><b>To Location</b></td>
                      <td><html:select property="toloc">
                             <html:option value="select">select</html:option>
                             <html:option value="Mumbai">Mumbai</html:option>
                             <html:option value="Delhi">Delhi</html:option>
                             <html:option value="Chennai">Chennai</html:option>
                             <html:option value="Kolkata">Kolkata</html:option>
                             <html:option value="Ranchi">Ranchi</html:option>
                         </html:select>
                      </td>
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
                     <td colspan="2"><a href="cpage.jsp">
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
