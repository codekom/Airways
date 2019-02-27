package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import java.text.*;

public final class adminPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .mydiv\n");
      out.write("            {\n");
      out.write("               width: 550px;\n");
      out.write("               height: 400px;\n");
      out.write("               margin-left: 400px;\n");
      out.write("               margin-top: 25px;\n");
      out.write("               background-color: transparent;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .mydiv2\n");
      out.write("            {\n");
      out.write("                width:1330px;\n");
      out.write("                height: 30px;\n");
      out.write("                background-color: #000000;\n");
      out.write("            }\n");
      out.write("            .mydiv1\n");
      out.write("            {\n");
      out.write("                width: 1330px;\n");
      out.write("                height: 100px;\n");
      out.write("                background-color: black;\n");
      out.write("                margin-top: 0px;\n");
      out.write("                padding: 0px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            .mydiv3{\n");
      out.write("                height: 500px;\n");
      out.write("                background-image: url(\"images/af.jpg\");\n");
      out.write("            }\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                background-color: black;\n");
      out.write("             }\n");
      out.write("            a{\n");
      out.write("                text-align: center;\n");
      out.write("                color: yellow;\n");
      out.write("                 text-decoration: none;\n");
      out.write("              }\n");
      out.write("              a:hover\n");
      out.write("              {\n");
      out.write("                  text-decoration: underline;\n");
      out.write("              }\n");
      out.write("             td{\n");
      out.write("                 height: 80px;\n");
      out.write("                 font-size: 30px;\n");
      out.write("                 text-align: center;\n");
      out.write("                 width: 200px;\n");
      out.write("              }\n");
      out.write("               h1{\n");
      out.write("                   padding-left: 400px;\n");
      out.write("               }\n");
      out.write("               b{\n");
      out.write("                   color:  yellow;\n");
      out.write("                }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

           String s = (String)session.getAttribute("adminlg");
           if (s == null)
               {
                 response.sendRedirect("admin.jsp");
                 }
        
      out.write("\n");
      out.write("        <div class=\"mydiv1\">\n");
      out.write("            <font color=\"white\" size=\"20px\">Airline Ticket Booking</font>\n");
      out.write("            ");

               Date dNow = new Date( );
               SimpleDateFormat ft =new SimpleDateFormat ("E yyyy.MM.dd");
               out.print( "<h2 align=\"right\" style=\"color:white\">" + ft.format(dNow) + "</h2>");
           
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"mydiv3\">\n");
      out.write("        <div class=\"mydiv\">\n");
      out.write("            <font size=\"50px\" style=\"padding-left:100px\"><b>Welcome Admin!!</b></font>\n");
      out.write("            <table align=\"center\" width=\"550\">\n");
      out.write("                 <tr>\n");
      out.write("                     <td colspan=\"2\"><a href=\"addFlights.jsp\"><b>Add Flights</b></a></td>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                      <td colspan=\"2\"><a href=\"viewFlights.do\"><b>View Flights</b></a></td>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                      <td colspan=\"2\"><a href=\"viewUsers.do\"><b>View Users</b></a></td>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                         <td>\n");
      out.write("                             <a href=\"admin.jsp?msg=Logged out\">\n");
      out.write("                                 <input type=\"button\" value=\"Log out\">\n");
      out.write("                             </a>\n");
      out.write("                             <p>\n");
      out.write("                                   ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                             </p>\n");
      out.write("                         </td>\n");
      out.write("                  </tr>\n");
      out.write("            </table>\n");
      out.write("     </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"mydiv2\">\n");
      out.write("            <h3 style=\"text-align: center;color: white\">Copyright 2015. All rights reserved.</h3>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /adminPage.jsp(112,35) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.msg != null }", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                       <b>");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.msg}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("</b>\n");
        out.write("                                   ");
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }
}
