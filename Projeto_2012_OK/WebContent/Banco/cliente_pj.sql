-- Table: cliente_pj

-- DROP TABLE cliente_pj;

CREATE TABLE cliente_pj
(
  cnpj character varying(15) NOT NULL,
  nomefant character varying(40) NOT NULL,
  razaosoci character varying(40) NOT NULL,
  inscriest character varying(60) NOT NULL,
  loc character varying(20) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cliente_pj
  OWNER TO postgres;
