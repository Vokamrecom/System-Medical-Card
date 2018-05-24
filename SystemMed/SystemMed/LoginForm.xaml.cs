using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Drawing;
using System.Windows.Navigation;
using SystemMed.Logic;
using SystemMed.View;


namespace SystemMed
{
    /// <summary>
    /// Логика взаимодействия для LoginForm.xaml
    /// </summary>
    public partial class LoginForm : Window
    {
        public LoginForm()
        {
            InitializeComponent();
            
        }
        private void Hyperlink_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Чтоб создать карту, необходимо в главном окне выбрать 'Новая карточка' ");
            //EditUserForm form2 = new EditUserForm();
            //form2.Show();
        }

        private void buttonCancel_Click(object sender, RoutedEventArgs e)
        {
            
            this.Close();
        }

        private void buttonOk_Click(object sender, RoutedEventArgs e)
        {
            TryLogin();
        }
        private void TryLogin()
        {
            string username = textBoxUserName.Text;
            string password = textBoxPassword.Password;

            string loginResultMessage = string.Empty;
            if (TryLogin(username, password, out loginResultMessage))
            {
                this.Close();
            }
            else
            {
                labelMessage.Content = loginResultMessage;
                labelMessage.Foreground=Brushes.Red;
            }
        }

        private bool TryLogin(string username, string password, out string message)
        {
            message = string.Empty;
            bool isLoginDetailsValid = Membership.IsValidLoginDetails(username, password);
            if (isLoginDetailsValid == false)
            {
                message = "Неверное имя или пароль!";
                return false;
            }

            bool isLoginSuccessfull = Membership.ValidateAndLogin(username, password);
            if (isLoginSuccessfull == false)
            {
                message = "Ошибка при входе. Обратитесь к администратору!";
                return false;
            }

            return true;
        }

        /// <summary>
        /// this is a public try login
        /// TO DO: Delete on production
        /// </summary>
        public void TryLoginPublic()
        {
            TryLogin();
        }
    }
}
