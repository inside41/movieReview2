--------------------------------------------------------
--  ������ ������ - ȭ����-10��-19-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NEWS_DETAILS
--------------------------------------------------------
DROP TABLE "SCOTT"."NEWS_DETAILS";
  CREATE TABLE "SCOTT"."NEWS_DETAILS" 
   (	"NEWS_ID" VARCHAR2(50 BYTE), 
	"NEWS_TITLE" VARCHAR2(200 BYTE), 
	"NEWS_WRITER" VARCHAR2(50 BYTE), 
	"NEWS_CONTENTS" CLOB, 
	"CREATE_DATE" DATE, 
	"CHANGE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("NEWS_CONTENTS") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
REM INSERTING into SCOTT.NEWS_DETAILS
SET DEFINE OFF;
Insert into SCOTT.NEWS_DETAILS (NEWS_ID,NEWS_TITLE,NEWS_WRITER,CREATE_DATE,CHANGE_DATE) values ('1','[�ó׸� ����Ʈ] ''����'' 2, �� �Ӹ��� �ݷ� �������� �Ķ����� ���ű�','�Ǳ���(Į���Ͻ�Ʈ)',to_date('21/10/18','RR/MM/DD'),to_date('21/10/18','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."TABLE1_PK" ON "SCOTT"."NEWS_DETAILS" ("NEWS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table NEWS_DETAILS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."NEWS_DETAILS" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("NEWS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."NEWS_DETAILS" MODIFY ("NEWS_ID" NOT NULL ENABLE);