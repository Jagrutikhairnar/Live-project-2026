use cyber_incidents_analytics;

CREATE TABLE global_incident (
    incident_id INT NOT NULL PRIMARY KEY,

    name TEXT,
    description TEXT,
    start_date DATE,
    end_date DATE,

    inclusion_criterion TEXT,
    inclusion_criterion_subcode TEXT,
    source_disclosure TEXT,
    incident_type TEXT,

    receiver_name TEXT,
    receiver_country VARCHAR(150),
    receiver_country_alpha_2_code CHAR(2),
    receiver_regions TEXT,
    receiver_category TEXT,
    receiver_subcategory TEXT,

    initiator_name TEXT,
    initiator_country VARCHAR(150),
    initiator_alpha_2 CHAR(2),
    initiator_category TEXT,
    initiator_subcategory TEXT,

    number_attributions INT,

    attribution_id INT,
    attribution_date DATE,
    attribution_type TEXT,
    attribution_basis TEXT,
    attributing_actor TEXT,
    attributing_company TEXT,
    attributing_country TEXT,
    settled_initiator TEXT,

    attribution_source_url TEXT,

    cyber_conflict_issue TEXT,
    offline_conflict_issue TEXT,
    offline_conflict_name TEXT,
    offline_conflict_intensity TEXT,
    offline_conflict_intensity_subcode TEXT,

    number_political_responses INT,
    political_response_date DATE,
    political_response_type TEXT,
    political_response_subtype TEXT,
    political_response_responding_country TEXT,
    political_response_responding_actor TEXT,

    zero_days TEXT,
    zero_days_subcode TEXT,
    mitre_initial_access TEXT,
    mitre_impact TEXT,
    user_interaction TEXT,

    has_disruption BOOLEAN,
    data_theft text,
    disruption text,
    hijacking text,

    physical_effects_spatial TEXT,
    physical_effects_temporal TEXT,

    unweighted_intensity INT,
    target_multiplier text,
    weighted_intensity INT,

    impact_indicator_label TEXT,
    impact_indicator_score INT,

    functional_impact TEXT,
    intelligence_impact TEXT,

    affected_entities TEXT,
    affected_entities_value INT,

    affected_third_countries TEXT,
    affected_third_countries_value INT,

    economic_impact TEXT,
    economic_impact_value int,
    economic_impact_currency VARCHAR(20),

    state_responsibility_actor TEXT,
    il_breach_indicator TEXT,
    il_breach_indicator_subcode TEXT,
    evidence_for_sanctions_indicator TEXT,

    number_legal_responses INT,
    legal_response_date DATE,
    legal_response_type TEXT,
    legal_response_subtype TEXT,
    legal_response_responding_country TEXT,
    legal_response_responding_actor TEXT,

    attribution_legal_reference TEXT,
    attribution_legal_reference_subcode TEXT,
    response_indicator TEXT,

    casualties text,

    source_url TEXT,
    added_to_db DATE,
    updated_at DATE
);




SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'local_infile';


