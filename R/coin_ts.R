#' This function fetches time series data for a certain cryptocoin
#'
#' It employs POLONIEX API (https://poloniex.com/support/api/)

coin_ts <- function(from="USDT", to="BTC", start=ymd("2001-01-01"),end=Sys.Date(), period=86400) {
  end <- as.numeric(as.POSIXct(end))
  start <- as.numeric(as.POSIXct(start))
  link <- "https://poloniex.com/public?command=returnChartData&currencyPair=" %p%
    from %p% "_" %p% to %p%
    "&start=" %p% start %p% "&end=" %p% end %p% "&period=" %p% period
  data_ts <- fromJSON(link)
  data_ts <- mutate(data_ts, date=as.Date(as.POSIXct(date, origin="1970-01-01")))

}
