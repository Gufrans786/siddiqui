package nts;

public class C0369 extends Exception {

    public int f1933;

    public C0369(C0414 c0414) {
        String message = c0414.getMessage();
        Throwable cause = c0414;
        while (cause != null && (cause instanceof C0414)) {
            cause = cause.getCause();
        }
        super(message, cause);
        this.f1933 = c0414.f2136;
    }
}
