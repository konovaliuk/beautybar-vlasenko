package finalproj.beautybar.manager;

public enum Parameter {

    EMAIL("email"),
    COMMENT("comment"),
    PAGENUMBER("pagenumber"),
    PAGENUMBERS("pagenumbers"),
    BOOKINGS("bookings"),
    TOTALPAGES("totalPages"),
    FEEDBACKS("feedbacks"),
    MARK("mark"),
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
    TIMESTAMP("timestamp"),
    WORKERLOGIN("workerlogin"),
    ROLEID("roleid");

    private String param;

    Parameter(String param) {
        this.param = param;
    }

    @Override
    public String toString() {
        return param;
    }
}
