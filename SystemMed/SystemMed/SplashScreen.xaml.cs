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
using System.Windows.Threading;

namespace SystemMed
{
    /// <summary>
    /// Логика взаимодействия для SplashScreen.xaml
    /// </summary>
    public partial class SplashScreen : Window
    {
        DispatcherTimer dT= new DispatcherTimer();
        public SplashScreen()
        {
            InitializeComponent();
            dT.Tick += new EventHandler(dt_Tick);
            dT.Interval=new TimeSpan(0,0,2);
            dT.Start();
        }

        private void dt_Tick(object sender, EventArgs e)
        {
            MainWindow db = new MainWindow();
            db.Show();

            dT.Stop();
            this.Close();
        }
    }
}
