using System.Net.Http.Json;
using System.Text.Json;
using Telegram.Bot;
using Telegram.Bot.Types;
using Telegram.Bot.Types.Enums;

string token = "8803584079:AAEr5dKU3zEqeHQvgnC_sKvN5NN2TZ7fpuI";

var bot = new TelegramBotClient(token);

var me = bot.GetMe;

bot.OnMessage += HandleMessage;

Console.ReadLine();
async Task HandleMessage(Message message, UpdateType type)
{
    if (message.Text is not { } text)
        return;
    string responce = text switch
    {
        "/start" => "Вы стартанули",
        "/help" => "Вызовите скорую",
        "schedule" => "когда-то здесь будет расписание",
        _ => $"Вы написали {message.Text}"
    };

    using var http = new HttpClient();
    var responceJson = await http.PostAsJsonAsync(
      "http://localhost:11434/api/chat",
      new
      {
          model = "qwen3:4b",
          stream = false,
          messages = new[]
          {
              new {role = "user", content = text}
          }
      }
    );
    responceJson.EnsureSuccessStatusCode();
    using var json = await JsonDocument.ParseAsync(
        await responceJson.Content.ReadAsStreamAsync());

    var answer = json.RootElement
        .GetProperty("message")
        .GetProperty("content")
        .GetString();

    await bot.SendMessage(message.Chat.Id, answer ?? "Нет ответа");
}