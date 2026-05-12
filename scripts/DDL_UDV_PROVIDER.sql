--Databricks notebook source
USE CATALOG ${PRM_CATALOG_NAME};
CREATE SCHEMA IF NOT EXISTS silver_metadata;
CREATE OR REPLACE TABLE silver_metadata.Provider
(
provider_id bigint comment '',
provider_metastore_id string comment '',
created_at timestamp comment ''
)
