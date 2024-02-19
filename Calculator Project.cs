using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Q1.ArithmeticOperations;
namespace Q1
{

   public class check {
        public delegate double Arithmetic(double x, double y);
        static void Main(string[] args)
        {
            //ArithmeticOperations arithmeticOperations = new ArithmeticOperations();
            Console.Write("Enter Number1:");
            double num1 = Convert.ToDouble(Console.ReadLine());
            Console.Write("Enter Number2:");
            double num2 = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("1.Add");
            Console.WriteLine("2.Multiply");
            Console.WriteLine("3.Divide");
            Console.WriteLine("4.Subtract");
            Console.WriteLine("5.Max");
            Console.Write("Enter your Choice:");
            int ch = (int.Parse)(Console.ReadLine());
           
            switch (ch)
            {
                case 1:
                    {
                       Arithmetic arithmetic = new Arithmetic(ArithmeticOperations.Add);
                        Console.WriteLine(arithmetic(num1,num2));
                    }
                    break;
                case 2:
                    {
                        Arithmetic arithmetic = new Arithmetic(ArithmeticOperations.Multiply);
                        Console.WriteLine(arithmetic(num1,num2));
                    }
                    break;
                case 3:
                    {
                        Arithmetic arithmetic = new Arithmetic(ArithmeticOperations.Divide);
                        Console.WriteLine(arithmetic(num1,num2));
                    }
                    break;
                case 4:
                    {
                        Arithmetic arithmetic = new Arithmetic(ArithmeticOperations.subtract);
                        Console.WriteLine(arithmetic(num1,num2));
                    }
                    break;
                case 5:
                    {
                        Arithmetic arithmetic = new Arithmetic(ArithmeticOperations.Max);
                        Console.WriteLine(arithmetic(num1,num2));
                    }
                    break;
            }
            
            Console.Read();
        }

    }

    public class ArithmeticOperations
    {
        
        public static double Add(double num1, double num2)
        {
            return num1 + num2;
        }
        public static double Multiply(double num1, double num2)
        {
            return num1 * num2;
        }
        public static double Divide(double num1, double num2)
        {
            return num1 / num2;
        }
        public static double subtract(double num1, double num2)
        {
            return num1 - num2;
        }
        public static double Max(double num1, double num2)
        {
            return Max(num1, num2);
        }

    }
}
