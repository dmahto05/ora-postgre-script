--Testing Script for reference (databaserookies.wordpress)

create table testimplicit (col1 smallint, col2 int, col3 bigint , col4 real , col5 double precision, col6 numeric , col7 text);

explain analyze select * from testimplicit where col1 OPERATOR(ora_operators.=) col7;
explain analyze select * from testimplicit where col2 OPERATOR(ora_operators.=) col7;
explain analyze select * from testimplicit where col3 OPERATOR(ora_operators.=) col7;
explain analyze select * from testimplicit where col4 OPERATOR(ora_operators.=) col7;
explain analyze select * from testimplicit where col5 OPERATOR(ora_operators.=) col7;
explain analyze select * from testimplicit where col6 OPERATOR(ora_operators.=) col7;

explain analyze select * from testimplicit where col7 OPERATOR(ora_operators.=) col1;
explain analyze select * from testimplicit where col7 OPERATOR(ora_operators.=) col2;
explain analyze select * from testimplicit where col7 OPERATOR(ora_operators.=) col3;
explain analyze select * from testimplicit where col7 OPERATOR(ora_operators.=) col4;
explain analyze select * from testimplicit where col7 OPERATOR(ora_operators.=) col5;
explain analyze select * from testimplicit where col7 OPERATOR(ora_operators.=) col6;

--Setting search path and retesting it.
set search_path to ora_operators,pg_catalog,"$user",public;

explain analyze select * from testimplicit where col1 = col7;
explain analyze select * from testimplicit where col2 = col7;
explain analyze select * from testimplicit where col3 = col7;
explain analyze select * from testimplicit where col4 = col7;
explain analyze select * from testimplicit where col5 = col7;
explain analyze select * from testimplicit where col6 = col7;

explain analyze select * from testimplicit where col7 = col1;
explain analyze select * from testimplicit where col7 = col2;
explain analyze select * from testimplicit where col7 = col3;
explain analyze select * from testimplicit where col7 = col4;
explain analyze select * from testimplicit where col7 = col5;
explain analyze select * from testimplicit where col7 = col6;
