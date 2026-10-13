//1 задание общее

//int size;
//bool valid;
//do
//{
//    Console.Write("Параметр размера (0-31): ");
//    string input = Console.ReadLine();
//    if (input == null)
//    {
//        Console.WriteLine("Ввод завершён");
//        return;
//    }
//    valid = int.TryParse(input, out size)
//            && size >= 1 && size <= 31;
//    if (!valid)
//        Console.WriteLine("Нужно целое число от 1 до 31.");
//}
//while (!valid);

//Console.WriteLine($"Принято: {size}");

//2 задание общее

//Console.WriteLine("Введите число:");
//bool result = int.TryParse(Console.ReadLine(), out int remaining);
//int count = 0;
//do
//{
//    int digit = remaining % 10;
//    count++;
//    remaining /= 10;
//}
//while (remaining > 0);
//Console.WriteLine("Кол-во цифр в вашем числе:");
//Console.WriteLine(count);

//3 заданеи общее

//string answer;

//do
//{
//    Console.WriteLine("Salam");
//    Console.WriteLine("Хотите продолжения?  да/нет");
//    answer = Console.ReadLine();
//}
//while(answer == "да");

//Console.WriteLine("vse bb");

// задание А мой вариант

//int number = 0;
//do
//{
//    Console.WriteLine("Выберите действие 1 — вывести время; 0 — выход");
//    bool result = int.TryParse(Console.ReadLine(), out number);

//    switch(number)
//    {
//        case 1:
//            Console.WriteLine("Текущее время :" + DateTime.Now);
//            break;
//        case 0:
//            Console.WriteLine("Выход");
//            break;
//        default:
//            Console.WriteLine("Ошибка Неверный оператор");
//            break;
//    }

//}
//while (number != 0);

//Задание Б мой варик

double totalweight = 0;
int count  = 0;
string answer = "да";
double weight = 0;
do
{

    Console.WriteLine("Введите вес посылки от 0.1 до 100кг:");
    bool result = double.TryParse(Console.ReadLine(), out weight);
    if (weight > 0.1d && weight<100d)
    {
        Console.WriteLine("Хотите добавить еще посслыку? да/нет");
        answer = Console.ReadLine();
    }
    else
    {
        Console.WriteLine("Ошибка вес посылки должен быть от 0.1 до 100 кг");
    }
    totalweight = totalweight + weight;
    count++;
}
while (answer == "да");

Console.WriteLine("Колличество посылок: " + count);
Console.WriteLine("Общий вес посылок: " + totalweight);

