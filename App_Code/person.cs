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
/// Summary description for person
/// </summary>
/// 
[Serializable]
public class Person
{
  protected string _FName;
  protected string _LName;

  public Person()
  {
    FName = string.Empty;
    LName = string.Empty;
  }

  public Person(string fname, string lname)
  {
    FName = fname;
    LName = lname;
  }

  public string FName
  {
    get { return _FName; }
    set { _FName = value; }
  }

  public string LName
  {
    get { return _LName; }
    set { _LName = value; }
  }
}

[Serializable]
public class SenecaStudent : Person
{
  public string senecaID { get; set; }
  public string studentNum { get; set; }
  public string program { get; set; }
  public int semester { get; set; }

  public SenecaStudent()
  {
    senecaID = string.Empty;
    studentNum = string.Empty;
    program = string.Empty;
    semester = 0;
  }

  public SenecaStudent(string fname, string lname, string sID, string sNum, string prog, int sem)
    : base(fname, lname)
  {
    senecaID = sID;
    studentNum = sNum;
    program = prog;
    semester = sem;
  }
}