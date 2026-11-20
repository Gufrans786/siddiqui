package sa.lg.android.locate.payment;

public class PaymentConstants {
    public static String HYPER_PAY_DEEP_LINK = "sa.lgandroidlocate";
    public static String PAYFORT_DEEP_LINK = "locate.go";
    public static String eventCompleted = "transactionComplete";

    public enum EventProperty {
        complete,
        error,
        canceled
    }

    public enum TransactionState {
        NEW,
        PENDING,
        COMPLETED
    }
}
