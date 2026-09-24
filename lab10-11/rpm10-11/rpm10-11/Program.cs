int a1 = 3;
int a2 = -2;
int a3 = 6;
int b1 = 9;
int b2 = 4;
int b3 = -1;

int[] a = { a1, a2, a3 };
int[] b = { b1, b2, b3 };

var S = a1 * b1 + a2 * b2 + a3 * b3;
Console.WriteLine(S);

double La = Math.Sqrt(Math.Pow(a1, 2) + Math.Pow(a2, 2) + Math.Pow(a3, 2));
double Lb = Math.Sqrt(Math.Pow(b1, 2) + Math.Pow(b2, 2) + Math.Pow(b3, 2));
Console.WriteLine(La);
Console.WriteLine(Lb);

double cos = S / (La * Lb);
Console.WriteLine(cos);

int[] d = [a1 - b1, a2 - b2, a3 - b3];

for (int i = 0; i < d.Length; i++)
{
    Console.Write(d[i] + ",");
}

var z1 = 1.7;
var z2 = -0.4;
var z3 = 0.1;

var p1 = Math.Exp(z1) / Math.Exp(z1) + Math.Exp(z2) + Math.Exp(z3);
var p2 = Math.Exp(z2) / Math.Exp(z1) + Math.Exp(z2) + Math.Exp(z3);
var p3 = Math.Exp(z3) / Math.Exp(z1) + Math.Exp(z2) + Math.Exp(z3);

Console.WriteLine(p1);
Console.WriteLine(p2);
Console.WriteLine(p3);

var L = Math.Log10(p2) * -1;
Console.WriteLine(L);

var PPL = Math.Exp(L);
Console.WriteLine(PPL);


var Tin = 2000000;
var Tout = 500000;
var Vin = 50;
var Vout = 25;
var Cin = 5;
var Cout = 15;

var tIn = Tin / Vin;
var tOut = Tout / Vout;
var t = tIn + tOut;
var CostIn = Tin * Cin / 1000000;
var CostOut = Tout * Cout / 1000000;
var Cost = CostIn + CostOut;

Console.WriteLine("общее время = " + t);
Console.WriteLine("Общая стоимость = " + Cost);


