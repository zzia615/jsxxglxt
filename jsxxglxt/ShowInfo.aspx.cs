using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsxxglxt
{
    public partial class ShowInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //string s_id = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //string s_name = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
            //string s_age = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text;

            //using (SqlConnection con = new SqlConnection(GloabalData.ConStr))
            //{
            //    con.Open();
            //    var cmd = con.CreateCommand();
            //    string sql = "update Teacher Set TeacherName='"+s_name+"',TeacherAge="+s_age+" where TeacherID='"+s_id+"'";
            //    try
            //    {

            //        cmd.CommandText = sql;
            //        cmd.ExecuteNonQuery();
            //    }
            //    catch (Exception ex)
            //    {

            //        throw new Exception(ex.Message + "\r\n" + sql);
            //    }
            //}
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //string s_id = GridView1.Rows[e.RowIndex].Cells[0].Text;

            //using (SqlConnection con = new SqlConnection(GloabalData.ConStr))
            //{
            //    con.Open();
            //    var cmd = con.CreateCommand();
            //    cmd.CommandText = "delete from Teacher where TeacherID='" + s_id + "'";
            //    cmd.ExecuteNonQuery();
            //}
        }
    }
}