LOAD DATA LOCAL INFILE 'F:/Sarang G Repo/cyber_data_excel/eurepoc_global_dataset_cleaned1.csv'
INTO TABLE global_incident
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    @incident_id,    @name,    @description,    @start_date,    @end_date,    @inclusion_criterion,
    @inclusion_criterion_subcode,    @source_disclosure,    @incident_type,    @receiver_name,
    @receiver_country, @receiver_country_alpha_2_code, @receiver_regions, @receiver_category, @receiver_subcategory,
    @initiator_name, @initiator_country, @initiator_alpha_2, @initiator_category, @initiator_subcategory,
    @number_attributions, @attribution_id, @attribution_date, @attribution_type, @attribution_basis,
    @attributing_actor, @attributing_company, @attributing_country, @settled_initiator, @attribution_source_url,
    @cyber_conflict_issue, @offline_conflict_issue, @offline_conflict_name, @offline_conflict_intensity, @offline_conflict_intensity_subcode,
    @number_political_responses, @political_response_date, @political_response_type, @political_response_subtype, @political_response_responding_country,
    @political_response_responding_actor, @zero_days, @zero_days_subcode, @mitre_initial_access, @mitre_impact,
    @user_interaction, @has_disruption, @data_theft, @disruption, @hijacking,
    @physical_effects_spatial, @physical_effects_temporal, @unweighted_intensity, @target_multiplier, @weighted_intensity,
    @impact_indicator_label, @impact_indicator_score, @functional_impact, @intelligence_impact, @affected_entities,
    @affected_entities_value, @affected_third_countries, @affected_third_countries_value, @economic_impact, @economic_impact_value,
    @economic_impact_currency, @state_responsibility_actor, @il_breach_indicator, @il_breach_indicator_subcode, @evidence_for_sanctions_indicator,
    @number_legal_responses, @legal_response_date, @legal_response_type, @legal_response_subtype, @legal_response_responding_country,
    @legal_response_responding_actor, @attribution_legal_reference, @attribution_legal_reference_subcode, @response_indicator,
    @casualties,
    
    @source_url,
    @added_to_db,
    @updated_at
)
SET
    incident_id = NULLIF(@incident_id, ''),
    name = NULLIF(@name, ''),
    description = NULLIF(@description, ''),
    start_date = NULLIF(@start_date, ''),
    end_date = NULLIF(@end_date, ''),
    inclusion_criterion = NULLIF(@inclusion_criterion, ''),
    inclusion_criterion_subcode = NULLIF(@inclusion_criterion_subcode, ''),
    source_disclosure = NULLIF(@source_disclosure, ''),
    incident_type = NULLIF(@incident_type, ''),
    receiver_name = NULLIF(@receiver_name, ''),
    receiver_country = NULLIF(@receiver_country, ''),
    receiver_country_alpha_2_code = NULLIF(@receiver_country_alpha_2_code, ''),
    receiver_regions = NULLIF(@receiver_regions, ''),
    receiver_category = NULLIF(@receiver_category, ''),
    receiver_subcategory = NULLIF(@receiver_subcategory, ''),
    initiator_name = NULLIF(@initiator_name, ''),
    initiator_country = NULLIF(@initiator_country, ''),
    initiator_alpha_2 = NULLIF(@initiator_alpha_2, ''),
    initiator_category = NULLIF(@initiator_category, ''),
    initiator_subcategory = NULLIF(@initiator_subcategory, ''),
    number_attributions = NULLIF(@number_attributions, ''),
    attribution_id = NULLIF(@attribution_id, ''),
    attribution_date = NULLIF(@attribution_date, ''),
    attribution_type = NULLIF(@attribution_type, ''),
    attribution_basis = NULLIF(@attribution_basis, ''),
    attributing_actor = NULLIF(@attributing_actor, ''),
    attributing_company = NULLIF(@attributing_company, ''),
    attributing_country = NULLIF(@attributing_country, ''),
    settled_initiator = NULLIF(@settled_initiator, ''),
    attribution_source_url = NULLIF(@attribution_source_url, ''),
    cyber_conflict_issue = NULLIF(@cyber_conflict_issue, ''),
    offline_conflict_issue = NULLIF(@offline_conflict_issue, ''),
    offline_conflict_name = NULLIF(@offline_conflict_name, ''),    
    offline_conflict_intensity = NULLIF(@offline_conflict_intensity, ''),    
    offline_conflict_intensity_subcode = NULLIF(@offline_conflict_intensity_subcode, ''),   
    number_political_responses = NULLIF(@number_political_responses, ''),
    political_response_date = NULLIF(@political_response_date, ''),
    political_response_type = NULLIF(@political_response_type, ''),
    political_response_subtype = NULLIF(@political_response_subtype, ''),
    political_response_responding_country = NULLIF(@political_response_responding_country, ''),    
    political_response_responding_actor = NULLIF(@political_response_responding_actor, ''),
    zero_days = NULLIF(@zero_days, ''),
    zero_days_subcode = NULLIF(@zero_days_subcode, ''),
    mitre_initial_access = NULLIF(@mitre_initial_access, ''),
    mitre_impact = NULLIF(@mitre_impact, ''),
    user_interaction = NULLIF(@user_interaction, ''),
    has_disruption = NULLIF(@has_disruption, ''),
    data_theft = NULLIF(@data_theft, ''),
    disruption = NULLIF(@disruption, ''),
    hijacking = NULLIF(@hijacking, ''),
    physical_effects_spatial = NULLIF(@physical_effects_spatial, ''),
    physical_effects_temporal = NULLIF(@physical_effects_temporal, ''),
    target_multiplier = NULLIF(@target_multiplier, ''),
    target_multiplier = NULLIF(@target_multiplier, ''),
    weighted_intensity = NULLIF(@weighted_intensity, ''),
    impact_indicator_label = NULLIF(@impact_indicator_label, ''),
    impact_indicator_score = NULLIF(@impact_indicator_score, ''),
    functional_impact = NULLIF(@functional_impact, ''),
    intelligence_impact = NULLIF(@intelligence_impact, ''),
    affected_entities = NULLIF(@affected_entities, ''),    
    affected_entities_value = NULLIF(@affected_entities_value, ''),
    affected_third_countries = NULLIF(@affected_third_countries, ''),
    affected_third_countries_value = NULLIF(@affected_third_countries_value, ''),
    economic_impact = NULLIF(@economic_impact, ''),
    economic_impact_value = NULLIF(@economic_impact_value, ''),
    economic_impact_currency = NULLIF(@economic_impact_currency, ''),
    state_responsibility_actor = NULLIF(@state_responsibility_actor, ''),
    il_breach_indicator = NULLIF(@il_breach_indicator, ''),
    il_breach_indicator_subcode = NULLIF(@il_breach_indicator_subcode, ''),
    evidence_for_sanctions_indicator = NULLIF(@evidence_for_sanctions_indicator, ''),    
    number_legal_responses = NULLIF(@number_legal_responses, ''),
    legal_response_date = NULLIF(@legal_response_date, ''),
    legal_response_type = NULLIF(@legal_response_type, ''),
    legal_response_subtype = NULLIF(@legal_response_subtype, ''),
    legal_response_responding_country = NULLIF(@legal_response_responding_country, ''),
    legal_response_responding_actor = NULLIF(@legal_response_responding_actor, ''),
    attribution_legal_reference = NULLIF(@attribution_legal_reference, ''),
    attribution_legal_reference_subcode = NULLIF(@attribution_legal_reference_subcode, ''),
    response_indicator = NULLIF(@response_indicator, ''),
    casualties = NULLIF(@casualties, ''),    
    source_url = NULLIF(@source_url, ''),
    added_to_db = NULLIF(@added_to_db, ''),
    updated_at = NULLIF(@updated_at, '')
    ;

