using System;
using System.Collections.Generic;
using System.ComponentModel;
using SD = System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Employee_Directory
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        public MySqlConnection myConn;
        public MySqlCommand MyComand;
        public MySqlCommand MyComand1;
        public string constr = "Server=localhost;Database=employee;Uid=root;";
        public SD.DataSet Ds;

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_Enter(object sender, EventArgs e)
        {
            if(textBox1.Text == "Фамилия")
            {
                textBox1.ForeColor = Color.Black;
                textBox1.Text = "";
            }
        }

        private void textBox1_Leave(object sender, EventArgs e)
        {
            if(textBox1.Text.Length == 0)
            {
                textBox1.ForeColor = Color.Black;
                textBox1.Text = "Фамилия";
            }
        }

        private void textBox4_Enter(object sender, EventArgs e)
        {
            if (textBox4.Text == "Имя")
            {
                textBox4.ForeColor = Color.Black;
                textBox4.Text = "";
            }
        }

        private void textBox4_Leave(object sender, EventArgs e)
        {
            if (textBox4.Text.Length == 0)
            {
                textBox4.ForeColor = Color.Black;
                textBox4.Text = "Имя";
            }
        }

        private void textBox3_Enter(object sender, EventArgs e)
        {
            if (textBox3.Text == "Отчество")
            {
                textBox3.ForeColor = Color.Black;
                textBox3.Text = "";
            }
        }

        private void textBox3_Leave(object sender, EventArgs e)
        {
            if (textBox3.Text.Length == 0)
            {
                textBox3.ForeColor = Color.Black;
                textBox3.Text = "Отчество";
            }
        }

        private void textBox2_Enter(object sender, EventArgs e)
        {
            if (textBox2.Text == "Дата рождения")
            {
                textBox2.ForeColor = Color.Black;
                textBox2.Text = "";
            }
        }

        private void textBox2_Leave(object sender, EventArgs e)
        {
            if (textBox2.Text.Length == 0)
            {
                textBox2.ForeColor = Color.Black;
                textBox2.Text = "Дата рождения";
            }
        }

        private void textBox5_Enter(object sender, EventArgs e)
        {
            if (textBox5.Text == "Телефон")
            {
                textBox5.ForeColor = Color.Black;
                textBox5.Text = "";
            }
        }

        private void textBox5_Leave(object sender, EventArgs e)
        {
            if (textBox5.Text.Length == 0)
            {
                textBox5.ForeColor = Color.Black;
                textBox5.Text = "Телефон";
            }
        }

        private void textBox6_Enter(object sender, EventArgs e)
        {
            if (textBox6.Text == "Почтовый индекс")
            {
                textBox6.ForeColor = Color.Black;
                textBox6.Text = "";
            }
        }

        private void textBox6_Leave(object sender, EventArgs e)
        {
            if (textBox6.Text.Length == 0)
            {
                textBox6.ForeColor = Color.Black;
                textBox6.Text = "Почтовый индекс";
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DB db = new DB();
            MySqlCommand command = new MySqlCommand("INSERT INTO infemployee(Surname, Name, MiddleName, BornDate, PhoneNumber, PostalAddress,Registration_Date, departament, post) VALUES (@Surname, @Name, @MiddleName, @BornDate, @PhoneNumber, @PostalAddress,@Registration_Date, @departament, @post )", db.getConnection());
            command.Parameters.Add("@Surname", MySqlDbType.VarChar).Value = textBox1.Text;
            command.Parameters.Add("@Name", MySqlDbType.VarChar).Value = textBox4.Text;
            command.Parameters.Add("@MiddleName", MySqlDbType.VarChar).Value = textBox3.Text;
            command.Parameters.Add("@BornDate", MySqlDbType.VarChar).Value = textBox2.Text;
            command.Parameters.Add("@PhoneNumber", MySqlDbType.VarChar).Value = textBox5.Text;
            command.Parameters.Add("@PostalAddress", MySqlDbType.VarChar).Value = textBox6.Text;
            command.Parameters.Add("@Registration_Date", MySqlDbType.Date).Value = textBox7.Text;
            command.Parameters.Add("@departament", MySqlDbType.VarChar).Value = textBox8.Text;
            command.Parameters.Add("@post", MySqlDbType.VarChar).Value = textBox9.Text;

            db.openConnection();

            if (command.ExecuteNonQuery() == 1)
            {
                MessageBox.Show("Сотрудник зарегестрирован");
            }
            db.closeConnection();
 
        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox7_Enter(object sender, EventArgs e)
        {
            if (textBox7.Text == "Введите текущую дату")
            {
                textBox7.ForeColor = Color.Black;
                textBox7.Text = "";
            }
        }

        private void textBox7_Leave(object sender, EventArgs e)
        {
            if (textBox7.Text.Length == 0)
            {
                textBox7.ForeColor = Color.Black;
                textBox7.Text = "Введите текущую дату";
            }
        }

        private void textBox8_Enter(object sender, EventArgs e)
        {
            if (textBox8.Text == "Введите должность")
            {
                textBox8.ForeColor = Color.Black;
                textBox8.Text = "";
            }
        }

        private void textBox8_Leave(object sender, EventArgs e)
        {
            if (textBox8.Text.Length == 0)
            {
                textBox8.ForeColor = Color.Black;
                textBox8.Text = "Введите должность";
            }
        }

        private void textBox9_Enter(object sender, EventArgs e)
        {
            if (textBox9.Text == "Введите отдел")
            {
                textBox9.ForeColor = Color.Black;
                textBox9.Text = "";
            }
        }

        private void textBox9_Leave(object sender, EventArgs e)
        {
            if (textBox9.Text.Length == 0)
            {
                textBox9.ForeColor = Color.Black;
                textBox9.Text = "Введите отдел";
            }
        }

        private void textBox9_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
