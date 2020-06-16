# docker-flightsim
Docker container for Alphasoc Flightsim (https://github.com/alphasoc/flightsim)

## Example 
`docker run --rm --name test_flightsim flightsim`

## ENV variables
- `INTERVAL` - Interval in seconds to run flightsim (default 300 seconds if not set)
- `SINGLERUN` - When set to any value flightsim will run only once 

### Examples
Run once
`docker run --rm --name test_flightsim -e SINGLERUN=1 flightsim`

Run every 600 seconds (10 mins)
`docker run --rm --name test_flightsim -e INTERVAL=600 flightsim`
