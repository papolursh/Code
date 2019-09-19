using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMO_CodeTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Test_ClosestToAverage();
            Test_DoubleLinkedList();
            Console.ReadLine();

        }

        static void Test_ClosestToAverage()
        {
            var r = ClosestToAverage.FindClosestToAverage(new int[] { 1, 2, 3, 5, -1, 7, 145, -33, 22, 14 });
            Console.WriteLine($"Number ClosestToAverage:{r}");
        }

        static void Test_DoubleLinkedList()
        {
            DoubleLinkedList d = new DoubleLinkedList();
            d.InsertLast(1);
            d.InsertLast(2);
            d.InsertLast(3);
            d.InsertLast(4);
            d.Remove(2);
            Console.WriteLine($"DoubleLinked Output:{d.Print()}");
        }
    }
}
