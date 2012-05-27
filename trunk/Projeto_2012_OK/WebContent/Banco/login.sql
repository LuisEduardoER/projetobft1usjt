-- Table: login

-- DROP TABLE login;

CREATE TABLE login
(
  codigo integer NOT NULL,
  login text NOT NULL,
  senha text,
  CONSTRAINT pk_login_id PRIMARY KEY (login )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE login
  OWNER TO postgres;
