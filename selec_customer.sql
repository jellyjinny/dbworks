
-- ��� ���� ������ �˻��Ͻÿ�
SELECT * 
FROM customer;

--����ȣ�� 3���� ���� �̸��� �˻��Ͻÿ�
SELECT name 
FROM customer
WHERE custid = 3;

-- �ּҰ� ���ѹα��� ���� �̸��� ��ȭ��ȣ�� �˻��Ͻÿ�.
SELECT name, phone 
FROM customer
WHERE address LIKE '%���ѹα�%';

-- ��ȭ��ȣ�� ���� ���� �̸��� �ּҸ� �˻��Ͻÿ�.
SELECT name, address
FROM customer
WHERE phone IS NULL;  
  -- IS NULL ������ : �����ڷ�
--WHERE phone IS NOT NULL; 
  --  IS NOT NULL ������ : NULL�� �ƴ� �ڷ�
  
--���� �� �ο��� ���Ͻÿ�.
SELECT COUNT(*) AS �Ѱ���
FROM customer;

--å�� ��ü ������ ���Ͻÿ�.
SELECT COUNT(*) AS �ѵ�����
FROM book;