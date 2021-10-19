--------------------------------------------------------
--  파일이 생성됨 - 화요일-10월-19-2021   
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
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('2','007 노 타임 투 다이','007 No Time To Die','https://youtu.be/PSpgQfVbMXA','007 노 타임 투 다이.jpg',to_date('21/09/29','RR/MM/DD'),'12세 관람가','액션','163',61,7.13,'가장 강력한 운명의 적과 마주하게된 제임스 본드의 마지막 미션이 시작된다','임의저장','유니버픽쳐스',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('3','베놈2:렛 데어 비 카니지','Venom: Let There Be Carnage','https://youtu.be/BryJA-Xp-Q4','베놈2렛 데어 비 카니지.jpg',to_date('21/10/13','RR/MM/DD'),'15세 관람가','액션/SF/스릴러','97',60,6.46,'베놈과 완벽한 파트너가 된 ‘에디 브록’(톰 하디) 앞에 ‘클리터스 캐서디’(우디 해럴슨)가 ‘카니지’로 등장, 앞으로 닥칠 대혼돈의 세상을 예고한다. 대혼돈의 시대가 시작되고, 악을 악으로 처단할 것인가?','마블','소니픽처스코리아',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('5','보이스','On the Line','https://youtu.be/Cj3ffb_92Mo','보이스.jpg',to_date('21/09/15','RR/MM/DD'),'15세 관람가','범죄/액션','109',62,8.45,'부산 건설현장 직원들을 상대로 걸려온 전화 한 통. 보이스피싱 전화로 인해 딸의 병원비부터 아파트 중도금까지, 당일 현장에서는 수많은 사람들이 목숨 같은 돈을 잃게 된다. 현장작업반장인 전직형사 서준(변요한)은 가족과 동료들의 돈 30억을 되찾기 위해 보이스... ','임의저장','CJ ENM',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('6','기적','Miracle','https://youtu.be/zGNxA4IDSyQ','기적.jpg',to_date('21/09/15','RR/MM/DD'),'12세 관람가','드라마','117',63,9.08,'오갈 수 있는 길은 기찻길밖에 없지만 정작 기차역은 없는 마을. 오늘부로 청와대에 딱 54번째 편지를 보낸 ‘준경’(박정민)의 목표는 단 하나! 바로 마을에 기차역이 생기는 것이다. 기차역은 어림없다는 원칙주의 기관사 아버지 ‘태윤’(이성민)의 반대에도 누나 ‘보경’','임의저장','롯데엔터테인먼트',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('7','십개월의 미래','Ten Months','https://youtu.be/7Xq8VyTnSFs','십개월의 미래.jpg',to_date('21/10/14','RR/MM/DD'),'12세 관람가','드라마','96',64,9.57,'만성 숙취를 의심하던 미래는 자신이 임신 10주라는 사실을 알고 당황한다. 아무 예고 없이 찾아온 변수 앞에서 갈팡질팡하는 사이, 가족과 연인, 국가는 각기 다른 방향을 제시하고 미래의 십개월은 빠른 속도로 흘러간다','임의저장','"그린나래미디어㈜',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('8','푸른 호수','Blue Bayou','https://youtu.be/D2BS65UBles','푸른호수.jpg',to_date('21/10/13','RR/MM/DD'),'12세 관람가','드라마','117',65,9.75,'내 이름은 안토니오 르블랑입니다.” 한국에서 태어나 미국으로 입양돼 안토니오 르블랑이라는 이름을 얻은 한 남자. 그에게는 누구보다 자신을 믿어주는 아내 캐시와 사랑스런 딸 제시, 그리고 곧 태어날 아기가 전부다. “나는 미국인도, 한국인도 아닙니다.” ','임의저장','유니버설 픽쳐스',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('9','용과 주근깨 공주','Belle : The Dragon and the Freckled Princes','https://youtu.be/OG7BAlA73W8','용과 주근깨 공주.jpg',to_date('21/09/29','RR/MM/DD'),'전체 관람가','애니메이션, 모험, 드라마','121',66,6.88,'아름다운 목소리를 지닌 스즈는 사고로 엄마를 잃은 후 더이상 노래할 수 없게 된다. 평범한 나날이 계속되던 중, 우연히 가상세계 U에 접속하게 된 스즈. 그는 그곳에서 신비로운 가수 벨로 다시 태어나 순식간에 세계적인 스타가 된다. 그런데 벨의 대규모 콘서트.','임의저장','와이드 릴리즈㈜',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('10','모가디슈','Escape from Mogadishu','https://youtu.be/3V-SWIEEM_M','모가디슈.jpg',to_date('21/07/28','RR/MM/DD'),'15세 관람가','액션/드라마','121',67,8.7,'내전으로 고립된 낯선 도시, 모가디슈 지금부터 우리의 목표는 오로지 생존이다! 대한민국이 UN가입을 위해 동분서주하던 시기 1991년 소말리아의 수도 모가디슈에서는 일촉즉발의 내전이 일어난다. 통신마저 끊긴 그 곳에 고립된 대한민국 대사관의 직원과 가족들은 …','임의저장','롯데엔터테인먼트',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into SCOTT.MOVIE_DETAILS (MOVIE_ID,KO_TITLE,EN_TITLE,TRAILER,POSTER,RELEASEDATE,RATING,GENRE,RUNTIME,FRESH_SCORE,AUDIENCE_SCORE,STORY,PRODUCER,DISTRIBUTOR,CREATE_DATE,CHANGE_DATE) values ('11','졸트','Jolt','https://youtu.be/3VudonK7Bl8','졸트.jpg',to_date('21/10/14','RR/MM/DD'),'15세 관람가','액션','91',68,9,'사랑하는 남친을 잃은 그녀. 더 이상의 통제는 필요 없다. 제대로 돌아버린 자. 그녀의 숨은 능력이 깨어난다! 백만 볼트 짜릿한 액션이 시작된다!','임의저장','(주)제이앤씨미디어그룹',to_date('21/10/15','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
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
