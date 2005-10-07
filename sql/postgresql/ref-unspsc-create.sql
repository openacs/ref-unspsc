-- packages/ref-unspsc/sql/postgresql/ref-unspsc-create.sql
--
-- @author torben@kappacorp.com
-- @creation-date 2005-09-27
-- @cvs-id $Id: 


-- This table includes a version reference so mapping handles multiple versions
-- since unspsc has multiple versions actively published and revisions are regularly released

create table unspsc_library (
    -- unspsc key, effective_id (or changed_id if the key is no longer used)
       unique_id integer 
        constraint unique_id_pk primary key,


    -- from unspsc.org FAQ:  The UNSPSC is a hierarchical classification with five levels.
    -- These levels allow analysis by drilling down or rolling up to analyze expenditures.
    -- Each level in the hierarchy has its own unique number.

    -- UNSPSC number code is 8 or 10 digits, a 'magic numbering system' in form AABBCCDD(EE) where
    -- AA are 2 digits that represent segment type
    --   where 'segment' is the logical aggregation of families for analytical purposes 
    -- BB are 2 digits that represent family type, 00 is unspecific
    --   where 'family' is a commonly recognized group of inter-related commodity categories 
    -- CC are 2 digits that represent class type, 00 is unspecific
    --   where 'class' is a group of commodities sharing common characteristics 
    -- DD are 2 digits that represent commodity type, 00 is unspecific
    --   where 'commodity' is a group of substitutable products or services 
    -- (EE) optional, are 2 digits that represent business_function type, 00 is unspecific, default is no digits included 
    --   where business_function is the function performed by an organization in support of the commodity
    -- extra digits added to the field definition for site variations
    code varchar(20),

    -- unspsc number code type: segment, family, class, commodity, business_function
    -- of increasing specificity (uniqueness)
    code_type varchar(20),

    -- contains package keys for internationalization #package-key.unspsc_key#
    title text not null,
   
    -- when unspsc expires a key, sometimes a reference is made to use another key 'effective_id'
    expired_use_key integer,

    -- contains last version used in.
    latest_version numeric not null

);

comment on table unspsc_library is '
    This is the combined library table from various versions of UNDP UNSPSC published codes.
';

-- add this table into the reference repository
select acs_reference__new (
    'UNSPSC_LIBRARY', -- table_name
    '2005-09-27',
    'UNSPSC CODE', -- source
    'http://www.unspsc.org', -- source_url
    now() -- effective_date
);


