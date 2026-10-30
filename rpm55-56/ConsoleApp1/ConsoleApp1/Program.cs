// 1 задание общее

File.Create("C:\\Users\\413\\Documents\\Git\\yalaev-egor\\rpm55-56\\numbers.txt");

static void Main(string[] args)
{
    //создаем файловый поток
    FileStream file1 = new FileStream("C:\\Users\\413\\Documents\\Git\\yalaev-egor\\rpm55-56\\numbers.txt", FileMode.Open);
    //создаем «потоковый писатель» и связываем его с файловым потоком 	
    using (StreamWriter writer = new StreamWriter(file1))
    {
        for (int i = 0; i < 256; i++)
            writer.Write(i + ",");
        writer.Close();
    }
    //закрываем поток. Не закрыв поток, в файл ничего не запишется 
   // writer.Close();
}



