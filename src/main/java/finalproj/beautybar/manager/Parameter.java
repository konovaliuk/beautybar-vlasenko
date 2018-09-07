package finalproj.beautybar.manager;

public enum Parameter {

    EMAIL("email"),
    NAME("name"),
    PHONE("phone"),
    LOGIN("login"),
    PASSWORD("password"),
    CURRENTQUERY("currentquery"),
    DISABLEDDAYS("disabledDays"),
    DATE("date"),
    SERVICETYPE("servicetype"),
    SERVICES("services"),
    SERVICE("service"),
    MASTERS("masters"),
    MASTER("master"),
    USER("user"),
    FREETIMES("freetimes"),
    TIME("time"),
    TIMESTAMP("timestamp");

    private String param;

    Parameter(String param) {
        this.param = param;
    }

    @Override
    public String toString() {
        return param;
    }
}