select * from global_incident;
delete from global_incident
where incident_id = 0;

select * from global_incident;



-- attribution

CREATE TABLE eurepoc_attribution (
    attribution_row_id INT AUTO_INCREMENT,
    attribution_id INT,  -- NOT unique (joint attributions)
    incident_id INT,
    attribution_year INT,
    attribution_month INT,
    attribution_day INT,
    attribution_date DATE,
    
    attribution_basis VARCHAR(255),
    attribution_type TEXT,
    attribution_subtype TEXT,
    
    attributing_country VARCHAR(150),
    attributing_actor VARCHAR(100),
    attributing_company TEXT,
    
    settled_attribution BOOLEAN,
    
    initiator_name VARCHAR(255),
    initiator_alpha_2 CHAR(2),
    initiator_country VARCHAR(100),
    initiator_category TEXT,
    initiator_subcategory TEXT,

    FOREIGN KEY (incident_id) REFERENCES global_incident(incident_id),
    -- PRIMARY KEY (attribution_id, incident_id, initiator_name, attribution_basis, attributing_actor),
    INDEX (attribution_row_id)
);

LOAD DATA LOCAL INFILE 'F:/Sarang G Repo/cyber_data_excel/eurepoc_attribution_dataset_1.3_xlsxtocsv.csv'
INTO TABLE eurepoc_attribution
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS 
(attribution_row_id,     attribution_id,     incident_id,     @attribution_year,     @attribution_month,     @attribution_day,     @attribution_date,     attribution_basis,     attribution_type,     attribution_subtype,     attributing_country,     attributing_actor,     attributing_company,     @settled_attribution,     initiator_name,     initiator_alpha_2,     initiator_country,     initiator_category,     @initiator_subcategory)
SET 
    attribution_year = NULLIF(@attribution_year, ''),
    attribution_month = NULLIF(@attribution_month, ''),
    attribution_day = NULLIF(@attribution_day, ''),
    attribution_date = CASE 
        WHEN @attribution_date = 'Not available' OR @attribution_date = '' THEN NULL 
        WHEN @attribution_date REGEXP '^[0-9]{4}$' THEN CONCAT(@attribution_date, '-01-01') 
        ELSE @attribution_date 
    END,
    settled_attribution = CASE 
        WHEN @settled_attribution IN ('True', 'TRUE', '1', 1) THEN 1 
        WHEN @settled_attribution IN ('False', 'FALSE', '0', 0) THEN 0 
        ELSE NULL 
    END,
    initiator_subcategory = TRIM(BOTH '"' FROM @initiator_subcategory);
    
    
    select * from eurepoc_attribution;
    
    
    CREATE TABLE eurepoc_receiver (
    id VARCHAR(50) PRIMARY KEY,
    incident_id INT(5) NOT NULL,
    name TEXT,
    country VARCHAR(150),
    category TEXT,
    subcategory TEXT,
    FOREIGN KEY (incident_id) REFERENCES global_incident(incident_id)
);


