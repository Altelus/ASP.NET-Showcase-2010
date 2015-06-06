using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: If you change the interface name "IDigital" here, you must also update the reference to "IDigital" in Web.config.
[ServiceContract]
public interface IDigital
{
    [OperationContract]
    DigitalContent GetDigitalContentByID(int id);
    [OperationContract]
    List<DigitalContent> GetDigitalContent();
    [OperationContract]
    int GetCount();
    [OperationContract]
    List<DigitalContent> SearchDigitalContent(string s);
    
}
