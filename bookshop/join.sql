-- join : 1�� �̻��� ���̺� ����
-- ������ ������ �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�.
SELECT *
FROM customer, orders
WHERE customer.custID = orders.custid;

-- ������ �̸��� ������ �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�.
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;

-- '�Ȼ�' ������ �ֹ������� �˻��Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid
AND customer.name = '�Ȼ�';

--�������� �ֹ��� ��� ������ �� �Ǹž��� ���ϰ� ������ �̸����� �����Ͻÿ�.
SELECT customer.name, SUM(saleprice) AS ���Ǹž�
FROM customer, orders
WHERE customer.custid = orders.custid
GROUP BY customer.name;
--ORDER BY customer.name;

-- ������ �̸��� �ֹ��� ������ �̸��� ������ �˻��Ͻÿ�.
SELECT customer.name, book.bookname, orders.saleprice 
FROM customer, orders, book
WHERE customer.custid = orders.custid 
AND book.bookid = orders.bookid;

-- ������ 2������ ������ �ֹ��� ������ �̸��� ������ �̸��� �˻��Ͻÿ�.
SELECT customer.name, book.bookname, orders.saleprice 
FROM customer, orders, book
WHERE customer.custid = orders.custid 
AND book.bookid = orders.bookid
AND book.price = 20000;


--�ܺ� ����(outer join) : ���� ������ ��Ȯ�� ��ġ���� �ʾƵ� ��� ����� ���
--������ �������� ���� ������ �����Ͽ�
-- ������ �̸��� ������ ������ ������ �ǸŰ����� ���Ͻÿ�

