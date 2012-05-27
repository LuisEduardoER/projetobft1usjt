-- Table: locacao

-- DROP TABLE locacao;

CREATE TABLE locacao
(
  codlocacao numeric(4,0) NOT NULL,
  cpf character varying(16) NOT NULL,
  passaporte character varying(20) NOT NULL,
  cnpj character varying(15) NOT NULL,
  codveiculo numeric(10,0) NOT NULL,
  agencialoc character varying(25) NOT NULL,
  dataloc character varying(10) NOT NULL,
  horaloc character varying(8) NOT NULL,
  datadev character varying(10) NOT NULL,
  agenciadev character varying(25) NOT NULL,
  kminicial character varying(7) NOT NULL,
  gps character varying(20) NOT NULL,
  bebe character varying(20) NOT NULL,
  motorista character varying(20) NOT NULL,
  tipotarifa character varying(15) NOT NULL,
  sitloc character varying(25) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE locacao
  OWNER TO postgres;
