using System;
using System.Collections.Generic;
using System.ComponentModel;
using SD=System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Data;

namespace Employee_Directory
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        public MySqlConnection myConn;
        public MySqlCommand MyComand;
        public string constr = "Server=localhost;Database=employee;Uid=root;";
        public SD.DataSet Ds;

        private void button2_Click(object sender, EventArgs e)
        {
            Form2 registerform = new Form2();
            registerform.Show();
            
        }

        private void textBox1_Enter(object sender, EventArgs e)
        {
            if (textBox1.Text == "Введите фамилию руководителя")
            {
                textBox1.ForeColor = Color.Black;
                textBox1.Text = "";
            }
        }

        private void textBox1_Leave(object sender, EventArgs e)
        {
            if (textBox1.Text.Length == 0)
            {
                textBox1.ForeColor = Color.Black;
                textBox1.Text = "Введите фамилию руководителя";
            }
        }

        private void MainForm_Load(object sender, EventArgs e)
        {

        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            string script = "SELECT Surname, Name, MiddleName, PhoneNumber, PostalAddress, departament, post From infemployee";
            myConn = new MySqlConnection(constr);
            myConn.Open();

            MySqlDataAdapter Zapros1 = new MySqlDataAdapter(script, constr);
            SD.DataTable table = new SD.DataTable();
            Zapros1.Fill(table);
            dataGridView1.DataSource = table;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            string script = "SELECT managers.ID_managers,managers.Surname, managers.Name, managers.MiddleName,managers.departament, infemployee.Surname, infemployee.Name, infemployee.MiddleName FROM managers INNER JOIN infemployee On managers.ID_emplpoyee = infemployee.ID_emplpoyee";
            myConn = new MySqlConnection(constr);
            myConn.Open();

            MySqlDataAdapter Zapros2 = new MySqlDataAdapter(script, constr);
            SD.DataTable table = new SD.DataTable();
            Zapros2.Fill(table);
            dataGridView1.DataSource = table;
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            string script = "SELECT managers.Surname, managers.Name, managers.MiddleName, managers.Subordinates FROM managers WHERE Subordinates = 'Нет людей в подчинении'";
            myConn = new MySqlConnection(constr);
            myConn.Open();

            MySqlDataAdapter Zapros3 = new MySqlDataAdapter(script, constr);
            SD.DataTable table = new SD.DataTable();
            Zapros3.Fill(table);
            dataGridView1.DataSource = table;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String Username = textBox1.Text;

            DB db = new DB();

            db.openConnection();
            DataTable table = new DataTable();
            MySqlDataAdapter adapter = new MySqlDataAdapter();
            MySqlCommand command = new MySqlCommand("SELECT managers.ID_managers,managers.Surname, managers.Name, managers.MiddleName, managers.departament, infemployee.Surname, infemployee.Name, infemployee.MiddleName FROM managers INNER JOIN infemployee On managers.ID_emplpoyee = infemployee.ID_emplpoyee WHERE managers.Surname = @Surname", db.getConnection());
            command.Parameters.Add("@Surname", MySqlDbType.VarChar).Value = textBox1.Text;

            adapter.SelectCommand = command;
            adapter.Fill(table);
            dataGridView1.DataSource = table;

            db.closeConnection();
        }
    }
}
