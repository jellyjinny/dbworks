--book ���̺� ����
CREATE TABLE t_book AS
SELECT * FROM book;

SELECT * FROM t_book;

-- '�౸�� ����'�� 10000������ �����Ͻÿ�.
UPDATE t_book
SET price = 10000
WHERE bookid = 1;

-- '����� ����'�� ���ǻ� �̸��� '������'�� �����Ͻÿ�.
UPDATE t_book
SET publisher = '������'
WHERE bookid = 6;

--'�߱��� ��Ź��'�� ���ǻ� �̸��� '�Ｚ��'���� �����ϰ�, ������ 15000������ �����Ͻÿ�.
UPDATE t_book
SET publisher = '�Ｚ��',  price = 15000
WHERE bookid = 8;

 --DELETE FROM ���̺���;  (��ü����)
 --DELETE FROM ���̺���
 -- WHRER
 
 -- ������ȣ�� 5���� å�� �����Ͻÿ�.
DELETE FROM t_book
WHERE bookid = 5;
 
 -- '�������̺�' ������ �����Ͻÿ�.
DELETE FROM t_book
WHERE bookname = '���� ���̺�';
 
 
 
ROLLBACK; --Ʋ�Ⱦ commit �ϱ� ������ ����� �� �ִ� ���.



COMMIT;