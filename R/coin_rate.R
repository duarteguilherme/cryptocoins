# This function fetches information for a certain cryptocoin
#
# It employs POLONIEX API (https://poloniex.com/support/api/)

coin_rate <- function(from, to="USD", start=,end=Sys.Date(), period=300) {
  link <- "https://poloniex.com/public?command=returnChartData&currencyPair=" %p%
    "BTC" %p% "_" %p% "XMR" %p%
    "&start=" %p% start %p% "&end=" %p% end %p% "&period=" %p% period

}
