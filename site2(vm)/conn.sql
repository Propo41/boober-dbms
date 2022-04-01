drop database link site1

create database link site1
connect to system identified by "admin"
using '(DESCRIPTION =
       (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP) (HOST = 192.168.0.157) (PORT = 1625)))
       (CONNECT_DATA = (SID = XE))
)'; 
