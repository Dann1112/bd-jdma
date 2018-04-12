CREATE TABLE almacen
  (
    numero_almacen    INTEGER,
    ubicacion_almacen VARCHAR2(40),
    CONSTRAINT PK_n_a PRIMARY KEY (numero_almacen)
  );
CREATE OR REPLACE
PROCEDURE GUARDAR_ALMACEN
  (
    MY_NUMERO_ALMACEN    IN INTEGER,
    MY_UBICACION_ALMACEN IN VARCHAR2
  )
AS
BEGIN
  INSERT INTO ALMACEN VALUES
    (MY_NUMERO_ALMACEN, MY_UBICACION_ALMACEN
    );
END;
/
SELECT * FROM almacen;
CREATE OR REPLACE
PROCEDURE obtener_almacen(
    cur_almacen OUT sys_refcursor)
AS
BEGIN
  OPEN cur_almacen FOR SELECT * FROM almacen;
END;
/