LOAD DATA LOCAL INFILE 'F:/Sarang G Repo/cyber_data_excel/eurepoc_receiver_dataset_1.3_xlsxtocsv.csv'
INTO TABLE eurepoc_receiver
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS 
(
    id, 
    @incident_id, 
    @name, 
    @country, 
    @category, 
    @subcategory
)
SET 
    -- id = NULLIF(TRIM(@id), ''),
    incident_id = NULLIF(NULLIF(TRIM(@incident_id), ''), 'Not available'),
    name = CASE 
        WHEN TRIM(@name) IN ('', 'Not available', 'not available', 'Unknown', 'unknown') THEN NULL 
        ELSE @name 
    END,
    country = CASE 
        WHEN TRIM(@country) IN ('', 'Not available', 'not available', 'Unknown', 'unknown') THEN NULL 
        ELSE @country 
    END,
    category = CASE 
        WHEN TRIM(@category) IN ('', 'Not available', 'not available', 'Unknown', 'unknown') THEN NULL 
        ELSE @category 
    END,
    subcategory = CASE 
        WHEN TRIM(@subcategory) IN ('', 'Not available', 'not available', 'Unknown', 'unknown') THEN NULL 
        ELSE @subcategory 
    END;
    
    select * from eurepoc_receiver;
    
    
    
    CREATE TABLE eurepoc_dyadic (
    dyad_row_id INT(5) AUTO_INCREMENT,
    dyad_id INT(5),
    initiator_country VARCHAR(64),
    initiator_alpha_2 CHAR(64),
    receiver_country VARCHAR(150),
    receiver_country_alpha_2_code CHAR(25),
    incident_id INT,
    name TEXT,
    description TEXT,
    start_date DATETIME,
    end_date DATETIME,
    source_disclosure TEXT,
    operation_type VARCHAR(255),
    impact_indicator_score INT(3),
    impact_indicator_label VARCHAR(64),
    unweighted_intensity INT(2),
    weighted_intensity INT(3),
    number_attributions INT(2),
    number_political_responses INT(2),
    number_legal_responses INT(2),
    casualties INT(2),
    attribution_id INT(11),
    initiator_name TEXT,
    initiator_category VARCHAR(64),
    initiator_subcategory TEXT,
    receiver_id VARCHAR(16),
    receiver_name TEXT,
    receiver_category TEXT,
    receiver_subcategory TEXT,
    receiver_regions VARCHAR(64),
    offline_conflict_issue VARCHAR(64),
    offline_conflict_name VARCHAR(64),
    offline_conflict_intensity VARCHAR(32),
    offline_conflict_intensity_subcode VARCHAR(16),
    cyber_conflict_issue VARCHAR(32),
    physical_effects_spatial VARCHAR(128),
    physical_effects_temporal VARCHAR(128),
    target_multiplier VARCHAR(128),
    functional_impact VARCHAR(64),
    intelligence_impact VARCHAR(255),
    economic_impact VARCHAR(32),
    economic_impact_value INT(11),
    economic_impact_currency VARCHAR(50),
    affected_entities VARCHAR(50),
    affected_entities_value INT(11),
    affected_eu_countries VARCHAR(11) DEFAULT NULL,
    affected_eu_countries_value VARCHAR(11) DEFAULT NULL,
    affected_third_countries VARCHAR(11),
    affected_third_countries_value INT(3),
    data_theft TINYINT,
    data_theft_and_doxing TINYINT,
    disruption TINYINT,
    hijacking_with_misuse TINYINT,
    hijacking_without_misuse TINYINT,
    not_available TINYINT,
    ransomware TINYINT,
    added_to_db DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (incident_id) REFERENCES global_incident(incident_id),
    INDEX (dyad_row_id)
);


