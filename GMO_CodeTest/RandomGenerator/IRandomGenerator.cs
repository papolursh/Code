using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace RandomGenerator
{
    public interface IRandomGenerator
    {
        event Action<string> Notify;
    }

    public class RandomGeneratorService : IRandomGenerator
    {
        private static readonly Random getrandom = new Random();
        protected Timer Timer { get; private set; }
        public event Action<string> Notify;
        public RandomGeneratorService()
        {
            CreateRandomNumberTimer();
        }

        private void OnNotify()
        {
            //Generate random number and notify 
            Notify?.Invoke(getrandom.Next(0,100).ToString());
            //change timer interval between 0 - 10 secs, 2 secs lag when changed for visual 
            Timer.Change(new TimeSpan(0, 0, 2), new TimeSpan(0, 0, getrandom.Next(0, 10)));
        }
        private void CreateRandomNumberTimer()
        {
            if (Timer != null)
            {
                return;
            }
            Timer = new Timer(
                callback: delegate
                {
                    Task.Factory.StartNew(() => OnNotify());
                },
                state: null,
                dueTime: new TimeSpan(0, 0, 0),
                period: new TimeSpan(0, 0, getrandom.Next(0,10))
            );
        }
    }
}
