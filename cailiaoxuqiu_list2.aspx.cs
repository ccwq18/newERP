using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class cailiaoxuqiu_list2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string sql;
            sql = "select * from cailiaoxuqiu where gongyingshang ='" + Session["username"].ToString().Trim() + "' order by id desc";
            getdata(sql);
        }
    }

    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {

            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "���������й�" + result.Tables[0].Rows.Count+"��";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "�����κ�����";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from cailiaoxuqiu where 1=1";
        if (dingdanhao.Text.ToString().Trim()!="����" ){ sql=sql+" and dingdanhao like '%" + dingdanhao.Text.ToString().Trim() + "%'";}
        if (dingdanmingcheng.Text.ToString().Trim()!="" ){ sql=sql+" and dingdanmingcheng like '%" + dingdanmingcheng.Text.ToString().Trim() + "%'";}
        if (xuqiucailiao.Text.ToString().Trim()!="" ){ sql=sql+" and xuqiucailiao like '%" + xuqiucailiao.Text.ToString().Trim() + "%'";}
        //if (gongyingshang.Text.ToString().Trim()!="����" ){ sql=sql+" and gongyingshang like '%" + gongyingshang.Text.ToString().Trim() + "%'";}
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from cailiaoxuqiu where gongyingshang ='" + Session["username"].ToString().Trim() + "' order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }
	public string riqigeshi(object str)
    {
        string strTmp = str.ToString();
        DateTime dt = Convert.ToDateTime(strTmp);
        string ss = dt.ToShortDateString();
        return ss;
        
    } 
}

