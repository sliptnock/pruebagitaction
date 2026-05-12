--Databricks notebook source
-- COMMAND ---------
CREATE WIDGET TEXT PRM_STORAGELOCATION DEFAULT '';
CREATE WIDGET TEXT PRM_CATALOG_NAME DEFAULT '';
CREATE WIDGET TEXT PRM_AMB DEFAULT '';

-- COMMAND ---------
USE CATALOG ${PRM_CATALOG_NAME};

-- COMMAND ---------
CREATE SCHEMA IF NOT EXISTS silver_metadata;

-- COMMAND ---------
CREATE OR REPLACE TABLE silver_metadata.Provider
(
provider_id bigint comment '',
provider_metastore_id string comment '',
created_at timestamp comment ''
)
--USING DELTA
--LOCATION 'PRM_STORAGELOCATION/$PRM_AMB/bcp/silver/credicorp/metastoreprovider/data/Provider'
--TBLPROPERTIES(
--	'delta.logRetentionDuration' = '15 days',
--	'delta.deleteFileRetentionDuration' = '15 days'
--)

--ALTER TABLE silver_metadata.Provider SET TAGS('updateFrequency' = 'DAILY');