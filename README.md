# Boober

A ride-sharing platform where users can request rides. Currently, only 2 cities are being operated on: Dhaka and Comilla.

## Features:
1. Passengers can request rides nearby
2. Passengers can view the driver’s past history and profile
3. Passengers get an estimated fare for the trip

## Specifications
Oracle SQL+ will be used to create a seamless distributed database management system.


## Database Schema
The database schema can be found at the following link:
https://dbdiagram.io/d/6161adb7940c4c4eec8d20e4

![image](https://user-images.githubusercontent.com/46298019/161210457-df2cd7a2-4a34-4d1f-b80f-073619f36df2.png)

## Need for Distributed Database
As a ride-sharing platform, there will be several cities in a country under consideration.
Thousands of requests will be coming per hour from different locations in different cities.
Using a centralized database will put a huge load on the server and the user queries will be
slowed down.

This brings the concept of a distributed database into place. Each city will have their own local
databases. Data of Passengers or Drivers registering for their particular city will be put into
their local databases, along with all location information.
When a driver or a passenger travels to another city, the data will be fetched from that
respective city thus reducing the load on the servers and providing efficient queries.
