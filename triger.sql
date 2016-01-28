CREATE FUNCTION passwd_monitor() RETURNS trigger
AS ''
LANGUAGE C;

CREATE TRIGGER tbefore BEFORE INSERT OR UPDATE OR DELETE ON passwd
FOR EACH ROW EXECUTE PROCEDURE passwd_monitor();

CREATE TRIGGER tafter AFTER INSERT OR UPDATE OR DELETE ON passwd
FOR EACH ROW EXECUTE PROCEDURE passwd_monitor();
