/*20120615 TranNamTuan*/

/*Cau 2 Hien thi cau truc bang EMP*/
CREATE OR REPLACE PROCEDURE sp_CauTrucBangEMP_20120615
AS
    c1 SYS_REFCURSOR;
BEGIN
    OPEN c1 for
    SELECT column_name,nullable,data_type
    FROM ALL_TAB_COLS
    WHERE TABLE_NAME = 'EMP_20120615';

    DBMS_SQL.RETURN_RESULT(c1);
    END;
/
EXEC sp_CauTrucBangEMP_20120615;

/*Cau 9 Tim thong tin ve ten nhan vien, ngay gia nhap cong ty cua nhan vien phong so 20 */
CREATE OR REPLACE PROCEDURE sp_DanhSachNV20_20120615
AS
 c1 SYS_REFCURSOR;
BEGIN
OPEN c1 for 
SELECT  EMP.ENAME, to_char(EMP.hiredate,'month,DDSPTH YYYY') AS DATE_HIRE  FROM EMP_20120615 EMP WHERE EMP.DEPTNO = '20';
 DBMS_SQL.RETURN_RESULT(c1);
END;
/
EXEC sp_DanhSachNV20_20120615;