LOAD DATA LOCAL INFILE 'F:/Sarang G Repo/cyber_data_excel/eurepoc_dyadic_dataset_0_1_xlsxtocsv.csv' 
INTO TABLE eurepoc_dyadic
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS 
(dyad_row_id, dyad_id, initiator_country, initiator_alpha_2, receiver_country, receiver_country_alpha_2_code, incident_id, name, description, @start_date, @end_date, source_disclosure, operation_type, @impact_indicator_score, impact_indicator_label, @unweighted_intensity, @weighted_intensity, @number_attributions, @number_political_responses, @number_legal_responses, @casualties, @attribution_id, initiator_name, initiator_category, initiator_subcategory, receiver_id, receiver_name, receiver_category, receiver_subcategory, receiver_regions, offline_conflict_issue, offline_conflict_name, offline_conflict_intensity, offline_conflict_intensity_subcode, cyber_conflict_issue, physical_effects_spatial, physical_effects_temporal, target_multiplier, functional_impact, intelligence_impact, economic_impact, @economic_impact_value, economic_impact_currency, affected_entities, @affected_entities_value, @affected_eu_countries, @affected_eu_countries_value, @affected_third_countries, affected_third_countries_value, data_theft, data_theft_and_doxing, disruption, hijacking_with_misuse, hijacking_without_misuse, not_available, ransomware, @added_to_db, @updated_at)
SET
  start_date = CASE WHEN TRIM(@start_date) IN ('', 'Not available', 'not available') THEN NULL ELSE @start_date END,
  end_date = CASE WHEN TRIM(@end_date) IN ('', 'Not available', 'not available') THEN NULL ELSE @end_date END,
  impact_indicator_score =NULLIF(NULLIF(TRIM(@impact_indicator_score), ''), 'Not available'), 
  unweighted_intensity =NULLIF(NULLIF(TRIM(@unweighted_intensity), ''), 'Not available'), 
  weighted_intensity =NULLIF(NULLIF(TRIM(@weighted_intensity), ''), 'Not available'), 
  number_attributions =NULLIF(NULLIF(TRIM(@number_attributions), ''), 'Not available'), 
  number_political_responses =NULLIF(NULLIF(TRIM(@number_political_responses), ''), 'Not available'), 
  number_legal_responses =NULLIF(NULLIF(TRIM(@number_legal_responses), ''), 'Not available'), 
  casualties =NULLIF(NULLIF(TRIM(@casualties), ''), 'Not available'), 
  attribution_id = NULLIF(NULLIF(TRIM(@attribution_id), ''), 'Not available'), 
  economic_impact_value = NULLIF(NULLIF(TRIM(@economic_impact_value), ''), 'Not available'), 
  affected_entities_value = NULLIF(NULLIF(TRIM(@affected_entities_value), ''), 'Not available'), 
  affected_eu_countries = NULLIF(NULLIF(TRIM(@affected_eu_countries), ''), 'Not available'),
  affected_eu_countries_value = NULLIF(NULLIF(TRIM(@affected_eu_countries_value ), ''), 'Not available'),
  affected_third_countries_value = NULLIF(NULLIF(TRIM(@affected_third_countries_value), ''), 'Not available'), 
  added_to_db = NULLIF(TRIM(@added_to_db), ''), 
  updated_at = NULLIF(TRIM(@updated_at), '')
;



select * from eurepoc_dyadic;

select * from global_incident;
select* from eurepoc_attribution;
select* from eurepoc_receiver;
select* from eurepoc_dyadic;


-- Task 1 Find all incidents, dates and operation type occured from 2020
SELECT 
    g.incident_id,
    g.start_date,
    d.operation_type
FROM global_incident AS g
JOIN eurepoc_dyadic AS d
    ON g.incident_id = d.incident_id
WHERE YEAR(g.start_date) >= '2020-01-01'
ORDER BY g.start_date; 



--  Task 2 find the total number of "Ransomware" incidents occured from 2022 to 2024(including both years)
select * from eurepoc_dyadic;


