<div align="center">
  <a target="_blank" target="https://www.figma.com/community/file/1023658389987124693">
    <img alt="Weather App Cover" title="Weather App" src="https://eriandev.github.io/api/weather-app/preview.png" />
  </a>
</div>

# Live Weather Application in Bash

## Description

This is a simple Bash script that fetches and displays the current weather for a chosen city using the OpenWeatherMap API.

## Features

- Fetches current weather data from OpenWeatherMap API.
- Allows users to specify a city name for weather information.
- Provides options to choose between Celsius and Fahrenheit temperature units.
- Supports dynamic updates at regular intervals.

## Prerequisites

To use this application, you'll need:

- Bash shell on a Unix-like system (Linux or macOS).
- An OpenWeatherMap API key. You can [sign up here](https://home.openweathermap.org/users/sign_up) to get your API key.

## Installation

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/your-username/live-weather-bash.git
    ```

2. Replace `"YOUR_OPENWEATHER_API_KEY"` in the script with your valid OpenWeather API key.

    ```bash
    apiKey="YOUR_OPENWEATHER_API_KEY"
    ```

3. Save the changes and ensure executable permissions are set for the script:

    ```bash
    chmod +x LiveWeather.sh
    ```

## Usage

Run the script using the following command:

```bash
./LiveWeather.sh -l CITY_NAME -d -f
