#function to connect to your data warehouse
#relies on a pre-existing ODBC Data Source Name
connect <- function(data_source_name) {
    myconn <- DBI::dbConnect(odbc::odbc(), dsn = data_source_name)
    return myconn
}

#function to connect to Rasgo API to get fqtn for datasetID
#optionally pass a row limit to limit the number of rows extracted
read_dataset <- function(con, api_key, datasetID, row_limit) {
    url = paste("https://api.rasgoml.com/v1/models/", datasetID, sep='')
    token <- paste('Bearer ', api_key)
    response <- GET(url, add_headers("Authorization" = token))
    r_parsed <- content(response,as="parsed")
    fqtn <- r_parsed$dataTableName

    #query dataset data
    limit_clause <- if(missing(row_limit)) '' else paste(' LIMIT ', row_limit)
    
    sql_query <- paste("select * FROM ", toupper(collection), limit_clause)
    mydata <- DBI::dbGetQuery(con, sql_query)
    return(mydata)
}