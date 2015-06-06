using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DiggStory
/// </summary>
namespace DiggSample
{
    public class DiggStory
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int NumDiggs { get; set; }
        public Uri HrefLink { get; set; }
        public string Thumbnail { get; set; }
        public string UserName { get; set; }

    }
}