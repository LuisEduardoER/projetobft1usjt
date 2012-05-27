-- Table: cliente_pf

-- DROP TABLE cliente_pf;

CREATE TABLE cliente_pf
(
  cpf character varying(16) NOT NULL,
  rg character varying(12) NOT NULL,
  habilitacao character varying(11),
  categoriacnh character(2),
  estemiscnh character varying(20),
  dataemiscnh character varying(10),
  validadecnh character varying(10),
  datanasc character varying(10) NOT NULL,
  sexo character varying(10) NOT NULL,
  nome character varying(40) NOT NULL,
  loc character varying(20) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cliente_pf
  OWNER TO postgres;
