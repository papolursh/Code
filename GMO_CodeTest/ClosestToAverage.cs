using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMO_CodeTest
{
    public static class ClosestToAverage
    {
        public static int FindClosestToAverage(int[] numbers)
        {
            double avg = numbers.Average();
            var matchNo = numbers[0];
            Dictionary<double, int> numbersDeviation = new Dictionary<double, int>();
            foreach (var number in numbers)
            {
                var diff = Math.Abs(avg - number);
                if (!numbersDeviation.ContainsKey(diff))
                {
                    numbersDeviation.Add(diff, number);
                }
            }

            var minKey = numbersDeviation.Keys.Min();
            return numbersDeviation[minKey];
        }


    }
}
