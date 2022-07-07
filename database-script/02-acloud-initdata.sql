INSERT INTO codes(code_group_id, code, value, description, sort_order, use_yn)
SELECT 'AWS_REGION', 'us-east-1', 'N. Virginia', 'US East (N. Virginia)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'us-east-2', 'Ohio', 'US East (Ohio)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'us-west-1', 'N. California', 'US West (N. California)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'us-west-2', 'Oregon', 'US West (Oregon)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'ca-central-1', 'Central', 'Canada (Central)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'eu-central-1', 'Frankfurt', 'EU (Frankfurt)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'eu-west-1', 'Ireland', 'EU (Ireland)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'eu-west-2', 'London', 'EU (London)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'eu-west-3', 'Paris', 'EU (Paris)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'ap-northeast-1', 'Tokyo', 'Asia Pacific (Tokyo)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'ap-northeast-2', 'Seoul', 'Asia Pacific (Seoul)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'ap-northeast-3', 'Osaka-Local', 'Asia Pacific (Osaka-Local)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'ap-southeast-1', 'Singapore', 'Asia Pacific (Singapore)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'ap-southeast-2', 'Sydney', 'Asia Pacific (Sydney)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'ap-south-1', 'Mumbai', 'Asia Pacific (Mumbai)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AWS_REGION', 'sa-east-1', 'São Paulo', 'South America (São Paulo)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'northamerica-northeast1', 'Montréal', 'Montréal, Canada - (northamerica-northeast1-a, northamerica-northeast1-b, northamerica-northeast1-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'us-central1', 'Iowa', 'Council Bluffs, Iowa, USA - (us-central1-a, us-central1-b, us-central1-c, us-central1-f)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'us-west1', 'Oregon', 'The Dalles, Oregon, USA - (us-west1-a, us-west1-b, us-west1-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'us-west2', 'Los Angeles', 'Los Angeles, California, USA - (us-west2-a, us-west2-b, us-west2-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'us-east1', 'South Carolina', 'Moncks Corner, South Carolina, USA - (us-east1-b, us-east1-c, us-east1-d)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'us-east4', 'Northern Virginia', 'Ashburn, Virginia, USA - (us-east4-a, us-east4-b, us-east4-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'southamerica-east1', 'São Paulo', 'São Paulo, Brazil - (southamerica-east1-a, southamerica-east1-b, southamerica-east1-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'europe-north1', 'Hamina', 'Hamina, Finland - (europe-north1-a, europe-north1-c, europe-north1-b)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'europe-west1', 'Belgium', 'St. Ghislain, Belgium - (europe-west1-b, europe-west1-c, europe-west1-d)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'europe-west2', 'London', 'London, U.K. - (europe-west2-a, europe-west2-b, europe-west2-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'europe-west3', 'Frankfurt', 'Frankfurt, Germany - (europe-west3-a, europe-west3-b, europe-west3-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'europe-west4', 'Netherlands', 'Eemshaven, Netherlands - (europe-west4-a, europe-west4-b, europe-west4-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'europe-west6', 'Zürich', 'Zürich, Switzerland - (europe-west6-a, europe-west6-b, europe-west6-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'asia-south1', 'Mumbai', 'Mumbai, India - (asia-south1-a, asia-south1-b, asia-south1-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'asia-southeast1', 'Singapore', 'Jurong West, Singapore - (asia-southeast1-a, asia-southeast1-b)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'asia-east1', 'Taiwan', 'Changhua County, Taiwan - (asia-east2-a, asia-east2-b, asia-east2-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'asia-east2', 'Hong Kong', 'Hong Kong - (asia-east1-a, asia-east1-b, asia-east1-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'asia-northeast1', 'Tokyo', 'Tokyo, Japan - (asia-northeast1-a, asia-northeast1-b, asia-northeast1-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'asia-northeast2', 'Osaka', 'Osaka, Japan - (asia-northeast2-a, asia-northeast2-b, asia-northeast2-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'asia-northeast3', 'Seoul', 'Seoul, South Korea - (asia-northeast3-a, asia-northeast3-b, asia-northeast3-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'GCP_REGION', 'australia-southeast1', 'Sydney', 'Sydney, Australia - (australia-southeast1-a, australia-southeast1-b, australia-southeast1-c)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'westus', 'California', 'West US - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'westus2', 'Washington', 'West US 2 - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'centralus', 'Iowa', 'Central US - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'eastus', 'Virginia', 'East US - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'eastus2', 'Virginia2', 'East US 2 - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'northcentralus', 'Illinois', 'North Central US - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'southcentralus', 'Texas', 'South Central US - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'westcentralus', 'Wyoming', 'West Central US - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'canadacentral', 'Toronto', 'Canada Central - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'canadaeast', 'Quebec City', 'Canada East - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'brazilsouth', 'Sao Paulo State', 'Brazil South - region Americas', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'northeurope', 'Ireland', 'North Europe - region Europe', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'westeurope', 'Netherlands', 'West Europe - region Europe', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'uksouth', 'London', 'UK South - region Europe', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'ukwest', 'Cardiff', 'UK West - region Europe', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'eastasia', 'Hong Kong', 'East Asia - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'southeastasia', 'Singapore', 'Southeast Asia - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'japaneast', 'Tokyo, Saitama', 'Japan East - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'japanwest', 'Osaka', 'Japan West - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'australiaeast', 'New South Wales', 'Australia East - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'australiasoutheast', 'Victoria', 'Australia Southeast - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'centralindia', 'Pune', 'Central India - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'southindia', 'Chennai', 'South India - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'westindia', 'Mumbai', 'West India - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'koreasouth', 'Busan', 'Korea South - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'koreacentral', 'Seoul', 'Korea Central - region Asia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'chinanorth', 'Beijing', 'China North - region China', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'chinaeast', 'Shanghai', 'China East - region China', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'germanycentral', 'Frankfurt', 'Germany Central - region German', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'AZR_REGION', 'germanynortheast', 'Magdeburg', 'Germany Northeast - region German', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'cn-hongkong', 'Hong Kong', 'Hong Kong, Hong Kong', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'ap-southeast-1', 'Singapore', 'Singapore, Asia Pacific SE 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'ap-southeast-2', 'Sydney', 'Sydney, Asia Pacific SE 2', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'ap-southeast-3', 'Kuala Lumpur', 'Kuala Lumpur, Asia Pacific SE 3', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'ap-southeast-5', 'Jakarta', 'Jakarta, Asia Pacific SE 5', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'ap-south-1', 'Mumbai', 'Mumbai , Asia Pacific SOU 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'ap-northeast-1', 'Tokyo', 'Tokyo, Asia Pacific NE 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'us-west-1', 'Silicon Valley', 'Silicon Valley, US West 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'us-east-1', 'Virginia', 'Virginia, US East 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'eu-central-1', 'Frankfurt', 'Frankfurt, EU Central 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'eu-west-1', 'London', 'London, UK (London)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'me-east-1', 'Dubai', 'Dubai, Middle East 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'cn-qingdao', 'Qingdao', 'Qingdao, China North 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'cn-beijing', 'Beijing', 'Beijing, China North 2', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'cn-zhangjiakou', 'Zhangjiakou', 'Zhangjiakou, China North 3', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'cn-huhehaote', 'Hohhot', 'Hohhot, China North 5', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'cn-hangzhou', 'Hangzhou', 'Hangzhou, China East 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'cn-shanghai', 'Shanghai', 'Shanghai, China East 2', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'ABC_REGION', 'cn-shenzhen', 'Shenzhen', 'Shenzhen, China South 1', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-beijing-1', 'Beijiing Zone 1 (North China)', 'Beijiing Zone 1 (North China)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-beijing', 'Beijing', 'Beijing', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-shanghai', 'Shanghai (East China)', 'Shanghai (East China)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-guangzhou', 'Guangzhou (South China)', 'Guangzhou (South China)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-chengdu', 'Chengdu (Southwest China)', 'Chengdu (Southwest China)', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-singapore', 'Singapore', 'Singapore', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-hongkong', 'Hong Kong', 'Hong Kong', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'na-toronto', 'Toronto', 'Toronto', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'eu-frankfurt', 'Frankfurt', 'Frankfurt', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-mumbai', 'Mumbai', 'Mumbai', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-seoul', 'Seoul', 'Seoul', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'na-siliconvalley', 'Silicon Valley', 'Silicon Valley', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'na-ashburn', 'Virginia', 'Virginia', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-bangkok', 'Bangkok', 'Bangkok', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'eu-moscow', 'Moscow', 'Moscow', 0, 'Y' FROM DUAL
UNION ALL
SELECT 'TCC_REGION', 'ap-tokyo', 'Tokyo', 'Tokyo', 0, 'Y' FROM DUAL;