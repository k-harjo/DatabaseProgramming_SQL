USE master;

-- if necessary, drop the AR database
IF EXISTS(SELECT * FROM sys.databases WHERE name = 'AR')
    DROP DATABASE AR;

CREATE DATABASE AR COLLATE Latin1_General_100_CI_AS;