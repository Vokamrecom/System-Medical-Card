using System;
using System.Collections.Generic;
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

namespace SystemMed
{
    /// <summary>
    /// Логика взаимодействия для Web.xaml
    /// </summary>
    public partial class Web : Window
    {
        public Web()
        {
            InitializeComponent();
        }

        private void buttonCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Browser.GoBack();
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }
        }

        private void Go_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Browser.GoForward();
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }
        }

        private void Update_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Browser.Refresh();
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }

        }

        private void Search_Click(object sender, RoutedEventArgs e)
        {
            
                Browser.Source=new Uri("http://www."+Ssylka.Text);
           
        }
    }
}
