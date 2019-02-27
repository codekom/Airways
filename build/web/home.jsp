<%--
    Document   : error
    Created on : Jun 24, 2015, 10:30:34 PM
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
            .mydiv1
            {
                width: 1330px;
                height: 100px;
                text-align: center;
            }
            .mydiv2
            {
                width:1330px;
                height: 30px;
                background-color: #000000;
            }
            .mydiv3{
                background-image: url("images/af.jpg");
                background-repeat: no-repeat;
                height: 800px;
                width: 1340px;
                float: left;
            }
            body{
               background-color: #000000;
            }
            b{
                color: white;
            }
            td{
                text-align: center;
            }
            li{
                  font-size: 40px;
                  font-weight: 400;
             }

        </style>
    </head>
    <body>
        <table width="1340">
      <tr>
        <td>
           <div class="mydiv1">
           <font color="white" size="20px">Airline Ticket Booking</font>
           <%
               Date dNow = new Date( );
               SimpleDateFormat ft =new SimpleDateFormat ("E yyyy.MM.dd");
               out.print( "<h2 align=\"right\" style=\"color:white\">" + ft.format(dNow) + "</h2>");
           %>
           </div>
        </td>
      <tr>
          <td>
             <div class="mydiv3">
                 <table width="1000" style="margin-left:50px;margin-top: 40px;">
                     <tr>
                         <td>
                             <div>
                            <html:form action="PloginServ" method="post">
                           <table align="left" bgcolor="black" width="305" height="300">
                           <tr>
                               <td colspan="2" bgcolor="orange"><b>LOGIN</b></td>
                           </tr>
                           <tr>
                               <td><font color="white"><b>Username</b></font></td>
                               <td><html:text property="name" size="10px" value="${sessionScope.logger.name}" /></td>
                           </tr>
                           <tr>
                                <td><font color="white"><b>Password</b></font></td>
                                <td><html:password property="passw" size="10px" /></td>
                           </tr>
                           <tr>
                                <td colspan="2"><html:submit value="login"/></td>
                           </tr>
                           <tr>
                                <td colspan="2">
                                <c:if test="${param.msg != null }">
                                    <b>${param.msg}</b>
                                </c:if>
                                <%
                                     String s = (String)session.getAttribute("plg");
                                     if (s == null )
                                     {

                                %>
                                           <c:if test="${param.msg == null }">
                                           <b>log in here</b>
                                           </c:if>
                                <%
                                     }
                                     else
                                     {
                                           session.setAttribute("plg",null);
                                     }
                                %>
                                </td>
                           </tr>
                           <tr>
                               <td>
                                   <a href="pregister.jsp" style="text-decoration:none" title="Click here to resgister">
                                       <font color="white"><b>Sign up</b></font>
                                   </a>
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   <a href="forgotP.jsp" style="text-decoration:none" title="Forgot Password">
                                       <font color="white"><b>Forgot Password</b></font>
                                   </a>
                               </td>
                           </tr>
                           </table>
                           </html:form>
                    </div>
                         </td>
                         <td>
                             <h1> Flights Running</h1>
                            <marquee direction="up" scrolldelay="170" scrollamount="10" onMouseOver="this.setAttribute('scrollamount',0,0)" onMouseOut="this.setAttribute('scrollamount',8,0)">
                                <ul><li><font size="20">Indigo</font></li>
                              <li>Air India</li>
                              <li>Go air</li>
                              <li>Jet Airways</li>
                              <li>Jet Konnect</li>
                              <li>Vistara Airlines</li>
                              </ul>
                             </marquee>
                        </td>
                     </tr>
                 </table>
                    
              </div>
          </td>
      </tr>
      <tr>
          <td>
             <div class="mydiv2">
                 <h3 style="text-align: center;color: white">Copyright 2015. All rights reserved.</h3>
             </div>
          </td>
      </tr>
   </table>
    </body>
</html>
