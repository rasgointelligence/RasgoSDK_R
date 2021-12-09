<p align="left">
  <img width="90%" href="https://rasgoml.com" target="_blank" src="https://gblobscdn.gitbook.com/assets%2F-MJDKltt3A57jhixTfmu%2F-MJZZeY9BhUCtGPyz6bm%2F-MJZiXHTjQnyVWs6YGPc%2Frasgo-logo-full-color-rgb%20(4).png?alt=media&token=64e56b18-4282-4140-836b-e19c8e2787dc" />
</p>

[![Docs](https://img.shields.io/badge/R_Rasgo-DOCS-GREEN.svg)](https://docs.rasgoml.com/)
[![Chat on Slack](https://img.shields.io/badge/chat-on%20Slack-brightgreen.svg)](https://join.slack.com/t/rasgousergroup/shared_invite/zt-nytkq6np-ANEJvbUSbT2Gkvc8JICp3g)
[![Chat on Discourse](https://img.shields.io/discourse/status?server=https%3A%2F%2Fforum.rasgoml.com)](https://forum.rasgoml.com/)

# R_Rasgo

R_Rasgo is an open source R package that helps Rasgo users access their features in R.


# Quick Start
```r
    install.packages(R_Rasgo)
    api_key = '' #paste in from Rasgo

    datasetID <- 101

    connection <- connect(dsn = 'RasgoSnowflake')

    data <- read_dataset(connection, api_key, datasetID)

```
[Read the Docs →](https://docs.rasgoml.com/rasgo-docs/pyrasgo/pyrasgo-getting-started)


# About Us
R_Rasgo is maintained by *[Rasgo](https://rasgoml.com)*. Rasgo's enterprise feature store integrates with your data warehouse to help users build features faster, collaborate with team members, and serve features to models in production.


<i>Built for Data Scientists, by Data Scientists</i>
