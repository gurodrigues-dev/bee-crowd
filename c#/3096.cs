using System; 
class URI {
    static void Main(string[] args) { 
        int n = Int32.Parse(Console.ReadLine());
        
        int r = (int) Math.Floor(n*Math.Log10(n/Math.E) + Math.Log10(2*Math.PI*n)/2.0) + 1;
        Console.WriteLine(r);
    }
}