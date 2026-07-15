-- =====================================================
-- PROJECT : E-Commerce Supply Chain Intelligence
-- FILE    : 01_setup.sql
-- PURPOSE : Database Setup
-- AUTHOR  : Jatin Sankhla
-- =====================================================

-- Remove the database if it already exists
DROP DATABASE IF EXISTS ecommerce_supply_chain;

-- Create a fresh database
CREATE DATABASE ecommerce_supply_chain
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- Select the database
USE ecommerce_supply_chain;

-- =====================================================
-- VERIFY DATABASE
-- =====================================================

-- Display all databases
SHOW DATABASES;

-- Confirm the selected database
SELECT DATABASE() AS current_database;

-- Show MySQL version
SELECT VERSION() AS mysql_version;

-- =====================================================
-- END OF SETUP
-- =====================================================