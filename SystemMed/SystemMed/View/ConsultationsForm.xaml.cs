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
using SystemMed.Logic;
using SystemMed.Data;

namespace SystemMed.View
{
    /// <summary>
    /// Логика взаимодействия для ConsultationsForm.xaml
    /// </summary>
    public partial class ConsultationsForm : Window, IConsultationsView
    {
        public ConsultationsForm()
        {
            InitializeComponent();
            this.Presenter = new ConsultationsPresenter(this);
            this.Presenter.LoadConsultationsByCriterias();
        }
        public ConsultationsPresenter Presenter { get; set; }

        #region IConsultationsView Members

        public IEnumerable<Data.Consultation> Consultations
        {
            set
            {
                this.dataGridViewResult.AutoGenerateColumns = false;
                this.dataGridViewResult.DataContext = value;
            }
        }

        public string Message
        {
            set { MessageBox.Show(value); }
        }


        public DateTime? ScheduleDateFromCriteria
        {
            get
            {
                return this.dateTimePickerFrom.SelectedDate.Value;//DisplayDate
            }
            set
            {
                var newValue = value;
                if (newValue.HasValue)
                {
                    this.dateTimePickerFrom.SelectedDate = value;//DisplayDate
                }
            }
        }

        public DateTime? ScheduleDateToCriteria
        {
            get
            {
                return this.dateTimePickerTo.SelectedDate.Value;//DisplayDate
            }
            set
            {
                var newValue = value;
                if (newValue.HasValue)
                {
                    this.dateTimePickerTo.SelectedDate = value;//DisplayDate
                }
            }
        }

        #endregion

        private void buttonSearch_Click(object sender, RoutedEventArgs e)
        {
            this.Presenter.LoadConsultationsByCriterias();
        }
        private Consultation GetSelectedConsultation()
        {
            var row = this.dataGridViewResult.SelectedItem;//currentrow было вместо колумна
            if (row == null)
            {
                return null;
            }

            var consultation = (Consultation)row;//databounditem был вместо header
            return consultation;
        }

        private void buttonAdd_Click(object sender, RoutedEventArgs e)
        {
            var editConsultationForm = new EditConsultationForm(0);
            editConsultationForm.ShowDialog();
        }

        private void buttonEdit_Click(object sender, RoutedEventArgs e)
        {
            var selectedConsultation = this.GetSelectedConsultation();
            if (selectedConsultation == null)
            {
                return;
            }

            int selectedConsultationId = selectedConsultation.ConsultationId;
            var editConsultationForm = new EditConsultationForm(selectedConsultationId);
            editConsultationForm.ShowDialog();
            this.Presenter.LoadConsultationsByCriterias();
        }

        private void buttonDelete1_Click(object sender, RoutedEventArgs e)
        {
            var selectedConsultation = this.GetSelectedConsultation();
            if (selectedConsultation == null)
            {
                return;
            }

            if (MessageBox.Show("Вы уверены, что хотите удалить эту консультацию?", "Подтверждение удаления", MessageBoxButton.OKCancel) != MessageBoxResult.OK)//dialogResult.OK было
            {
                return;
            }

            try
            {
                int consultationId = selectedConsultation.ConsultationId;
                ConsultationDataAccess.DeleteConsultationById(consultationId);
                this.Presenter.LoadAllConsultations();
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
