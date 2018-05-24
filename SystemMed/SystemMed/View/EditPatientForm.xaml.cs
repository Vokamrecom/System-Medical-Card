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
    /// Логика взаимодействия для EditPatientForm.xaml
    /// </summary>
    public partial class EditPatientForm : Window, IEditPatientView
    {
        public EditPatientPresenter Presenter { get; set; }
        public EditPatientForm()
        {
            InitializeComponent();
            this.Presenter = new EditPatientPresenter(this);
        }

        public EditPatientForm(int patientId)
            : this()
        {
            if (patientId == 0)
            {
                this.Presenter.CreateNew();
            }
            else
            {
                this.Presenter.Load(patientId);
                this.Presenter.LoadDiagnoses();
                this.Presenter.LoadConsultations();


            }
        }

        private void buttonClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
        protected void LoadPatientById(int patientId)
        {
            this.Presenter.Load(patientId);
        }

        #region IEditPatientView Members

        public string Number
        {
            get
            {
                return textBoxNumber.Text;
            }
            set
            {
                textBoxNumber.Text = value;
            }
        }

        public string Address
        {
            get
            {
                return textBoxAddress.Text;
            }
            set
            {
                textBoxAddress.Text = value;
            }
        }

        public string Phone
        {
            get
            {
                return textBoxPhone.Text;
            }
            set
            {
                textBoxPhone.Text = value;
            }
        }

        public DateTime Birthdate
        {
            get
            {
                return dateTimePickerBirthdate.SelectedDate.Value;
            }
            set
            {
                dateTimePickerBirthdate.SelectedDate= value;//DisplayDate
            }
        }


        public string PatientName
        {
            get
            {
                return textBoxName.Text;
            }
            set
            {
                textBoxName.Text = value;
            }
        }

        public int PatientId
        {
            get
            {
                int patientId = 0;
                if (Int32.TryParse(labelId.ContentStringFormat, out patientId))
                {
                    return patientId;
                }

                return 0;

            }
            set
            {
                labelId.Content = value.ToString();
            }
        }

        public string Message
        {
            get
            {
                return labelMessage.ContentStringFormat;
            }
            set
            {
                labelMessage.Content = value;
            }
        }

        public IEnumerable<Data.Diagnosis> Diagnosis
        {
            set
            {
                dataGridViewDiagnoses.AutoGenerateColumns = false;
                dataGridViewDiagnoses.DataContext = value;
            }
        }

        public IEnumerable<Data.Consultation> Consultations
        {
            set
            {
                dataGridViewConsultations.AutoGenerateColumns = false;
                dataGridViewConsultations.DataContext= value;
            }
        }

        #endregion

        private void buttonSave_Click(object sender, RoutedEventArgs e)
        {
            this.Presenter.Save();
        }
        #region COnsultations operations

        private Consultation GetSelectedConsultation()
        {
            var row = this.dataGridViewConsultations.SelectedItem;//currentrow было вместо колумна
            if (row == null)
            {
                return null;
            }

            var consultation = (Consultation)row;//row.DataBoundItem;
            return consultation;
        }
        private void buttonAddConsultation_Click(object sender, RoutedEventArgs e)
        {
            var editConsultationForm = new EditConsultationForm(0);
            editConsultationForm.ShowDialog();
            this.Presenter.LoadConsultations();
        }

        private void buttonEditConsultation_Click(object sender, RoutedEventArgs e)
        {
            var selectedConsultation = this.GetSelectedConsultation();
            if (selectedConsultation == null)
            {
                return;
            }

            int selectedConsultationId = selectedConsultation.ConsultationId;
            var editConsultationForm = new EditConsultationForm(selectedConsultationId);
            editConsultationForm.ShowDialog();
            this.Presenter.LoadConsultations();
        }

        private void buttonDeleteConsultation_Click(object sender, RoutedEventArgs e)
        {
            var selectedConsultation = this.GetSelectedConsultation();
            if (selectedConsultation == null)
            {
                return;
            }

            if (MessageBox.Show("Вы действительно хотите удалить эту консультацию?", "Подтверждение удаления", MessageBoxButton.OKCancel) != MessageBoxResult.OK)//messageboxresult System.Windows.Forms.DialogResult
            {
                return;
            }

            try
            {
                int consultationId = selectedConsultation.ConsultationId;
                ConsultationDataAccess.DeleteConsultationById(consultationId);
                this.Presenter.LoadConsultations();
            }
            catch (Exception ex)
            {
                string errorMessage = string.Format("При удалении объекта произошла ошибка!\n {0}", ex.Message);
                this.Message = errorMessage;
            }
        }
        #endregion

        #region Diagnoses operations
        private Diagnosis GetSelectedDiagnosis()
        {
            var row = this.dataGridViewDiagnoses.SelectedItem;//currentrow было вместо колумна
            if (row == null)
            {
                return null;
            }

            var diagnosis = (Diagnosis)row;//row.DataBoundItem;
            return diagnosis;
        }

        private void buttonAddDiagnoses_Click(object sender, RoutedEventArgs e)
        {
            var editDiagnosisForm = new EditDiagnosisForm(0);
            editDiagnosisForm.ShowDialog();
            this.Presenter.LoadDiagnoses();
        }

        private void buttonEditDiagnoses_Click(object sender, RoutedEventArgs e)
        {
            var selectedDiagnosis = this.GetSelectedDiagnosis();
            if (selectedDiagnosis == null)
            {
                return;
            }

            int selectedDiagnosisId = selectedDiagnosis.DiagnoseId;
            var editDiagnosisForm = new EditDiagnosisForm(selectedDiagnosisId);
            editDiagnosisForm.ShowDialog();
            this.Presenter.LoadDiagnoses();
        }

        private void buttonDeleteDiagnoses_Click(object sender, RoutedEventArgs e)
        {
            var selectedDiagnosis = this.GetSelectedDiagnosis();
            if (selectedDiagnosis == null)
            {
                return;
            }

            if (MessageBox.Show("Вы действительно хотите удалить эту консультацию?", "Подтверждение удаления", MessageBoxButton.OKCancel) != MessageBoxResult.OK)//messageboxresult System.Windows.Forms.DialogResult
            {
                return;
            }

            try
            {
                int diagnosisId = selectedDiagnosis.DiagnoseId;
                DiagnosesDataAccess.DeleteDiagnosisById(diagnosisId);
                this.Presenter.LoadDiagnoses();
            }
            catch (Exception ex)
            {
                string errorMessage = string.Format("При удалении объекта произошла ошибка!\n {0}", ex.Message);
                this.Message = errorMessage;
            }
        }

        #endregion

        private void buttonCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void UIElement_OnMouseDown(object sender, MouseButtonEventArgs e)
        {
          //  var editDiagnosisForm = new EditDiagnosisForm(0);
            //editDiagnosisForm.ShowDialog();
            this.Presenter.LoadDiagnoses();
            this.Presenter.LoadConsultations();
        }
    }
}
