CREATE TABLE locacao
  (
  codLocacao           numeric    (4)     NOT NULL ,
  cpf                  varchar    (16)    NOT NULL ,
  passaporte           varchar    (20)    NOT NULL ,
  cnpj                 varchar    (15)    NOT NULL ,
  codVeiculo           numeric    (10)    NOT NULL ,
  agenciaLoc           varchar    (25)    NOT NULL ,
  dataLoc          	   varchar    (10)    NOT NULL ,
  horaLoc          	   varchar    (8)     NOT NULL ,
  dataDev    		   varchar    (10)    NOT NULL ,
  agenciaDev 		   varchar    (25)    NOT NULL ,
  kmInicial            varchar    (7)     NOT NULL ,
  gps                  varchar    (20)    NOT NULL ,
  bebe                 varchar    (20)    NOT NULL ,
  motorista            varchar    (20)    NOT NULL ,
  tipoTarifa           varchar    (15)    NOT NULL ,
  sitLoc               varchar    (25)    NOT NULL

);