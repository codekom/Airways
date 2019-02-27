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
               height: 350px;
               border: 5px solid #000000;
               margin: auto;
               margin-top: 100px;
            }
            h3{
                text-align: center;
             }
             td{
                 height: 50px;
                 font-size: 30px;
                 text-align: center;
                 width: 200px;
              }
              body{
                  background-image: url("images/af.jpg");
               }
        </style>
    </head>
    <body>
        <div class="mydiv">
        <html:form action="adminServ" method="post">
             <table align="center">
                 <tr>
                      <td colspan="2"><h3>Admin Login</h3></td>
                 </tr>
                 <tr>
                      <td><b>Username</b></td>
                      <td><html:text property="username" value="${sessionScope.data1.username}"/></td>
                 </tr>
                 <tr>
                      <td><b>Password</b></td>
                      <td><html:password property="password"  /></td>
                 </tr>
	         <tr>
                     <td colspan="2"><html:submit value="Login" /></td>
                 </tr>
                 <tr>
                      <td colspan="2">
                           <c:if test="${param.msg != null }">
                              <b>${param.msg}</b>
                           </c:if>
                           <%
                                String s = (String)session.getAttribute("adminlg");
                                if (s == null )
                                {

                           %>
                                   <c:if test="${param.msg == null }">
                                      <b>Please log in</b>
                                   </c:if>
                           <%
                                }
                                else
                                {
                                     session.setAttribute("adminlg",null);
                                }
                           %>
                     </td>
                 </tr>
            </table>
        </html:form>
     </div>
    </body>
</html>
