using System; 
class URI {
    static void Main(string[] args) { 
        double n, r;

        n = double.Parse(Console.ReadLine());
        r = 3.14159 * (n * n);

        Console.WriteLine("A=" + r.ToString("F4"));
    }
}