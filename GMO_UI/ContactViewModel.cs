using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace GMO_UI
{
    public class ContactViewModel : ViewModelBase
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public string Phone1 { get; set; }
        public string Phone2 { get; set; }
        public string Phone3 { get; set; }
        private string errorText;
        public string ErrorText
        {
            get { return errorText; }
            protected set { this.SetProperty(ref this.errorText, value); }
        }

        private ICommand _submitCommand;
        public ICommand SubmitCommand { get { return _submitCommand ?? (_submitCommand = new RelayCommand(ExecuteSubmitAction)); } }

        public readonly List<string> ReportColumns = new List<string>();

        public ContactViewModel()
        {
            ReportColumns = new List<string>() {"NAME", "ADDRESS", "PHONE"};
        }
        private void ExecuteSubmitAction()
        {

            if (string.IsNullOrEmpty(Name))
            {
                ErrorText = "Invalid Name";
            }

            else if (string.IsNullOrEmpty(Name))
            {
                ErrorText = "Invalid Address";
            }
            else
            {
                string phoneNo = string.Empty;
                if (!string.IsNullOrWhiteSpace(Phone1))
                    phoneNo += Phone1;
                if (!string.IsNullOrWhiteSpace(Phone2))
                    phoneNo += Phone2;
                if (!string.IsNullOrWhiteSpace(Phone1))
                    phoneNo += Phone3;

                if (string.IsNullOrWhiteSpace(phoneNo) || phoneNo.Length != 10)
                {
                    ErrorText = "Invalid Phone number";
                }
            }

            if (!string.IsNullOrWhiteSpace(ErrorText))
            {
                return;
            }

            StringBuilder sbBuilder = new StringBuilder();
            sbBuilder.Append(string.Join(",", ReportColumns)).Append(Environment.NewLine);
            sbBuilder.Append(Name).Append(",").Append(Address).Append(",").Append(Phone1 + Phone2+ Phone3).Append(",");
            System.IO.File.WriteAllText(@"C:\WriteText.txt", sbBuilder.ToString());

        }
    }
}
