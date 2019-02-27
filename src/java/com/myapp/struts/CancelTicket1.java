/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

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
public class CancelTicket1 extends org.apache.struts.action.Action {
    
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
       SessionFactory sf=HibernateUtil.getSessionFactory();
        Session ss=sf.openSession();
        Transaction tx=null;
        try{
              tx=ss.beginTransaction();
              int s=Integer.parseInt(request.getParameter("k"));
              Booking b=null;
              b=(Booking)ss.get(Booking.class, s);
              Flight ff=null;
              ff=(Flight)ss.get(Flight.class,b.getBkfid());
              ff.setBseats(ff.getBseats()-b.getWanted());
              ss.delete(b);
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
