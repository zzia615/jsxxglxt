using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsxxglxt
{
    public partial class Registe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string id = TeacherID.Text;

            if (id.Length != 6)
            {
                args.IsValid = false;
            }
            else
            {
                long l_name;
                if(long.TryParse(id,out l_name))
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string age = TeacherAge.Text;
            int i_age;
            if(int.TryParse(age,out i_age))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string id = TeacherID.Text;
                string name = TeacherName.Text;
                string age = TeacherAge.Text;

                string sql = "insert into Teacher(TeacherID,TeacherName,TeacherAge)" +
                    " values('" + id + "','" + name + "'," + age + ")";
                using (SqlConnection con = new SqlConnection(GloabalData.ConStr))
                {
                    con.Open();
                    var cmd = con.CreateCommand();
                    cmd.CommandText = sql;
                    cmd.ExecuteNonQuery();
                }

                Response.Write("<script>alert('注册成功');window.location.href='ShowInfo.aspx';</script>");
            }
        }
    }
}