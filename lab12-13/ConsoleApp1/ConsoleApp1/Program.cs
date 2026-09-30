//1 задание
//Console.WriteLine("Введите ваше число:");
//int a = Convert.ToInt32(Console.ReadLine());
//int mod = (a < 0) ? a * -1 : a;
//Console.WriteLine("Модуль вашего числа = " + mod);


//2 задание
//using System.Diagnostics.Tracing;

//int countplus = 0;
//int countminus = 0;
//int countzero = 0;
//int i = 4;
//do
//{
//    Console.WriteLine("Введите число : ");
//    int a = Convert.ToInt32(Console.ReadLine());
//    if (a > 0)
//        countplus++;
//    else if 
//        (a < 0) countminus++;
//    else countzero++;
//    i--;

//}
//while (i > 0);
//Console.WriteLine("Кол-во положительных чисел = " + countplus);
//Console.WriteLine("Кол-во отрицательных чисел = " + countminus);
//Console.WriteLine("Кол-во чисел равных нулю = " + countzero);

//3 задание

//Console.WriteLine("Введите первое число: ");
//int a = Convert.ToInt32(Console.ReadLine());
//Console.WriteLine("Введите второе число: ");
//int b = Convert.ToInt32(Console.ReadLine());

//Console.WriteLine("Выберите операцию " +
//    "1 — сложение, 2 — вычитание, 3 — умножение, 4 — деление, 5 — остаток от деления.");
//int Operator = Convert.ToInt32(Console.ReadLine());

//switch(Operator)
//{
//    case 1:
//        Console.WriteLine("Результат вашей операции = " + (a + b));
//        break;
//    case 2:
//        Console.WriteLine("Результат вашей операции = " + (a - b));
//        break;
//    case 3:
//        Console.WriteLine("Результат вашей операции = " + (a * b));
//        break;
//    case 4:
//        Console.WriteLine("Результат вашей операции = " + (a / b));
//        break;
//    case 5:
//        Console.WriteLine("Результат вашей операции = " + (a % b));
//        break;
//}

// 4 задание

//object[] values = { 7, 0, -67, 2.55, "эщкере", false };

//for  (int i = 0; i < values.Length; i++)
//{
//    switch (values[i])
//    {
//        case int x when x > 0:
//            Console.WriteLine("int - положительно: " + x);
//            break;
//        case int x when x < 0:
//            Console.WriteLine("int - отрицательное: " + x);
//            break;
//        case int x:
//            Console.WriteLine("int - ноль: " + x);
//            break;
//        case double x:
//            Console.WriteLine("double: " + x);
//            break;
//        case string x:
//            Console.WriteLine("string: " + x);
//            break;
//        case bool x:
//            Console.WriteLine("bool: "+ x);
//            break;
//        default:
//            Console.WriteLine("другой тип: " + values[i]);
//            break;


//    }
//}