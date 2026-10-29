Console.WriteLine("Введите координаты 1 точки:");
double x1 = double.Parse(Console.ReadLine());
double y1 = double.Parse(Console.ReadLine());

Console.WriteLine("Введите координаты 2 точки:");
double x2 = double.Parse(Console.ReadLine());
double y2 = double.Parse(Console.ReadLine());

//double lenght = Math.Sqrt(Math.Pow(x1-x2,2) +  Math.Pow(y1-y2,2));

static double Lenght (double x1, double y1, double x2, double y2)
{
    double lenght = Math.Sqrt(Math.Pow(x1 - x2, 2) + Math.Pow(y1 - y2, 2));
    return lenght;
}

double result = Lenght(x1, y1, x2, y2);
Console.WriteLine("Расстояние между точками = "+result);





