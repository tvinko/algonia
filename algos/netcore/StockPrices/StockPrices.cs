using Avapi;
using Avapi.AvapiTIME_SERIES_DAILY;
using System;

namespace Algonia
{
    public class StockPrices
    {
        public string Symbol { get; set; }
        public string ApiKey { get; set; }
        public StockPrices(string ApiKey)
        {
            this.ApiKey = ApiKey;
        }

        public void ChangeSymbol(string symbol)
        {
            this.Symbol = symbol;
        }

        public string GetPrices()
        {
            string csv = string.Empty;
            try
            {
                IAvapiConnection connection = AvapiConnection.Instance;
                connection.Connect(ApiKey);

                Int_TIME_SERIES_DAILY time_series_daily =
                   connection.GetQueryObject_TIME_SERIES_DAILY();

                IAvapiResponse_TIME_SERIES_DAILY time_series_dailyResponse =
                time_series_daily.Query(
                     Symbol,
                     Const_TIME_SERIES_DAILY.TIME_SERIES_DAILY_outputsize.compact);

                var data = time_series_dailyResponse.Data;
                if (data.Error)
                {
                    Console.WriteLine(data.ErrorMessage);
                }
                else
                {
                    csv = "open;high;low;close;volume;date" + Environment.NewLine;
                    foreach (var timeseries in data.TimeSeries)
                        csv += timeseries.open + ";" + timeseries.high + ";" + timeseries.low + ";" + timeseries.close + ";" + timeseries.volume + ";" + timeseries.DateTime + Environment.NewLine;

                }
            }
            catch (Exception ex)
            {
                csv = "ERROR";
                Console.WriteLine("Get Prices API error" + ex.Message);
            }
            return csv;
        }
    }
}
