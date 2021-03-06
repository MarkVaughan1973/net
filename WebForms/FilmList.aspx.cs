﻿using Core.DataAccess;
using Core.DataAccess.EntityFramework;
using Core.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms
{
    public partial class FilmList : System.Web.UI.Page
    {
        private Order order;
        private IProductModel productModel;

        protected void Page_Init(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            order = Session["order"] as Order;
            productModel = new EfProductModel();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {            
            string id = GridView1.SelectedValue as string;
            Product product = productModel.SelectById(id);
            order.AddProduct(product, 1);
            Response.Redirect("Basket.aspx");
        }
    }
}