load data infile '[acs_root_dir]/packages/ref-unspsc/sql/common/unspsc_library.dat'
into table unspsc_library
replace
fields terminated by "," optionally enclosed by "'"
(unique_id,code,code_type,title,expired_use_key,latest_version)
