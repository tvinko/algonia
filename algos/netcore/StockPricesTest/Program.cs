using Algonia;
using System;

namespace StockPricesTest
{
    class Program
    {
        const string API_KEY = "DQ0NG8FDTFMVLXMZ";
        static void Main(string[] args)
        {
            StockPrices stockPrices = new StockPrices(API_KEY);

            stockPrices.ChangeSymbol("MSLT");
            stockPrices.GetPrices();
        }
    }
}
