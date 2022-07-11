--dex4 테이블 생성
CREATE TABLE ex4(
    userID VARCHAR2(10) PRIMARY KEY,   --기본키 선언
    passwd VARCHAR2(10) NOT NULL
);
--테이블 이름 변경
ALTER TABLE ex4 RENAME TO member;
   
--가입일 칼럼 추가
ALTER TABLE member ADD regDate DATE; 

--입사일 칼럼 추가
ALTER TABLE member ADD hireDate VARCHAR2(20);

--입사일 칼럼 수정
ALTER TABLE member MODIFY hireDate VARCHAR2(30);

--급여 칼럼 추가
ALTER TABLE member ADD salary NUMBER;

--데이터 삽입
INSERT INTO member (userId, passwd, regDate, salary, hireDate) VALUES ('cloud2023', 'abcd1234', SYSDATE, 1000000, '2022/06/09');

--데이터 수정 (UPDATE 테이블명 SET 칼럼명=값 WHERE 조건)
UPDATE member SET salary = 3000000 WHERE userId = 'sky2022';
UPDATE member SET salary = 1000000 WHERE userId = 'river2022';

--userID가 sky2022에 등록일과 급여 데이터 수정하기
UPDATE member SET regDate = SYSDATE, salary = 1000000 WHERE userID = 'sky2022';

--데이터 삭제 (전체 데이터 삭제)
DELETE FROM member;

--데이터 1개 삭제 (1개 데이터 삭제)
DELETE FROM member WHERE userID = 'river2022';

--데이터 조회
SELECT * FROM member;

--데이터 조회(정렬시키기 - 오름차순(기본설정))
SELECT * FROM member ORDER BY salary;  
--SELECT * FROM member ORDER BY salary DESC;   --내림차순 

--특정 조건을 조회(SELECT 칼럼명 FROM 테이블명 WHERE 조건)
SELECT regDate FROM member WHERE userId = 'river2022'; 

--테이블 복사
CREATE TABLE member2 AS
SELECT * FROM member;

--테이블 삭제
DROP TABLE member2;

--테이블의 구조
DESC member;

--커밋 수행
COMMIT;

--롤백 수행
ROLLBACK;





