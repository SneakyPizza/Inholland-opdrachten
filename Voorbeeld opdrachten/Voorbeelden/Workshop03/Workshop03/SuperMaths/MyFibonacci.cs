using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Numerics;

namespace SuperMaths
{
    public class MyFibonacci
    {
        // Private fields =====================================================
        private BigInteger currentFibonacciNumber = 0;
        private int currentFibonacciIndex  = 0;
        // ====================================================================
        
        
        // Public properties ==================================================
        public BigInteger FibNumber
        {
            // Can't set the current Fibonacci number other
            // than to compute it's value based on the index,
            // so a public setter method for use from outside of
            // our little black box here would be... kinda dumb :)
            get { return currentFibonacciNumber; }
        }

        public int FibIndex
        {
            set { currentFibonacciIndex = value; }
            get { return currentFibonacciIndex; }
        }
        // ====================================================================

        
        // Constructors, default first, then parametrized =====================
        public MyFibonacci()
        {
            this.currentFibonacciIndex = 0;
            this.currentFibonacciNumber = 0;
        }

        public MyFibonacci(int initialIndex)
        {
            this.currentFibonacciIndex = initialIndex;
            this.currentFibonacciNumber = this.ComputeFibonacciIterative(initialIndex);
        }
        // ====================================================================


        // Overloaded method(s) for iterative computation, default first ======
        public BigInteger ComputeFibonacciIterative()
        {
            // Compute the Fibonacci number for the current index
            return this.ComputeFibonacciIterative(this.currentFibonacciIndex);
        }

        public BigInteger ComputeFibonacciIterative(int indexValue)
        {
            // Compute the Fibonacci number for any given index,
            // set the current index to this new index value (public method)
            // and set he current Fibonacci Number to the result of this
            // computation. Finally, return the result to the outside world.
            BigInteger oldnum = 1;
            BigInteger currnum = 1;
            BigInteger nextNumber;
            int counter = 1;

            this.currentFibonacciIndex = indexValue;

            if ((indexValue == 0) || (indexValue == 1))
            {
                currnum = 1;
            }
            else
            {
                do
                {
                    nextNumber = currnum + oldnum;
                    oldnum = currnum;
                    currnum = nextNumber;
                    counter++;
                } while (counter < indexValue);
            }

            this.currentFibonacciNumber = currnum;

            return currnum;
        }
        // ====================================================================
    }
}
