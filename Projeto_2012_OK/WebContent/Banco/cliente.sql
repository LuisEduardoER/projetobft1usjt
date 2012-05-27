-- Table: cliente

-- DROP TABLE cliente;

CREATE TABLE cliente
(
  cpf character varying(16) NOT NULL,
  passaporte character varying(20) NOT NULL,
  cnpj character varying(15) NOT NULL,
  telefone character varying(11) NOT NULL,
  email character varying(40)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cliente
  OWNER TO postgres;
