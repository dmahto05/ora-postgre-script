create schema ora_operators;

--Adding code for implicit cast support on TEXT fields for numeric family columns or constants.
CREATE FUNCTION ora_operators.equal(real, text) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $1 = CAST($2 AS REAL);$CAST$;


CREATE FUNCTION ora_operators.equal(double precision, text) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $1 = CAST($2 AS DOUBLE PRECISION);$CAST$;


CREATE FUNCTION ora_operators.equal(smallint, text) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $1 = CAST($2 AS SMALLINT);$CAST$;


CREATE FUNCTION ora_operators.equal(integer, text) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $1 = CAST($2 AS INTEGER);$CAST$;



CREATE FUNCTION ora_operators.equal(bigint, text) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $1 = CAST($2 AS BIGINT);$CAST$;

CREATE FUNCTION ora_operators.equal(numeric, text) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $1 = CAST($2 AS NUMERIC);$CAST$;


CREATE FUNCTION ora_operators.equal(text, real) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $2 = CAST($1 AS REAL);$CAST$;


CREATE FUNCTION ora_operators.equal(text, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $2 = CAST($1 AS DOUBLE PRECISION);$CAST$;



CREATE FUNCTION ora_operators.equal(text, smallint) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $2 = CAST($1 AS SMALLINT);$CAST$;



CREATE FUNCTION ora_operators.equal(text, integer) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $2 = CAST($1 AS INTEGER);$CAST$;


CREATE FUNCTION ora_operators.equal(text, bigint) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $2 = CAST($1 AS BIGINT);$CAST$;



CREATE FUNCTION ora_operators.equal(text, numeric) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $CAST$SELECT $2 = CAST($1 AS NUMERIC);$CAST$;





CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = text,
    RIGHTARG = numeric,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);



CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = numeric,
    RIGHTARG = text,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);


CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = text,
    RIGHTARG = smallint,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);



CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = smallint,
    RIGHTARG = text,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);


CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = text,
    RIGHTARG = bigint,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);


CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = bigint,
    RIGHTARG = text,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);


CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = text,
    RIGHTARG = integer,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);


CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = integer,
    RIGHTARG = text,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);

CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = text,
    RIGHTARG = real,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);

CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = real,
    RIGHTARG = text,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);


CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = text,
    RIGHTARG = double precision,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);

CREATE OPERATOR ora_operators.= (
    FUNCTION = ora_operators.equal,
    LEFTARG = double precision,
    RIGHTARG = text,
    COMMUTATOR = OPERATOR(ora_operators.=),
    NEGATOR = OPERATOR(ora_operators.<>)
);
