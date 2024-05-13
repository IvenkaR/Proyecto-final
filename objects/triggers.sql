USE los_artesanos_;

-- TRIGGERS --

CREATE TRIGGER trg_after_insert 
AFTER INSERT ON tabla_venta
FOR EACH ROW 
INSERT INTO Auditoria(Accion, Usuario, Fecha_Hora, Observacion) 
VALUES ('INSERT', CURRENT_USER(), NOW(), 'Se insertó correctamente en tabla venta');

CREATE TRIGGER trg_before_delete
BEFORE DELETE ON tabla_venta
FOR EACH ROW
INSERT INTO Auditoria(Accion, Usuario, Fecha_Hora, Observacion, Campo_Anterior)
VALUES ('DELETE', CURRENT_USER(), NOW(), 'Se eliminó correctamente en la tabla venta', OLD.ID_Vta);

DELIMITER //

CREATE TRIGGER trg_after_update
AFTER INSERT ON tabla_boleta
FOR EACH ROW
BEGIN 
    DECLARE V_ID_Vta MEDIUMINT;
    DECLARE Total_vta DOUBLE;
    
    SET V_ID_Vta = NEW.ID_Vta;

    SET Total_vta = (SELECT SUM(Precio_Prod * NEW.Unidad_Prod) FROM tabla_productos WHERE ID_Prod = NEW.ID_Prod);

    IF Total_vta IS NOT NULL THEN
        INSERT INTO tabla_factura (Total_vta, ID_Vta) VALUES (Total_vta, V_ID_Vta);
    END IF;

    UPDATE tabla_productos 
    SET Stock_Prod = Stock_Prod - NEW.Unidad_Prod
    WHERE ID_Prod = NEW.ID_Prod;
END//

DELIMITER ;
