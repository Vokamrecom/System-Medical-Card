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
    /// Логика взаимодействия для DiagnosesForm.xaml
    /// </summary>
    public partial class DiagnosesForm : Window, IDiagnosesView
    {
        public DiagnosesForm()
        {
            InitializeComponent();
            this.Presenter = new DiagnosesPresenter(this);
            this.Presenter.LoadDiagnosesByCriterias();
        }
        public DiagnosesPresenter Presenter { get; set; }

        #region IDiagnosesView Members

        public IEnumerable<Data.Diagnosis> Diagnoses
        {
            set
            {
                dataGridViewResult.AutoGenerateColumns = false;
                dataGridViewResult.DataContext = value;//datasource был
            }
        }

        public string Message
        {
            set
            {
                MessageBox.Show(value);
            }
        }

        public string SubjectSearch
        {
            get
            {
                return textBoxSubject.Text;
            }
            set
            {
                textBoxSubject.Text = value;
            }
        }

        #endregion

        private void buttonSearch_Click(object sender, RoutedEventArgs e)
        {
            this.Presenter.LoadDiagnosesByCriterias();
        }

        private Diagnosis GetSelectedDiagnosis()
        {
            var row = this.dataGridViewResult.SelectedItem;//currentrow было вместо колумна
            if (row == null)
            {
                return null;
            }

            var diagnosis = (Diagnosis)row;//row.DataBoundItem;
            return diagnosis;
        }

        private void buttonAdd_Click(object sender, RoutedEventArgs e)
        {
            var editDiagnosisForm = new EditDiagnosisForm(0);
            editDiagnosisForm.ShowDialog();
            this.Presenter.LoadDiagnosesByCriterias();
        }

        private void buttonEdit_Click(object sender, RoutedEventArgs e)
        {
            var selectedDiagnosis = this.GetSelectedDiagnosis();
            if (selectedDiagnosis == null)
            {
                return;
            }

            int selectedDiagnosisId = selectedDiagnosis.DiagnoseId;
            var editDiagnosisForm = new EditDiagnosisForm(selectedDiagnosisId);
            editDiagnosisForm.ShowDialog();
            this.Presenter.LoadDiagnosesByCriterias();
        }

        private void buttonDelete_Click(object sender, RoutedEventArgs e)
        {
            var selectedDiagnosis = this.GetSelectedDiagnosis();
            if (selectedDiagnosis == null)
            {
                return;
            }

            if (MessageBox.Show("Вы действительно хотите удалить этот диагноз?", "Подтверждение удаления", MessageBoxButton.OKCancel) != MessageBoxResult.OK)//messageboxresult System.Windows.Forms.DialogResult
            {
                return;
            }

            try
            {
                int diagnosisId = selectedDiagnosis.DiagnoseId;
                DiagnosesDataAccess.DeleteDiagnosisById(diagnosisId);
                this.Presenter.LoadAllDiagnoses();
            }
            catch (Exception ex)
            {
                string errorMessage = string.Format("При удалении объекта произошла ошибка!\n {0}", ex.Message);
                this.Message = errorMessage;
            }
        }

        private void buttonCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
