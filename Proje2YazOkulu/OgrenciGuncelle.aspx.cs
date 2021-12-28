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
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            TxtId.Text = x.ToString();
            TxtId.Enabled = false;
            if (Page.IsPostBack == false) 
            {
                EntityOgrenci ent = new EntityOgrenci();
                List<EntityOgrenci> OgrList = BLLOgrenci.BllDetay(x);
                TxtAd.Text = OgrList[0].Ad.ToString();
                TxtSoyad.Text = OgrList[0].Soyad.ToString();
                TxtNumara.Text = OgrList[0].Numara.ToString();
                TxtMail.Text = OgrList[0].Mail.ToString();
                TxtSifre.Text = OgrList[0].Sifre.ToString();

            }     
        }
    protected void Button1_Click(object sender, EventArgs e)
        {
            EntityOgrenci ent = new EntityOgrenci();
            ent.Ad = TxtAd.Text;
            ent.Soyad = TxtSoyad.Text;
            ent.Numara = TxtNumara.Text;
            ent.Sifre = TxtSifre.Text;
            ent.Mail = TxtMail.Text;
            ent.Id = Convert.ToInt32(TxtId.Text);
            BLLOgrenci.OgrenciGuncelleBLL(ent);
            Response.Redirect("OgrenciListesi.aspx");
        }
    }
}