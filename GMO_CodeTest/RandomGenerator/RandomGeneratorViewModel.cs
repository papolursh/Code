using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GMO_UI;

namespace RandomGenerator
{
    public class RandomGeneratorViewModel : ViewModelBase
    {
        private string number;
        public string Number
        {
            get { return number; }
            set { this.SetProperty(ref this.number, value); }
        }

        public RandomGeneratorViewModel()
        {
            var r = new RandomGeneratorService();
            r.Notify += NotifyAction;
        }

        private void NotifyAction(string number)
        {
            Number = number;
        }
    }
}
