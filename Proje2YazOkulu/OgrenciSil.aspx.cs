﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer1;
using DataAccessLayer1;
using BusinessLogicLayer1;

namespace Proje2YazOkulu
{
    public partial class OgrenciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["OGRID"]);
            Response.Write(x);
            EntityOgrenci ent = new EntityOgrenci();
            ent.Id = x;
            BLLOgrenci.OgrenciSilBLL(ent.Id);
            Response.Redirect("OgrenciListesi.aspx");
        }
    }
}