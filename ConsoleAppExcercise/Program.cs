using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleAppExcercise
{
    
    class Program
    {
        static int[] _elements = new int[150];
        
        static void Main(string[] args)
        {
            Fill();
        }

        static void Fill()
        {
            for (int i = 0; i < _elements.Length; i++){
                Random ran = new Random();
                int s = ran.Next(0, _elements.Length);
                System.Console.WriteLine(_elements[s]);
            }
            
        }

    }
}
