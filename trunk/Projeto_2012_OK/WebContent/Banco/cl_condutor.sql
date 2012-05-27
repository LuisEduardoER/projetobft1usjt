-- Table: cl_condutor

-- DROP TABLE cl_condutor;

CREATE TABLE cl_condutor
(
  cnpj character varying(15) NOT NULL,
  nomecond character varying(40) NOT NULL,
  cpfcond character varying(16) NOT NULL,
  rgcond character varying(12) NOT NULL,
  habilitacaocond character varying(11),
  categoriacond character(2),
  estadoemiscond character varying(20),
  dataemiscond character varying(10),
  validadecond character varying(10)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cl_condutor
  OWNER TO postgres;
