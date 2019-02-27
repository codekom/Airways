/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;


/**
 *
 * @author Dell_Vostro
 */
public class searchFlightServ extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static String SUCCESS = "success";
    
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
        SessionFactory sf=HibernateUtil.getSessionFactory();
        Session session=sf.openSession();
        Transaction tx=null;
        Flight f=(Flight)form;
        try
        {
            tx=session.beginTransaction();
            String x,y;
            Query q=session.createQuery("From Flight F where F.fromloc= :x and F.toloc= :y");
            q.setParameter("x", f.getFromloc());
            q.setParameter("y", f.getToloc());
            List l=q.list();
            if(l!=null)
               request.setAttribute("temp",l);  
            tx.commit();
            session.close();
        }
        catch(Exception e)
        {
            response.sendRedirect("error.jsp?msg="+e.toString());
        }
        return mapping.findForward(SUCCESS);
    }
}
