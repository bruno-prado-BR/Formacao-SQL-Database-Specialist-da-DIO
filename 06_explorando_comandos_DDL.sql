-- Explorando os comandos DDL

SELECT now() AS TIMESTAMP;

CREATE DATABASE manipulation;

USE manipulation;

CREATE TABLE bankAccounts (
	Id_account INT AUTO_INCREMENT PRIMARY KEY,
	Ag_num INT NOT NULL,
    Ac_num INT NOT NULL,
    Saldo FLOAT,
    CONSTRAINT indentificantion_account_constraint UNIQUE (Ag_num, Ac_num)
);

-- Inserindo uma conta
INSERT INTO bankAccounts(Ag_num, Ac_num, Saldo, LimitCredit) VALUES (0001, 123456, 0, 20000.00);

-- Criando novo atributo na tabela bankAccounts
ALTER TABLE bankAccounts ADD LimitCredit FLOAT NOT NULL DEFAULT 500.00;
DESC bankAccounts;

-- Criando atributo e-mail, e depois removendo o atributo
ALTER TABLE bankAccounts ADD Email VARCHAR(60);
ALTER TABLE bankAccounts DROP COLUMN Email;

-- O que podemos fazer também:
-- ALTER TABLE nome_tabela MODIFY COLUMN nome_atributo TIPO_DADO CONDIÇÃO;
-- ALTER TABLE nome_tablea ADD CONSTRAINT nome_constraint CONDIÇÕES;

CREATE TABLE bankClient(
	Id_client INT AUTO_INCREMENT,
	ClientAccount INT,
    CPF CHAR(11) NOT NULL,
    RG CHAR(9) NOT NULL,
    Nome VARCHAR(50) NOT NULL, 
    Endereco VARCHAR(100) NOT NULL,
    Renda_mensal FLOAT, 
    PRIMARY KEY (Id_client, ClientAccount),
    CONSTRAINT fk_account_client FOREIGN KEY (ClientAccount) REFERENCES bankAccounts(Id_account)
    ON UPDATE CASCADE
);

-- Adicionando atributo UFF em bankClient
ALTER TABLE bankClient ADD UFF CHAR(2) NOT NULL DEFAULT 'RJ';

-- Inserindo dados em bankClient, depois de inserir em bankAccounts
INSERT INTO bankClient(ClientAccount, CPF, RG, Nome, Endereco, Renda_mensal) VALUES(2, 12345678912, 123456789, 'Fulano', 'Rua de lá', 6500.6);
SELECT * FROM bankClient;

-- Modificando cliente Fulano, colocando UFF em MG
UPDATE bankClient SET UFF='MG' WHERE Nome='Fulano';

CREATE TABLE bankTransactions(
	Id_transaction INT AUTO_INCREMENT PRIMARY KEY,
    Ocorrencia DATETIME,
    Status_transaction VARCHAR(20),
    Valor_transferido FLOAT,
    Source_account INT,
    Destination_account INT,
    CONSTRAINT fk_source_transaction FOREIGN KEY (Source_account) REFERENCES bankAccounts(Id_account),
    CONSTRAINT fk_destionation_transaction FOREIGN KEY (Destination_account) REFERENCES bankAccounts(Id_account)
);