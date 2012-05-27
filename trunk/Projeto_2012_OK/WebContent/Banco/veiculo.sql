-- Table: veiculo

-- DROP TABLE veiculo;

CREATE TABLE veiculo
(
  codigo numeric(10,0) NOT NULL,
  cor character varying(10) NOT NULL,
  chassi character varying(20) NOT NULL,
  placa character varying(7) NOT NULL,
  cidade character varying(15) NOT NULL,
  km numeric(7,0) NOT NULL,
  estado character varying(30) NOT NULL,
  modelo character varying(30) NOT NULL,
  tarifalockm character varying(10) NOT NULL,
  tarifaloclivre character varying(10) NOT NULL,
  grupo character varying(30) NOT NULL,
  fabricante character varying(30) NOT NULL,
  diaria character varying(25) NOT NULL,
  sitvei character varying(25) NOT NULL,
  CONSTRAINT pk_veiculo_id PRIMARY KEY (codigo )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE veiculo
  OWNER TO postgres;
