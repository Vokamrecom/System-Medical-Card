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
    /// Логика взаимодействия для PatientsForm.xaml
    /// </summary>
    public partial class PatientsForm : Window, IPatientsView
    {
        public PatientsForm()
        {
            InitializeComponent();
            this.Presenter = new PatientsPresenter(this);
            this.Presenter.LoadAllPatients();
        }
        public PatientsPresenter Presenter { get; set; }

        private void buttonSearch_Click(object sender, RoutedEventArgs e)
        {
            string name = textBoxName.Text;
            string number = textBoxNumber.Text;
            this.Presenter.LoadPatientsByCriterias(name, number);
        }
        private void buttonEdit_Click(object sender, RoutedEventArgs e)
        {
            var patient = GetSelectedPatient();
            if (patient == null)
            {
                return;
            }

            int patientId = patient.PatientId;
            EditPatientForm patientForm = new EditPatientForm(patientId);
            patientForm.ShowDialog();
        }
        private Patient GetSelectedPatient()
        {
            var row = this.dataGridViewResult.SelectedItem;//currentrow было вместо колумна
            if (row == null)
            {
                return null;
            }

            var patient = (Patient)row;//row.DataBoundItem;
            return patient;
        }

        private void buttonAdd_Click(object sender, RoutedEventArgs e)
        {
            int newPatientId = 0;
            EditUserForm patientForm = new EditUserForm(newPatientId);
            patientForm.ShowDialog();
        }

        #region IPatientsView Members

        public IEnumerable<Patient> Patients
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

        #endregion

      

        private void buttonDelete_Click(object sender, RoutedEventArgs e)
        {
            var row = this.dataGridViewResult.SelectedItem;//currentrow было вместо колумна
            if (row == null)
            {
                return;
            }

            if (MessageBox.Show("Вы действительно хотите удалить эту консультацию ? ", "Подтверждение удаления", MessageBoxButton.OKCancel) != MessageBoxResult.OK)//messageboxresult System.Windows.Forms.DialogResult
            {
                return;
            }

            try
            {
                var patient = (Patient)row;//row.DataBoundItem;
                int patientId = patient.PatientId;
                PatientsDataAccess.DeletePatientById(patientId);

                this.Presenter.LoadAllPatients();
            }
            catch (Exception ex)
            {
                string errorMessage = string.Format("При удалении объекта произошла ошибка!\n {0}", ex.Message);
                this.Message = errorMessage;
            }
        }

        private void buttonChoose_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = DialogResult;//.OK
            this.Close();
        }

        public bool TryChoosePatient(out Patient patient)
        {
            patient = null;
            this.panelButtons.Visibility = Visibility.Hidden;//cкрывает кнопку false
            this.panelChooseButtons.Visibility = Visibility.Visible;//visible видимый
            this.ShowDialog();

            if (this.DialogResult != DialogResult)//.OK
            {
                return false;
            }

            var selectedPatient = GetSelectedPatient();
            if (selectedPatient == null)
            {
                return false;
            }

            patient = selectedPatient;

            return true;
        }

        private void buttonCancel_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = DialogResult;//.Cancel
            this.Close();
        }
    }
}