SELECT 
     g.incident_id, g.start_date, d.operation_type
FROM global_incident g left join eurepoc_dyadic d on g.incident_id= d.incident_id
WHERE YEAR(g.start_date) BETWEEN 2022 AND 2024
  AND operation_type like  '%Ransomware%'
  order by incident_id;

  
  SELECT d.operation_type,
       COUNT(g.incident_id) AS total_ransomware_incidents
FROM global_incident g
LEFT JOIN eurepoc_dyadic d 
       ON g.incident_id = d.incident_id
WHERE g.start_date BETWEEN '2022-01-01' AND '2024-12-31'
  AND d.operation_type LIKE '%Ransomware%'
GROUP BY d.operation_type;

  
  
-- Task 3: Write a query that:
-- Retrieves each incident's ID and original operation type
-- Classifies incidents into three strategic categories using CASE:
-- 'Disruptive' = Ransomware or Wiper attacks
-- 'Espionage' = Data theft or Hack and leak
-- 'Other' = All remaining types
-- Returns all three columns for all incidents.

SELECT 
     distinct g.incident_id,
    d.operation_type AS original_operation_type,
    CASE
        WHEN d.operation_type IN ('Ransomware & data theft extortion', 'Prolonged system outage (e.g., wiper)') 
            THEN 'Disruptive'
        WHEN d.operation_type IN ('Data theft', 'Hack and leak') 
            THEN 'Espionage'
        ELSE 'Other'
    END AS strategic_category
FROM global_incident g left join eurepoc_dyadic d on g.incident_id= d.incident_id
ORDER BY g.incident_id;



SELECT 
    distinct incident_id,
    operation_type AS original_operation_type,
    CASE
        WHEN operation_type IN ('Ransomware & data theft extortion', 'Prolonged system outage (e.g., wiper)') 
            THEN 'Disruptive'
        WHEN operation_type IN ('Data theft', 'Hack and leak') 
            THEN 'Espionage'
        ELSE 'Other'
    END AS strategic_category
FROM eurepoc_dyadic
ORDER BY incident_id;

-- Task 4: Write a query that:
-- Identifies all incidents with missing or unknown initiator country attribution
-- Uses COALESCE to replace NULL values with 'Unknown'
-- Returns incident_id and the standardized origin_country column
-- Filters to show only rows where initiator_country was originally NULL or 'Unknown'

SELECT 
    incident_id,
    COALESCE(initiator_country, 'Unknown') AS origin_country
FROM global_incident
WHERE initiator_country IS NULL
   OR initiator_country = 'Unknown'
ORDER BY incident_id;


-- Task 5: Which countries experience the most cyber attacks with confirmed attributions?
-- Which country was attacked?
-- How many times was it attacked?
-- For each attack, how many different actors(organizations) were attributed?


SELECT 
  YEAR(incident_date) as year,
  operation_type,
  COUNT(*) as incident_count,
  COUNT(DISTINCT CASE WHEN number_attributions > 0 THEN 1 END) as attributed_count,
  ROUND(100.0 * COUNT(DISTINCT CASE WHEN number_attributions > 0 THEN 1 END) 
    / COUNT(*), 2) as attribution_rate_pct
FROM global_incident
WHERE incident_date >= '2015-01-01'
GROUP BY YEAR(incident_date), operation_type
ORDER BY year DESC, incident_count DESC;



-- Task 6: You're analyzing cyber attack trends over time. Analyse:
-- Are certain attack types becoming more common?
-- How well do we attribute attacks by type? (Do we know who's responsible?)
-- Which years had the most attacks?
-- Analyse yearly breakdown by attack type to allocate defense resources properly.

-- Aggregation by Year & Type
SELECT 
  YEAR(d.start_date) as year,
  d.operation_type,
  COUNT(*) as incident_count,
  COUNT(DISTINCT CASE WHEN d.number_attributions > 0 THEN 1 END) as attributed_count,
  ROUND(100.0 * COUNT(DISTINCT CASE WHEN d.number_attributions > 0 THEN 1 END) 
    / COUNT(*), 2) as attribution_rate_pct
FROM global_incident i
inner join eurepoc_dyadic d ON i.incident_id = d.incident_id
WHERE d.start_date >= '2015-01-01'
GROUP BY YEAR(d.start_date), d.operation_type
ORDER BY year DESC, incident_count DESC;





















