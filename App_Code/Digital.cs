using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: If you change the class name "Digital" here, you must also update the reference to "Digital" in Web.config.
public class Digital : IDigital
{
    #region IDigital Members

    DigitalContent IDigital.GetDigitalContentByID(int id)
    {
        DigitalDataContext db = new DigitalDataContext();
        var query = from dc in db.DigitalContents
                    where dc.ItemID == id
                    select dc;
        return query.Single();
    }

    List<DigitalContent> IDigital.GetDigitalContent()
    {
        DigitalDataContext db = new DigitalDataContext();
        var query = from dc in db.DigitalContents
                    select dc;
        return query.ToList();
    }

    int IDigital.GetCount()
    {
        DigitalDataContext db = new DigitalDataContext();

        var query = (from dc in db.DigitalContents
                     select dc).Count();

        return query;
    }

    List<DigitalContent> IDigital.SearchDigitalContent(string s)
    {
        DigitalDataContext db = new DigitalDataContext();

        var query = (from dc in db.DigitalContents
                     where dc.Title.Contains(s)
                     select dc);
        return query.ToList();
    }
    #endregion
}
