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
using SystemMed.Data;
using SystemMed.Logic;

namespace SystemMed.View
{
    /// <summary>
    /// Логика взаимодействия для DoctorsForm.xaml
    /// </summary>
    public partial class DoctorsForm : Window, IDoctorsView
    {
        public DoctorsForm()
        {
            InitializeComponent();
            this.Presenter = new DoctorsPresenter(this);
            this.Presenter.LoadAllDoctors();
        }
        public DoctorsPresenter Presenter { get; set; }

        #region IDoctorsView Members

        public IEnumerable<Data.Doctor> Doctors
        {
            set
            {
                this.dataGridViewResult.AutoGenerateColumns = false;
                this.dataGridViewResult.DataContext = value;//datasource был
            }
        }

        public string Message
        {
            set
            {
                MessageBox.Show(value);
            }
        }

        public string NameSearch
        {
            get
            {
                return textBoxSubject.Text;
            }
            set
            {
                this.textBoxSubject.Text = value;
            }
        }


        #endregion

        private void buttonAdd_Click(object sender, RoutedEventArgs e)
        {
            var editDoctorForm = new EditDoctorForm(0);
            editDoctorForm.ShowDialog();
            this.Presenter.LoadDoctorsByCriterias();
        }

        private void buttonSearch_Click(object sender, RoutedEventArgs e)
        {
            this.Presenter.LoadDoctorsByCriterias();
        }

        private Doctor GetSelectedDoctor()
        {
            var row = this.dataGridViewResult.SelectedItem;//currentrow было вместо колумна
            if (row == null)
            {
                return null;
            }

            var doctor = (Doctor)row;//row.DataBoundItem;
            return doctor;
        }

        private void buttonEdit_Click(object sender, RoutedEventArgs e)
        {
            var selectedDoctor = this.GetSelectedDoctor();
            if (selectedDoctor == null)
            {
                return;
            }

            int selectedDoctorId = selectedDoctor.DoctorId;
            var editDoctorForm = new EditDoctorForm(selectedDoctorId);
            editDoctorForm.ShowDialog();
            this.Presenter.LoadDoctorsByCriterias();
        }

        private void buttonDelete_Click(object sender, RoutedEventArgs e)
        {
            var selectedDoctor = this.GetSelectedDoctor();
            if (selectedDoctor == null)
            {
                return;
            }

            if (MessageBox.Show("Вы действительно хотите удалить этого врача?", "Подтверждение удаления", MessageBoxButton.OKCancel) != MessageBoxResult.OK)//messageboxresult System.Windows.Forms.DialogResult
            {
                return;
            }

            try
            {
                int doctorId = selectedDoctor.DoctorId;
                DoctorDataAccess.DeleteDoctorById(doctorId);
                this.Presenter.LoadAllDoctors();
            }
            catch (Exception ex)
            {
                string errorMessage = string.Format("При удалении объекта произошла ошибка!\n {0}", ex.Message);
                this.Message = errorMessage;
            }
        }

        private void buttonChoose_Click(object sender, RoutedEventArgs e)
        {

            this.DialogResult = DialogResult.HasValue;//.OK
            this.Close();
        }

        public bool TryChooseDoctor(out Doctor doctor)
        {
            doctor = null;
            this.panelButtons.Visibility=Visibility.Hidden;//Visible = true;
            this.panelChooseButtons.Visibility= Visibility.Visible; //.Visible = true;
            this.ShowDialog();

            if (this.DialogResult != DialogResult.Value)//.OK
            {
                return false;
            }

            var selectedDoctor = GetSelectedDoctor();
            if (selectedDoctor == null)
            {
                return false;
            }

            doctor = selectedDoctor;

            return true;
        }

        private void buttonCancel_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = DialogResult.HasValue;//.Сancel
            this.Close();
        }
    }
}
