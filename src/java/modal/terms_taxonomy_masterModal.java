/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modal;

/**
 *
 * @author ASUS
 */
public class terms_taxonomy_masterModal {
    private int terms_id,parent_id;
    private String terms,texonomy,description,status,extra_1,extra_2,extra_3;
    
    //terms_id getset
    public int getterms_id()
    {
        return terms_id;
    }
    public void setterms_id(int terms_id)
    {
        this.terms_id = terms_id;
    }
    //parent_id getset
    public int getparent_id()
    {
        return parent_id;
    }
    public void setparent_id(int parent_id)
    {
        this.parent_id = parent_id;
    }
    // getsetterms
     public String getterms()
    {
        return terms;
    }
    
    public void setterms(String terms)
    {
        this.terms = terms;
    }
    //getsettexonomy
    public String gettexonomy()
    {
        return texonomy;
    }
    
    public void settexonomy(String texonomy)
    {
        this.texonomy = texonomy;
    }
    //getsetdescription
    public String getdescription()
    {
        return description;
    }
    
    public void setdescription(String description)
    {
        this.description = description;
    }
    //status
     public String getstatus()
    {
        return status;
    }
    
    public void setstatus(String status)
    {
        this.status = status;
    }
    //Extra_1
    public String getextra_1()
    {
        return extra_1;
    }
    
    public void setextra_1(String extra_1)
    {
        this.extra_1 = extra_1;
    }
    //Extra_2
    public String getextra_2()
    {
        return extra_2;
    }
    
    public void setextra_2(String extra_2)
    {
        this.extra_2 = extra_2;
    }
    
    //Extra_3
    
    public String getextra_3()
    {
        return extra_3;
    }
    
    public void setextra_3(String extra_3)
    {
        this.extra_3 = extra_3;
    }
    
}
