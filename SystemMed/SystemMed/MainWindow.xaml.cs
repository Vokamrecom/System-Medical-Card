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
using System.Windows.Navigation;
using System.Windows.Shapes;
using SystemMed.Models;
using SystemMed.Logic;
using SystemMed.View;
using SystemMed.Data;


namespace SystemMed
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public readonly int NEXT_CONSULTATIONS_DAYS = 7;
        public MainWindow()
        {
            InitializeComponent();
            RefreshAccess();
        }

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
            ButtonCloseMenu.Visibility = Visibility.Visible;
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenu.Visibility = Visibility.Visible;
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
        }



        public void RefreshAccess()
        {
            try
            {
                var currentUser = Membership.CurrentUser;
                UserRoles currentUserRole = UserRoles.Anonimous;
                try
                {
                    currentUserRole = (UserRoles)currentUser.RoleId;
                }
                catch (InvalidOperationException e)
                {
                    MessageBox.Show("Пользователь не имеет никакой роли!");
                }
                SetAccess(currentUserRole);
            }
            catch (Exception e)
            {
                MessageBox.Show("Ошибка при вводе прав! Пожалуйста, обратитесь администратору!\n" + e.Message);
            }
        }


        /// <summary>
        /// Set access depending of userRole
        /// </summary>
        /// <param name="userRole"></param>
        public void SetAccess(UserRoles userRole)
        {
            DisableAllControls();
            bool hasLoggedUser = false;
            switch (userRole)
            {
                case UserRoles.Patient:
                    {
                        EnableAllControls();

                        TransitionerSlide.Visibility = Visibility.Collapsed;
                        GridbuttonCurrentPatient.Visibility = Visibility.Visible;//вкл профиль пациента
                        buttonNewDiagnose.Visibility = Visibility.Visible;//вкл добавить диагноз
                        buttonNewConsultaton.Visibility = Visibility.Visible;//вкл добавить консультацию
                        buttonSpisPatient.Visibility = Visibility.Collapsed;
                        buttonNewDoc.Visibility = Visibility.Collapsed;
                        listViewItem1.Visibility = Visibility.Visible;//вкл 
                        listViewItem2.Visibility = Visibility.Visible;//вкл 
                        listViewItem3.Visibility = Visibility.Collapsed;//вкл 
                        listViewItem4.Visibility = Visibility.Collapsed;//вкл 
                        listViewItem5.Visibility = Visibility.Visible;
                        listViewItem7.Visibility = Visibility.Collapsed;

                        TransitionerSlide.Visibility = Visibility.Collapsed;

                        menuItemFile.Visibility = Visibility.Hidden;
                        menuItemConsultations.Visibility = Visibility.Visible;//вкл 
                        menuItemAdmin.Visibility = Visibility.Visible;//вкл 
                        menuItemDiagnoses.Visibility = Visibility.Visible;//вкл 
                        menuItemDoctors.Visibility = Visibility.Hidden;
                        menuItemAdmin.Visibility = Visibility.Visible;//вкл 
                        menuItemUserProfile.Visibility = Visibility.Visible;//вкл 
                        menuItemUserRegistration.Visibility = Visibility.Collapsed;

                        menuItemAdmin.Visibility = Visibility.Hidden;//cкрывает кнопку false
                        menuItemCurrentPatient.Visibility = Visibility.Visible;//visible видимый
                        menuItemCurrentDoctor.Visibility = Visibility.Hidden;
                        menuItemPatients.Visibility = Visibility.Hidden;

                        labelStatusLoggedUserAnanim.Visibility = Visibility.Collapsed;
                        labelStatusLoggedUserPatient.Visibility = Visibility.Visible;
                        labelStatusNextConsultations.Visibility = Visibility.Visible;

                        Kardoc.Visibility = Visibility.Visible;
                        Karadm.Visibility = Visibility.Collapsed;

                        hasLoggedUser = true;
                    }; break;
                case UserRoles.Doctor:
                    {
                        throw new NotSupportedException("Вход в систему типа \"Доктор\"  \n не поддерживается этой версией системы!");
                        EnableAllControls();

                        menuItemAdmin.Visibility = Visibility.Hidden;
                        menuItemDoctors.Visibility = Visibility.Hidden;
                        menuItemCurrentPatient.Visibility = Visibility.Hidden;

                        hasLoggedUser = true;
                    }; break;
                case UserRoles.Admin:
                    {
                       // throw new NotSupportedException("Вход в систему типа \"Админ\"  \n не поддерживается этой версией системы!");
                        EnableAllControls();

                        TransitionerSlide.Visibility = Visibility.Collapsed;
                        menuItemDiagnoses.Visibility = Visibility.Collapsed;
                        menuItemConsultations.Visibility = Visibility.Collapsed;
                        GridbuttonCurrentPatient.Visibility = Visibility.Collapsed;

                        TransitionerSlide.Visibility = Visibility.Collapsed;

                        listViewItem3.Visibility = Visibility.Visible;//вкл 
                        listViewItem4.Visibility = Visibility.Visible;//вкл 
                        listViewItem5.Visibility = Visibility.Visible;
                        listViewItem7.Visibility = Visibility.Visible;

                        buttonNewPatient.Visibility = Visibility.Visible;
                        buttonNewDoc.Visibility = Visibility.Visible;
                        buttonSpisDoc.Visibility = Visibility.Visible;
                        buttonSpisPatient.Visibility = Visibility.Visible;

                        menuItemFile.Visibility = Visibility.Hidden;
                        menuItemDoctors.Visibility = Visibility.Visible;
                        menuItemDiagnoses.Visibility = Visibility.Hidden;

                        menuItemCurrentPatient.Visibility = Visibility.Visible;
                        menuItemCurrentDoctor.Visibility = Visibility.Hidden;
                        menuItemConsultations.Visibility = Visibility.Hidden;

                        labelStatusLoggedUserAnanim.Visibility = Visibility.Visible;
                        labelStatusLoggedUserPatient.Visibility = Visibility.Collapsed;
                        labelStatusNextConsultations.Visibility = Visibility.Collapsed;
                        Karadm.Visibility = Visibility.Visible;
                        hasLoggedUser = true;
                    }; break;
                default:
                    {
                        DisableAllControls();
                        GridbuttonCurrentPatient.Visibility = Visibility.Collapsed;//откл профиль пациента
                        buttonNewDiagnose.Visibility = Visibility.Collapsed;//откл добавить диагноз
                        buttonNewConsultaton.Visibility = Visibility.Collapsed;//откл добавить консультацию

                        TransitionerSlide.Visibility = Visibility.Visible;

                        listViewItem1.Visibility = Visibility.Collapsed;
                        listViewItem2.Visibility = Visibility.Collapsed;
                        listViewItem3.Visibility = Visibility.Collapsed;
                        listViewItem4.Visibility = Visibility.Collapsed;
                        listViewItem5.Visibility = Visibility.Visible;
                        listViewItem7.Visibility = Visibility.Collapsed;

                        buttonNewPatient.Visibility = Visibility.Collapsed;
                        buttonNewDoc.Visibility = Visibility.Collapsed;
                        buttonSpisDoc.Visibility = Visibility.Collapsed;
                        buttonSpisPatient.Visibility = Visibility.Collapsed;

                        menuItemFile.Visibility = Visibility.Hidden;
                        menuItemConsultations.Visibility = Visibility.Hidden;
                        menuItemAdmin.Visibility = Visibility.Hidden;
                        menuItemDiagnoses.Visibility = Visibility.Hidden;
                        menuItemDoctors.Visibility = Visibility.Hidden;
                        menuItemAdmin.Visibility = Visibility.Collapsed;
                        menuItemUserProfile.Visibility = Visibility.Collapsed;
                        menuItemUserRegistration.Visibility = Visibility.Collapsed;

                        Karadm.Visibility = Visibility.Collapsed;
                        Kardoc.Visibility = Visibility.Collapsed;

                        labelStatusLoggedUserAnanim.Visibility = Visibility.Collapsed;
                        labelStatusLoggedUserPatient.Visibility = Visibility.Collapsed;
                        labelStatusNextConsultations.Visibility = Visibility.Collapsed;
                        hasLoggedUser = false;
                    }
                    break;
            }

            if (hasLoggedUser)
            {
                string currentUserName = Membership.CurrentUser.UserName;
                labelStatusLoggedUser.Content = currentUserName;//content=>text поменял
                labelStatusLoggedUser1.Content = currentUserName;
                labelStatusLoggedUserAnanim.Text= "Вы зашли, как "+currentUserName;
                labelStatusLoggedUserPatient.Text = "Вы зашли, в медкарту пользователя " + currentUserName;

            }

            SetLoginMenuItemCaption(hasLoggedUser);
        }


        ////////////////////////SetLoginMenuItemCaption вставить надо
        /// <summary>
        /// Sets the menuItemLogin.Text (Вход/Изход) depending on if user logged in
        /// </summary>
        /// <param name="hasLoggedUser"></param>
        private void SetLoginMenuItemCaption(bool hasLoggedUser)
        {
            if (hasLoggedUser == true)
            {
                menuItemLogin.HeaderStringFormat = "Выход";//text был, стал header
            }
            else
            {
                menuItemLogin.HeaderStringFormat = "Вход";
            }

            menuItemLogin.Tag = hasLoggedUser;
        }


        private void DisableAllControls()
        {
            SetControlEnablility(false);
        }

        private void EnableAllControls()
        {
            SetControlEnablility(true);
        }

        /// <summary>
        /// Sets functional controls enablity
        /// </summary>
        /// <param name="isEnabled"></param>
        private void SetControlEnablility(bool isEnabled)
        {
            buttonConsultations.IsEnabled= isEnabled;
            buttonNewConsultaton.IsEnabled = isEnabled;

            //menu
            menuItemConsultationList1.IsEnabled = isEnabled;
            menuItemDiagnosesList1.IsEnabled = isEnabled;
            menuItemDoctorsList1.IsEnabled = isEnabled;
           

            buttonDiagnoses.IsEnabled = isEnabled;
            buttonNewDiagnose.IsEnabled = isEnabled;

            buttonCurrentPatient.IsEnabled = isEnabled;

            //buttonDoctors.Enabled = isEnabled;//deprecated
            //buttonPatients.Enabled = isEnabled;//deprecated


            menuItemAdmin.IsEnabled = isEnabled;
            menuItemConsultations.IsEnabled = isEnabled;
            menuItemDoctors.IsEnabled = isEnabled; //visible = isEnabled было
            menuItemPatients.IsEnabled = isEnabled;
            menuItemUserProfile.IsEnabled = isEnabled;
            menuItemDiagnoses.IsEnabled = isEnabled;
        }

        private void menuItemLogin_Click(object sender, RoutedEventArgs e)
        {
            if (menuItemLogin.Tag == null)
            {
                menuItemLogin.Tag = (object)false;
            }

            bool hasLoggedUser = (bool)menuItemLogin.Tag;
            if (hasLoggedUser)
            {
                LogOut();
            }
            else
            {
                LogIn();
            }
        }

        /// <summary>
        /// Opens the login form
        /// </summary>
        private void LogIn()
        {
            
            var loginForm = new LoginForm();
            loginForm.ShowDialog();
            this.RefreshAccess();
        }

        /// <summary>
        /// LogsOut current user
        /// </summary>
        private void LogOut()
        {
            Membership.LogOutUser();
            
            this.RefreshAccess();
        }

        private void menuItemExit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void menuItemPatientsList_Click(object sender, RoutedEventArgs e)
        {
            var patientsForm = new PatientsForm();
            patientsForm.ShowDialog();
        }

        private void menuItemNewPatient_Click(object sender, RoutedEventArgs e)
        {
            int newPatientId = 0;
            EditPatientForm patientForm = new EditPatientForm(newPatientId);
            patientForm.ShowDialog();
        }

        private void menuMainWindow_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
            var mainWindow = new MainWindow();
            mainWindow.ShowDialog();
        }
        private void menuItemConsultationList_Click(object sender, RoutedEventArgs e)
        {
            var consultationsForm = new ConsultationsForm();
            consultationsForm.ShowDialog();
        }

        private void menuItemNewConsultation_Click(object sender, RoutedEventArgs e)
        {
            var editConsultationForm = new EditConsultationForm(0);
            editConsultationForm.ShowDialog();
        }

        private void menuItemDiagnosesList_Click(object sender, RoutedEventArgs e)
        {
            var diagnosesForm = new DiagnosesForm();
            diagnosesForm.ShowDialog();
        }

        private void menuItemNewDiagnose_Click(object sender, RoutedEventArgs e)
        {
            var editDiagnosisForm = new EditDiagnosisForm(0);
            editDiagnosisForm.ShowDialog();
        }

        private void menuItemDoctorsList_Click(object sender, RoutedEventArgs e)
        {
            var doctorsForm = new DoctorsForm();
            doctorsForm.ShowDialog();
        }

        private void menuItemNewDoctor_Click(object sender, RoutedEventArgs e)
        {
            var editDoctorForm = new EditDoctorForm(0);
            editDoctorForm.ShowDialog();
        }

        private void menuItemCurrentDoctor_Click(object sender, RoutedEventArgs e)
        {
           var currentUser = Membership.CurrentUser;
            var currentUserDoctor = currentUser.Doctor;
            int currentDoctorId = currentUserDoctor.DoctorId;

            var editDoctorForm = new EditDoctorForm(currentDoctorId);
            editDoctorForm.ShowDialog();
        }

        private void menuItemCurrentPatient_Click(object sender, RoutedEventArgs e)
        {

            var currentUser = Membership.CurrentUser;
            int currentUserPatientId = currentUser.PatientId.HasValue ? currentUser.PatientId.Value : 0;

            var editPatientForm = new EditPatientForm(currentUserPatientId);
            editPatientForm.ShowDialog();
            if (currentUserPatientId == 0)
            {
                int newPatientId = editPatientForm.PatientId;
            }
        }

        private void menuItemUserRegistration_Click(object sender, RoutedEventArgs e)
        {
            var editUserForm = new EditUserForm(0);
            editUserForm.ShowDialog();
        }

        private void userToolStripMenuItem_Click(object sender, RoutedEventArgs e)
        {
            int currentUserId = Membership.CurrentUser.UserId;
            var editUserForm = new EditUserForm(currentUserId);
            editUserForm.ShowDialog();
        }

        private int CountConsultationsInNextDays(int nextDays)
        {
            var currenUser = Membership.CurrentUser;
            if (currenUser.RoleId != (int)UserRoles.Patient)
            {
                return 0;
            }

            int currentUserPatientId = currenUser.PatientId.Value;

            var consultations = ConsultationDataAccess.GetConsultationsInNextDays(currentUserPatientId, nextDays);

            if (consultations == null)
            {
                return 0;
            }
            else
            {
                return consultations.Count();
            }

        }

        private void CheckConsultationsInNextDays()
        {
            int nextDays = NEXT_CONSULTATIONS_DAYS;
            int consultationsCount = CountConsultationsInNextDays(nextDays);
            this.labelStatusNextConsultations.Content = String.Format("Консультации {0}", consultationsCount);//ContentString вместо Text
        }

        private void MainForm_Activated(object sender, EventArgs e)
        {
            this.CheckConsultationsInNextDays();
        }

        private void labelStatusNextConsultations_Click(object sender, EventArgs e)
        {
            LoadConsultationInNextDays();
        }

        private void LoadConsultationInNextDays()
        {
            int nextDays = NEXT_CONSULTATIONS_DAYS;
            var consultationsForm = new ConsultationsForm();
            int currentPatientId = Membership.CurrentUser.PatientId.HasValue ? Membership.CurrentUser.PatientId.Value : 0;
            consultationsForm.Presenter.LoadConsultationsByCriterias(DateTime.Now, DateTime.Now.AddDays(nextDays), currentPatientId);
            consultationsForm.ShowDialog();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var webForm = new Web();
            webForm.ShowDialog();
        }

        private void Flipper_OnIsFlippedChanged(object sender, RoutedPropertyChangedEventArgs<bool> e)//для веба
        {
            System.Diagnostics.Debug.WriteLine("Card is flipped = " + e.NewValue);
        }

    }
}
