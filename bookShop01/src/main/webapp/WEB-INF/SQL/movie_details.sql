--------------------------------------------------------
--  ������ ������ - ȭ����-10��-19-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MOVIE_DETAILS
--------------------------------------------------------
DROP TABLE "SCOTT"."MOVIE_DETAILS";
  CREATE TABLE "SCOTT"."MOVIE_DETAILS" 
   (	"MOVIE_ID" VARCHAR2(20 BYTE), 
	"KO_TITLE" VARCHAR2(100 BYTE), 
	"EN_TITLE" VARCHAR2(100 BYTE), 
	"TRAILER" VARCHAR2(200 BYTE), 
	"POSTER" VARCHAR2(200 BYTE), 
	"RELEASEDATE" DATE, 
	"RATING" VARCHAR2(50 BYTE), 
	"GENRE" VARCHAR2(50 BYTE), 
	"RUNTIME" VARCHAR2(20 BYTE), 
	"FRESH_SCORE" NUMBER, 
	"AUDIENCE_SCORE" NUMBER, 
	"STORY" VARCHAR2(1000 BYTE), 
	"PRODUCER" VARCHAR2(50 BYTE), 
	"DISTRIBUTOR" VARCHAR2(50 BYTE), 
	"CREATE_DATE" DATE DEFAULT sysdate, 
	"CHANGE_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.MOVIE_DETAILS
SET DEFINE OFF;
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('2','007 �� Ÿ�� �� ����','007 No Time To Die','https://youtu.be/PSpgQfVbMXA','007 �� Ÿ�� �� ����.jpg',to_date('21/09/29','RR/MM/DD'),'12�� ������','�׼�','163',61,7.13,'���� ������ ����� ���� �����ϰԵ� ���ӽ� ������ ������ �̼��� ���۵ȴ�','��������','���Ϲ����Ľ�',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('3','����2:�� ���� �� ī����','Venom: Let There Be Carnage','https://youtu.be/BryJA-Xp-Q4','����2�� ���� �� ī����.jpg',to_date('21/10/13','RR/MM/DD'),'15�� ������','�׼�/SF/������','97',60,6.46,'����� �Ϻ��� ��Ʈ�ʰ� �� ������ ��ϡ�(�� �ϵ�) �տ� ��Ŭ���ͽ� ĳ����(��� �ط���)�� ��ī�������� ����, ������ ��ĥ ��ȥ���� ������ �����Ѵ�. ��ȥ���� �ô밡 ���۵ǰ�, ���� ������ ó���� ���ΰ�?','����','�Ҵ���ó���ڸ���',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('5','���̽�','On the Line','https://youtu.be/Cj3ffb_92Mo','���̽�.jpg',to_date('21/09/15','RR/MM/DD'),'15�� ������','����/�׼�','109',62,8.45,'�λ� �Ǽ����� �������� ���� �ɷ��� ��ȭ �� ��. ���̽��ǽ� ��ȭ�� ���� ���� ��������� ����Ʈ �ߵ��ݱ���, ���� ���忡���� ������ ������� ��� ���� ���� �Ұ� �ȴ�. �����۾������� �������� ����(������)�� ������ ������� �� 30���� ��ã�� ���� ���̽�... ','��������','CJ ENM',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('6','����','Miracle','https://youtu.be/zGNxA4IDSyQ','����.jpg',to_date('21/09/15','RR/MM/DD'),'12�� ������','���','117',63,9.08,'���� �� �ִ� ���� ������ۿ� ������ ���� �������� ���� ����. ���úη� û�ʹ뿡 �� 54��° ������ ���� ���ذ桯(������)�� ��ǥ�� �� �ϳ�! �ٷ� ������ �������� ����� ���̴�. �������� ����ٴ� ��Ģ���� ����� �ƹ��� ��������(�̼���)�� �ݴ뿡�� ���� �����桯','��������','�Ե��������θ�Ʈ',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('7','�ʰ����� �̷�','Ten Months','https://youtu.be/7Xq8VyTnSFs','�ʰ����� �̷�.jpg',to_date('21/10/14','RR/MM/DD'),'12�� ������','���','96',64,9.57,'���� ���븦 �ǽ��ϴ� �̷��� �ڽ��� �ӽ� 10�ֶ�� ����� �˰� ��Ȳ�Ѵ�. �ƹ� ���� ���� ã�ƿ� ���� �տ��� ���������ϴ� ����, ������ ����, ������ ���� �ٸ� ������ �����ϰ� �̷��� �ʰ����� ���� �ӵ��� �귯����','��������','"�׸������̵���',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('8','Ǫ�� ȣ��','Blue Bayou','https://youtu.be/D2BS65UBles','Ǫ��ȣ��.jpg',to_date('21/10/13','RR/MM/DD'),'12�� ������','���','117',65,9.75,'�� �̸��� ����Ͽ� ������Դϴ�.�� �ѱ����� �¾ �̱����� �Ծ�� ����Ͽ� ������̶�� �̸��� ���� �� ����. �׿��Դ� �������� �ڽ��� �Ͼ��ִ� �Ƴ� ĳ�ÿ� ������� �� ����, �׸��� �� �¾ �ƱⰡ ���δ�. ������ �̱��ε�, �ѱ��ε� �ƴմϴ�.�� ','��������','���Ϲ��� ���Ľ�',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('9','��� �ֱٱ� ����','Belle : The Dragon and the Freckled Princes','https://youtu.be/OG7BAlA73W8','��� �ֱٱ� ����.jpg',to_date('21/09/29','RR/MM/DD'),'��ü ������','�ִϸ��̼�, ����, ���','121',66,6.88,'�Ƹ��ٿ� ��Ҹ��� ���� ����� ���� ������ ���� �� ���̻� �뷡�� �� ���� �ȴ�. ����� ������ ��ӵǴ� ��, �쿬�� ���󼼰� U�� �����ϰ� �� ����. �״� �װ����� �ź�ο� ���� ���� �ٽ� �¾ ���İ��� �������� ��Ÿ�� �ȴ�. �׷��� ���� ��Ը� �ܼ�Ʈ.','��������','���̵� �������',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('10','�𰡵�','Escape from Mogadishu','https://youtu.be/3V-SWIEEM_M','�𰡵�.jpg',to_date('21/07/28','RR/MM/DD'),'15�� ������','�׼�/���','121',67,8.7,'�������� ���� ���� ����, �𰡵� ���ݺ��� �츮�� ��ǥ�� ������ �����̴�! ���ѹα��� UN������ ���� ���м����ϴ� �ñ� 1991�� �Ҹ������� ���� �𰡵𽴿����� ��������� ������ �Ͼ��. ��Ÿ��� ���� �� ���� ���� ���ѹα� ������ ������ �������� ��','��������','�Ե��������θ�Ʈ',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('11','��Ʈ','Jolt','https://youtu.be/3VudonK7Bl8','��Ʈ.jpg',to_date('21/10/14','RR/MM/DD'),'15�� ������','�׼�','91',68,9,'����ϴ� ��ģ�� ���� �׳�. �� �̻��� ������ �ʿ� ����. ����� ���ƹ��� ��. �׳��� ���� �ɷ��� �����! �鸸 ��Ʈ ¥���� �׼��� ���۵ȴ�!','��������','(��)���̾ؾ��̵��׷�',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index MOVIE_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."MOVIE_DETAILS_PK" ON "SCOTT"."MOVIE_DETAILS" ("MOVIE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MOVIE_DETAILS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MOVIE_DETAILS" MODIFY ("CHANGE_DATE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MOVIE_DETAILS" MODIFY ("CREATE_DATE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MOVIE_DETAILS" ADD CONSTRAINT "MOVIE_DETAILS_PK" PRIMARY KEY ("MOVIE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."MOVIE_DETAILS" MODIFY ("MOVIE_ID" NOT NULL ENABLE);
