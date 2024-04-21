using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ONLINEJOBPORTAL.User
{
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        private object clear;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(str);
                string query = @"Insert into contact values(@Name, @Email, @Subject, @Message)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", name.Value.Trim());
                cmd.Parameters.AddWithValue("@Email", email.Value.Trim());
                cmd.Parameters.AddWithValue("@Subject", subject.Value.Trim());
                cmd.Parameters.AddWithValue("@Message", message.Value.Trim());
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = " thanks for reaching out , we will look into your query!";
                    lblMsg.CssClass = " alert alert-success";
                    CLEAR();
                }
                else

                {
                    lblMsg.Visible = true;
                    lblMsg.Text = " cannot save record now, please try after some time..!";
                    lblMsg.CssClass = " alert alert-danger";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        private void CLEAR()
        {
            name.Value = string.Empty;
            email.Value = string.Empty;
            subject.Value = string.Empty;
            message.Value = string.Empty;
        }
    }
}