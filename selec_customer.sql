
-- 모든 고객의 정도는 검색하시오
SELECT * 
FROM customer;

--고객번호가 3번인 고객의 이름을 검색하시오
SELECT name 
FROM customer
WHERE custid = 3;

-- 주소가 대한민국인 고객의 이름과 전화번호를 검색하시오.
SELECT name, phone 
FROM customer
WHERE address LIKE '%대한민국%';

-- 전화번호가 없는 고객의 이름과 주소를 검색하시오.
SELECT name, address
FROM customer
WHERE phone IS NULL;  
  -- IS NULL 연산자 : 없는자료
--WHERE phone IS NOT NULL; 
  --  IS NOT NULL 연산자 : NULL이 아닌 자료
  
--고객의 총 인원을 구하시오.
SELECT COUNT(*) AS 총고객수
FROM customer;

--책의 전체 수량을 구하시오.
SELECT COUNT(*) AS 총도서수
FROM book;