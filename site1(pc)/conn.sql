drop database link site2

create database link site2
connect to system identified by "admin"
using '(DESCRIPTION =
       (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP) (HOST = 192.168.242.130) (PORT = 1622)))
       (CONNECT_DATA = (SID = XE))
)'; 
