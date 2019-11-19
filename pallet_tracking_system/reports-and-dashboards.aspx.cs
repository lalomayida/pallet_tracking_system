using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class reports_and_dashboards : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            showData();
    }
    private void showData()
    {
        String ptsDBConnection = ConfigurationManager.AppSettings["ptsConnection"].ToString();
        System.Data.SqlClient.SqlConnection con = new SqlConnection(ptsDBConnection);
        String query = "Select top 100 AirTemperature From tbWeathers Where stationID = 1 order by id desc";
        SqlCommand cmd = new SqlCommand(query, con);
        DataTable tb = new DataTable();
        try
        {
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            tb.Load(dr, LoadOption.OverwriteChanges);
            con.Close();
        }
        catch { }

        if (tb != null)
        {
            String chart = "";
            // You can change your chart height by modify height value
            chart = "<canvas id=\"line-chart\"width =\"100%\" height=\"40\"></canvas>";
            chart += "<script>";
            chart += "new Chart(document.getElementById(\"line-chart\"),{ type: 'line', data:{labels: [";

                // more details in x-axis
                    for (int i = 0; i < 100; i++)
                        chart += i.ToString() + ",";
                    chart = chart.Substring(0, chart.Length - 1);

                    chart += "],datasets: [{ data: [";

                    // put data from database to chart
                    String value = "";
                    for (int i = 0; i < tb.Rows.Count; i++)
                        value += tb.Rows[i]["AirTemperature"].ToString() + ",";
                    value = value.Substring(0, value.Length - 1);

                    chart += value;

                    chart += "],label: \"Air Temperature\",borderColor: \"#3e95cd\",fill: true}"; // Chart color
                    chart += "]},options: { title: { display: true,text: 'Air Temperature (oC)'}}"; // Chart title
                    chart += "});";
                    chart += "</script>"; 
                    ltChart.Text = chart;
        }
    }
}