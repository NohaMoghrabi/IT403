#!/bin/bash

# OpenWeather API key
apiKey="3133d7ca14f1a52d6feda7ff2ecf2c55"

# Check if the city name is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <city>"s
    exit 1
fi

# City name provided as an argument
city="$1"

# Get weather data using OpenWeatherMap API
weather=$(curl -s "http://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}&units=metric")

# Print the retrieved JSON data for debugging
echo "Retrieved JSON data:"
echo "$weather"

# Check if the city is found (debugging)
cod=$(echo "$weather" | jq -r '.cod')
echo "Response code: $cod"

if [ "$cod" != "200" ]; then
    echo "City not found. Please provide a valid city name."
    exit 1
fi

# Extract and display relevant weather information
echo "Weather in ${city}:"
echo "Temperature: $(echo "$weather" | jq -r '.main.temp')°C"
echo "Description: $(echo "$weather" | jq -r '.weather[0].description')"
echo "Humidity: $(echo "$weather" | jq -r '.main.humidity')%"
echo "Wind Speed: $(echo "$weather" | jq -r '.wind.speed') meter/sec"
