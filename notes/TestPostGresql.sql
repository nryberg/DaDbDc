SELECT column_name as name, 
udt_catalog as database_name, 
udt_schema as schema, 
table_name as table, 
data_type as type, 
numeric_precision as precision, 
numeric_scale as scale, 
ordinal_position as ordinal, 
'192.168.0.100' as server
 FROM information_schema.columns 
WHERE table_schema = 'public'
