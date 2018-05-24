using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemMed.View;
using SystemMed.Data;
using System.Data;
using SystemMed.Models;

namespace SystemMed.Logic
{
    
        public class EditUserPresenter
        {
            public User User { get; set; }
            public IEditUserView View { get; set; }

            public EditUserPresenter(IEditUserView view)
            {
                this.View = view;
            }

            public EditUserPresenter(IEditUserView view, int userId)
            {
                this.View = view;
                this.Load(userId);
            }

            protected void FillUser()
            {
                User.UserName = View.UserName;
                User.Password = View.Password;
            }

            protected void FillView()
            {
                View.UserId = User.UserId;
                View.UserName = User.UserName;
            }

            protected bool IsValid()
            {
                string message = string.Empty;
                bool isValid = IsDataValid(out message);
                View.Message = message;

                return isValid;
            }

            protected bool IsDataValid(out string message)
            {
                message = string.Empty;
                bool isValid = true;

                if (String.IsNullOrEmpty(User.UserName))
                {
                    message += String.Format("Поле '{0}' пусто!\n", "Имя пользователя");
                    isValid = false;
                }

                if (String.IsNullOrEmpty(User.Password))
                {
                    message += String.Format("Поле '{0}' пусто!\n", "Пароль");
                    isValid = false;
                }

                if (User.Password.Length < 3)
                {
                    message += String.Format("Поле '{0}' должно быть больше 2!\n", "Пароль");
                    isValid = false;
                }

                if (View.Password != View.ConfirmPassword)
                {
                    message += String.Format("Поля '{0}' и '{1}' не совпадают!\n", "Пароль", "Подтвердить пароль");
                    isValid = false;
                }

                return isValid;
            }

            public void Save()
            {
                this.FillUser();
                bool isValid = IsValid();
                if (isValid)
                {
                    SaveModel(User);
                    FillView();
                }
            }

            private void SaveModel(User model)
            {
                try
                {
                    if (User.UserId == 0)
                    {
                        User.RoleId = (int) UserRoles.Patient;
                        UsersDataAccess.InsertUser(User);
                    }
                    else
                    {
                        UsersDataAccess.UpdateUser(User);
                    }

                    View.Message = "Успешная запись!";
                }
                catch (Exception e)
                {
                    var message = String.Format("Ошибка хранилища!Позвоните администратору!/ n {0} ",
                        e.Message);
                    View.Message = message;
                }

            }

            public void CreateNew()
            {
                var newUser = new User();
                var newPatient = new Patient() {Name = "Нет имени", Number = "Нет номера"};
                newUser.Patient = newPatient;
                this.User = newUser;
                this.FillView();
            }

            public void Load(int userId)
            {
                try
                {
                    if (userId == 0)
                    {
                        throw new ArgumentNullException("userId должен отличаться от 0!");
                    }

                    var user = UsersDataAccess.GetUserById(userId);
                    this.User = user;
                    this.FillView();
                }
                catch (Exception e)
                {
                    string message = "Ошибка!:" + e.Message;
                    View.Message = message;
                }
            }
        }
    }

