/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;

/**
 *
 * @author Dell_Vostro
 */
public class adminServ extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Admin ab=(Admin)form;
        String u=ab.getUsername();
        String p=ab.getPassword();
        SessionFactory sf=HibernateUtil.getSessionFactory();
        Session ss=sf.openSession();
        Transaction tx=null;
        try{
            tx=ss.beginTransaction();
            HttpSession session = request.getSession();
            session.setAttribute("data1",ab);
            if(u.equals(""))
                response.sendRedirect("admin.jsp?msg=Username required");
            else if(p.equals(""))
                response.sendRedirect("admin.jsp?msg=Password required");
            else
            {
               Admin l=null;
               l=(Admin)ss.get(Admin.class,ab.getUsername());
               if(l!=null)
               {
                  if(!ab.getPassword().equals(l.getPassword()))
                  {
                     response.sendRedirect("admin.jsp?msg=Invalid User or Password");
                  }
                  else
                      session.setAttribute("adminlg", "yes");
               }
               else
                  response.sendRedirect("admin.jsp?msg=Invalid User or Password");
            }
            tx.commit();
            ss.close();
        }
        catch(Exception e)
        {
            response.sendRedirect("error.jsp?msg="+e.toString());
        }
        return mapping.findForward(SUCCESS);
    }
}
