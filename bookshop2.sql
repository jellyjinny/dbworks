
-- book ���̺� �����
CREATE TABLE book(
    bookid     NUMBER PRIMARY KEY,
    bookname   VARCHAR2(40),
    publisher  VARCHAR2(40),
    price      NUMBER
);


-- customer ���̺� ����
CREATE TABLE customer(
    custid NUMBER PRIMARY KEY,
    name    VARCHAR2(40),
    address VARCHAR2(50),
    phone   VARCHAR2(20)
);


-- orders ���̺� ����
CREATE TABLE orders(
    orderid     NUMBER PRIMARY KEY,
    custid      NUMBER,
    bookid      NUMBER,
    saleprice   NUMBER,
    orderdate   DATE,
    FOREIGN KEY(custid) REFERENCES customer(custid),  --�ܷ�Ű
    FOREIGN KEY(bookid) REFERENCES book(bookid)       --�ܷ�Ű
)

-- book �ڷ� ����
INSERT INTO book VALUES (1, '�౸�� ����', '�½�����', 7000);
INSERT INTO book VALUES (2, '�౸�ƴ� ����', '������', 13000);
INSERT INTO book VALUES (3, '�౸�� ����', '���ѹ̵��', 22000);
INSERT INTO book VALUES (4, '���� ���̺�', '���ѹ̵��', 35000);
INSERT INTO book VALUES (5, '�ǰ� ����', '�½�����', 8000);
INSERT INTO book VALUES (6, '����� ����', '�½�����', 6000);
INSERT INTO book VALUES (7, '�߱��� �߾�', '�̻�̵��', 20000);
INSERT INTO book VALUES (8, '�߱��� ��Ź��', '�̻�̵��', 13000);
INSERT INTO book VALUES (9, '�ø��� �̾߱�', '�Ｚ��', 8000);
INSERT INTO book VALUES (10, 'Olypic Champions', 'Pearson', 13000);


--customer �ڷ����
INSERT INTO customer VALUES (1, '������', '���� ��ü����', '000-5000-0001');
INSERT INTO customer VALUES (2, '�迬��', '���ѹα� ����', '000-6000-0001');
INSERT INTO customer VALUES (3, '�Ȼ�', '���ѹα� ���ֱ�����', '000-7000-0001');
INSERT INTO customer VALUES (4, '������', 'ĳ���� �����', NULL);
INSERT INTO customer VALUES (5, '�����', '���� ��Ʈ��', '000-8000-0001');


-- orders �ڷ� ����
INSERT INTO orders VALUES (1, 1, 1, 6000, TO_DATE('2018-07-01', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (2, 1, 3, 21000, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (3, 2, 5, 8000, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (4, 3, 6, 6000, TO_DATE('2018-07-04', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (5, 4, 7, 20000, TO_DATE('2018-07-05', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (6, 1, 2, 12000, TO_DATE('2018-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (7, 4, 8, 13000, TO_DATE('2018-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (8, 3, 10, 12000, TO_DATE('2018-07-08', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (9, 2, 10, 7000, TO_DATE('2018-07-09', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (10, 3, 8, 13000, TO_DATE('2018-07-10', 'YYYY-MM-DD'));


--�ֹ� ���̺� 1���� å������ 6000 ���� 7000���� �����ϱ�
--UPDATE [���̺� �̸�] SET [��ĥ �κ� =] [���� �� ���� �Է�] WHERE [id];
UPDATE orders SET saleprice = 12000 WHERE orderid=8;


SELECT * FROM orders;




SELECT orderid, custid, bookid, saleprice,
    TO_CHAR(orderdate, 'YYYY-MM-DD') AS orderdate
FROM orders;



-- ��� ������ �̸��� ������ �˻��Ͻÿ�
SELECT bookname, price FROM book;

-- ��� ������ ������ȣ, �����̸�, ���ǻ�, ������ �˻��Ͻÿ�
SELECT bookid, bookname, publisher, price
FROM book;

-- ��� ���ǻ縦 �˻��Ͻÿ� (DISTINCT: �ߺ�����)
SELECT DISTINCT publisher FROM book;

-- ������ WHERE ���
-- ������ 20000�� �̸��� ������ �˻�
SELECT * 
FROM book
WHERE price < 20000;

-- ������ 10000�� �̻� 20000�� ������ ���� �˻�
-- ���� : BETWEEN ~ AND
SELECT * 
FROM book
WHERE price BETWEEN 10000 AND 20000;

SELECT * 
FROM book
WHERE price >= 10000 AND price <= 20000;

-- IN(A, B)
-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻�
SELECT * 
FROM book
WHERE publisher IN('�½�����', '���ѹ̵��');

SELECT * 
FROM book
WHERE publisher = '�½�����' OR publisher '���ѹ̵��';

-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� �ƴ� ������ �˻�
SELECT * 
FROM book
WHERE publisher NOT IN('�½�����', '���ѹ̵��');

-- LIKE ������ : %(�ۼ�Ʈ)��ȣ ���
-- '�౸�� ����'�� �Ⱓ�� ���ǻ� �˻�
SELECT * 
FROM book
WHERE bookname LIKE '�౸�� ����';


-- ���� �̸��� '�౸'�� ���Ե� ���ǻ� �˻�
-- �����ϴ� ���� : %�ܾ�, ������ ���� : �ܾ�%
SELECT bookname, publisher 
FROM book
WHERE bookname LIKE '%�౸%';

-- '�౸'�� ���� ���� �� ������ 20000�� �̻��� ���� �˻�
SELECT bookname, publisher, price
FROM book
WHERE bookname LIKE '%�౸%' AND price >= 20000;


--������ �̸� ������ �����Ͻÿ�
SELECT *
FROM book
ORDER BY bookname DESC;

--������ ������ ������������ �˻��ϰ�, ������ ������ ���ǻ縦 ������������ �˻�
SELECT *
FROM book
ORDER BY price DESC, publisher ASC;



-- book �ڷ� �˻�
SELECT * FROM book;