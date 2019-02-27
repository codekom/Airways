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
               min-height: 650px;
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
                min-height: 650px;
            }
            a{
                 text-decoration: none;
                 color: white;
              }
              a:hover
              {
                  text-decoration: underline;
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
                 width: 500px;
              }
               h1{
                   padding-left: 400px;
               }
               b{
                   color: white;
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
        <html:form action="PassDetailServ" method="post">
             <table align="center">
                 <tr>
                      <td colspan="2"><h3>Enter Your Details</h3></td>
                 </tr>
                 <tr>
                     <td><b>Username</b></td>
                      <td><html:text property="name" /></td>
                 </tr>
                 <tr>
                      <td><b>Password</b></td>
                      <td><html:password property="passw"  /></td>
                 </tr>
                 <tr>
                      <td><b>Email</b></td>
                      <td><html:text property="email"  /></td>
                 </tr>
                 <tr>
                      <td><b>Mobile No.</b></td>
                      <td><html:text property="phone"  /></td>
                 </tr>
                 <tr>
                     <td><b>Choose security Question 1</b></td>
                     <td><html:select property="sq">
                             <html:option value="select">select</html:option>
                             <html:option value="Which was your First School?">Which was your First School?</html:option>
                             <html:option value="Where was your mother born?">Where was your Mother born?</html:option>
                             <html:option value="Who is your best friend?">Who is your best friend?</html:option>
                         </html:select>
                     </td>
                 </tr>
                 <tr>
                      <td><b>Answer for the security question 1</b></td>
                      <td><html:text property="ans"  /></td>
                 </tr>
                 <tr>
                    <td><b>Choose security Question 2</b></td>
                     <td><html:select property="sq2">
                             <html:option value="select">select</html:option>
                             <html:option value="Which was your First School?">Which was your First School?</html:option>
                             <html:option value="Where was your Father born?">Where was your Father born?</html:option>
                             <html:option value="Who is your best friend?">Who is your best friend?</html:option>
                         </html:select>
                     </td>
                 </tr>
                 <tr>
                      <td><b>Answer for the security question 2</b></td>
                      <td><html:text property="ans2"  /></td>
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
                     <td colspan="2"><a href="home.jsp" title="Back to home page">
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
