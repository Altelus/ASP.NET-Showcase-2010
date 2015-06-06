using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


/// <summary>  
/// Vehicle  
/// base class for Car   
/// </summary>  
///   
[Serializable]//a class must be declared Serializable in order   
//to be usable with viewstate and session  

public class Vehicle
{
    //declare the class fields  
    //these can be public, private or protected  
    //most commonly declared as protected so they are accessable to derived classes  
    protected string _SerialNumber;
    protected string _Licence;

    //default constructor   
    public Vehicle()
    {
        SerialNumber = string.Empty;
        Licence = string.Empty;
    }

    //overloaded constructor  
    public Vehicle(string sNum, string licenceIn)
    {
        SerialNumber = sNum;
        Licence = licenceIn;
    }

    //method  
    public string getInfo()
    {
        return SerialNumber + " " + Licence;
    }

    //property - like a c++ accessor method, except that set  
    //and get are done in one function  
    public string SerialNumber
    {
        get { return _SerialNumber; }
        set { _SerialNumber = value; }
    }

    //property  
    public string Licence
    {
        get { return _Licence; }
        set { _Licence = value; }
    }
}

/// <summary>  
/// Car  
/// base class for Truck   
/// </summary>  
///   
[Serializable]

public class Car : Vehicle
{
    //the following statements declare the fields  
    //_make and _model as fields and provide  
    //the properties make and model to access the fields  
    public string make { get; set; }
    public string model { get; set; }

    public Car()
    {
        make = string.Empty;
        model = string.Empty;
    }

    //in the overloaded constructor call the base constructor using the scope operator ":"  
    public Car(string sNum, string licenceIn, string modelIn, string makeIn)
        : base(sNum, licenceIn)
    {
        make = makeIn;
        model = modelIn;
    }
    //this declares a new version of getInfo that only applies to Car  
    //and any other classes derived from Car  
    public new string getInfo()
    {
        return SerialNumber + " " + Licence + " " + make + " " + model;
    }

    //lessInfo is declared as a virtual property  
    public virtual string lessInfo
    {
        get { return make + " " + model; }
    }
}

/// <summary>  
/// Truck  
/// </summary>  
///   
[Serializable]

public class Truck : Car
{
    public int payLoad { get; set; }

    public Truck()
    {
        payLoad = 0;
    }

    public Truck(string sNum, string licenceIn, string modelIn, string makeIn, int payIn)
        : base(sNum, licenceIn, modelIn, makeIn)
    {
        payLoad = payIn;
    }

    //the method getInfo is redefined for Truck  
    //if a reference to Car is used to store a Truck a   
    //call to getInfo will return the Car version because   
    //this method was not declared virtual in Car  
    public new string getInfo()
    {
        return SerialNumber + " " + Licence + " " + make + " " + model + " " + payLoad.ToString();
    }

    //lessInfo is virtual in the base class Car  
    //we must override it to declare a new version for Truck  
    //when this method is called for either a Car or Truck   
    //reference the compiler will look at the actual  
    //object to verify which version of the method should be called  
    public override string lessInfo
    {
        get { return make + " " + model + " " + payLoad.ToString(); }
    }
}