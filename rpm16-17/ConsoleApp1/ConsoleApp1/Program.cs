// 1 задание общее

//long sum = 0;
//int count = 0;
//Console.WriteLine("Вводите целые от -1000 до 1000; 0 завершает.");
//string line = Console.ReadLine();
//if (line == null) return;
//int value = int.Parse(line);
//while (value != 0)
//{
//    sum += value;
//    count++;
//    line = Console.ReadLine();
//    if (line == null)
//    {
//        Console.WriteLine("Ввод завершён");
//        return;
//    }
//    value = int.Parse(line);
//}
//Console.WriteLine($"Количество: {count}; сумма: {sum}");

// 2 задание общее

//Console.WriteLine("Введите число для проверки буфера: ");
//bool result = int.TryParse(Console.ReadLine(), out int N);
//long capacity = 1;
//int steps = 0;
//while (capacity < N)
//{
//    capacity *= 2;
//    steps++;
//}
//Console.WriteLine($"Результат: {capacity}; " +
//$"Шагов: {steps}");


// 3 задание общее

//int[] values = {2,-1};
//int index = 0;
//while (index < values.Length && values[index] >= 0)
//{
//    index++;
//}
//if (index < values.Length)
//    Console.WriteLine($"Первое отрицательное: индекс {index}");
//else
//    Console.WriteLine("Не найдено");
//Console.WriteLine("Число проходов: " + index);

// 1 задание мой вариант 

//Console.WriteLine("Введите А от 1 до 100:");
//bool result = double.TryParse(Console.ReadLine(), out double A);
//if (A >= 1 || A <= 100)
//{
//    double x = A;
//    int steps = 0;
//    while (Math.Abs(x * x - A) >= 0.00001 && steps < 100)
//    {
//        x = (x + A / x) / 2;
//        steps++;
//    }
//    Console.WriteLine("Приближение: " + x);

//    if (Math.Abs(x * x - A) < 0.00001)
//        Console.WriteLine("Статус: точность достугнта");
//    else
//        Console.WriteLine("Статус: точность не достугнта (превышен лимит шагов)");

//}
//else
//{
//    Console.WriteLine(" Ошибка! А должно быть от 1 до 100");
//}

// 2 задание мой варик

Console.WriteLine("Введите eps от 0.000001 до 20:");
bool result = double.TryParse(Console.ReadLine(), out double eps);
if (eps >= 0.000001 || eps <= 20)
{
    double x = 0d;
    int steps = 0;
    while (Math.Abs(x-10) > eps && steps < 100)
    {
        x = (x+10) / 2;
        steps++;
    }
    Console.WriteLine("Кол-во обновлений " + steps);
    Console.WriteLine("Финальное значение: " + x);

    if (Math.Abs(x - 10) <= eps)
        Console.WriteLine("Статус: точность достугнта");
    else
        Console.WriteLine("Статус: точность не достугнта (превышен лимит шагов)");

}
else
{
    Console.WriteLine(" Ошибка! eps должно быть от 0.000001 до 20");
}