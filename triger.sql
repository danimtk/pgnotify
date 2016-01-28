CREATE FUNCTION gateway_monitor() RETURNS trigger
AS ''
LANGUAGE C;

CREATE TRIGGER tbefore BEFORE INSERT OR UPDATE OR DELETE ON gateway 
FOR EACH ROW EXECUTE PROCEDURE gateway_monitor();

CREATE TRIGGER tafter AFTER INSERT OR UPDATE OR DELETE ON gateway
FOR EACH ROW EXECUTE PROCEDURE gateway_monitor();
