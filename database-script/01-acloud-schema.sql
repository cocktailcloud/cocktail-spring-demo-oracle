CREATE TABLE codes 
( 
    code_group_id   VARCHAR2(50)  NOT NULL,
    code            VARCHAR2(30),
    value           VARCHAR2(50),
    description     VARCHAR2(3000),
    sort_order      NUMBER(11),
    use_yn          VARCHAR2(1)
);

ALTER TABLE codes ADD CONSTRAINT code_pk PRIMARY KEY (code_group_id, code);