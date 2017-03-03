#' Fetch time series data of two cryptocurrency exchange rates.
#'
#' @import tidyverse
#' @import lubridate
#' @import forcats
#' @import tidyquant
#' @import jsonlite
#' @param from
#' @param to
#' @param start
#' @param end
#' @param period
#' @return a tibble with data of HLOCV of the referred cryptocoin
#' @examples
#' btc_data <- coin_ts(from="BTC", to="USDT", start="2001-01-01", end="2017-02-18")
#' @export

coin_ts <- function(from="USDT", to="ETH", start="2001-01-01",end="9999-01-01", period=86400) {
  end <- as.numeric(as.POSIXct(ymd(end)))
  start <- as.numeric(as.POSIXct(ymd(start)))
  link <- "https://poloniex.com/public?command=returnChartData&currencyPair=" %p%
    from %p% "_" %p% to %p%
    "&start=" %p% start %p% "&end=" %p% end %p% "&period=" %p% period
  data_ts <- fromJSON(link)
  data_ts <- mutate(data_ts, date=as.Date(as.POSIXct(date, origin="1970-01-01")))
  return(data_ts)
}

