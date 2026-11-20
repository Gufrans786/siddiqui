package com.oppwa.mobile.connect.checkout.dialog;

import android.text.TextUtils;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutValidationResult;
import com.oppwa.mobile.connect.payment.bankaccount.BankAccountPaymentParams;
import com.oppwa.mobile.connect.payment.card.CardPaymentParams;
import com.oppwa.mobile.connect.payment.ikanooi.IkanoOiPaymentParams;
import com.oppwa.mobile.connect.utils.StringUtils;
import java.util.regex.Pattern;
import org.slf4j.Marker;

class s {
    private static Pattern a;

    class j implements InputLayout.c {
        j() {
        }

        @Override
        public int a(CharSequence charSequence) {
            if (TextUtils.isEmpty(charSequence)) {
                return R.string.checkout_error_email_invalid;
            }
            return -1;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return R.string.checkout_error_email_invalid;
        }
    }

    static class m {
        private final Pattern a;
        private final boolean b;
        private final int c;

        m(Pattern pattern, boolean z, int i) {
            this.a = pattern;
            this.b = z;
            this.c = i;
        }

        int a() {
            return this.c;
        }

        Pattern b() {
            return this.a;
        }

        boolean c() {
            return this.b;
        }
    }

    static class n {
        private final int a;
        private final int b;

        n(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        int a() {
            return this.b;
        }

        int b() {
            return this.a;
        }
    }

    static InputLayout.c b() {
        return new l();
    }

    static InputLayout.c c() {
        return new b();
    }

    static InputLayout.c d() {
        return new d();
    }

    static InputLayout.c e() {
        return new h();
    }

    static InputLayout.c f() {
        return new j();
    }

    static InputLayout.c g() {
        return new i();
    }

    public static Pattern h() {
        if (a == null) {
            a = Pattern.compile("[0-9]{2}/[0-9]{2,4}");
        }
        return a;
    }

    class c implements InputLayout.c {
        final int a;

        c(int i) {
            this.a = i;
        }

        @Override
        public int a(CharSequence charSequence) {
            if (TextUtils.isEmpty(charSequence)) {
                return a();
            }
            return -1;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return this.a;
        }
    }

    class d implements InputLayout.c {
        d() {
        }

        @Override
        public int a(CharSequence charSequence) {
            if (CardPaymentParams.isHolderValid(charSequence.toString())) {
                return -1;
            }
            return R.string.checkout_error_card_holder_invalid;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            if (iPaymentFormListener != null) {
                return iPaymentFormListener.onCardHolderValidate(str);
            }
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return R.string.checkout_error_card_holder_invalid;
        }
    }

    class k implements InputLayout.c {
        final String a;

        k(String str) {
            this.a = str;
        }

        @Override
        public int a(CharSequence charSequence) {
            if (IkanoOiPaymentParams.isNationalIdentifierValid(charSequence.toString(), this.a)) {
                return -1;
            }
            return a();
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return R.string.checkout_error_national_identifier_invalid;
        }
    }

    class l implements InputLayout.c {
        l() {
        }

        @Override
        public int a(CharSequence charSequence) {
            if (BankAccountPaymentParams.isHolderValid(charSequence.toString())) {
                return -1;
            }
            return a();
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return R.string.checkout_error_account_holder_invalid;
        }
    }

    static InputLayout.c a(x xVar, m mVar) {
        return new e(xVar, mVar);
    }

    static InputLayout.c b(int i2) {
        return new c(i2);
    }

    static InputLayout.c a(o oVar, n nVar) {
        return new f(nVar, oVar);
    }

    class i implements InputLayout.c {
        i() {
        }

        @Override
        public int a(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder(charSequence);
            StringUtils.replaceNonstandardDigits(sb);
            if (CardPaymentParams.isMobilePhoneNumberValid(sb.toString())) {
                return -1;
            }
            return R.string.checkout_error_mobile_phone_number_invalid;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return R.string.checkout_error_mobile_phone_number_invalid;
        }
    }

    static InputLayout.c a(int i2) {
        return new g(i2);
    }

    class g implements InputLayout.c {
        final int a;

        g(int i) {
            this.a = i;
        }

        @Override
        public int a(CharSequence charSequence) {
            int length = charSequence.length();
            int i = this.a;
            if (length != i) {
                return i == 4 ? R.string.checkout_error_security_code_invalid_amex : R.string.checkout_error_security_code_invalid;
            }
            return -1;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return R.string.checkout_error_security_code_invalid;
        }
    }

    static InputLayout.c a(String str) {
        return new k(str);
    }

    static InputLayout.c a(x xVar, boolean z) {
        return new a(xVar, z);
    }

    class h implements InputLayout.c {
        h() {
        }

        @Override
        public int a(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder(charSequence);
            StringUtils.removeSubstring(sb, Marker.ANY_NON_NULL_MARKER);
            int i = !CardPaymentParams.isCountryCodeValid(sb.toString()) ? R.string.checkout_helper_country_code : -1;
            StringUtils.wipeString(sb);
            return i;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return R.string.checkout_helper_country_code;
        }
    }

    class b implements InputLayout.c {
        b() {
        }

        @Override
        public int a(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder(charSequence);
            StringUtils.replaceNonstandardDigits(sb);
            String string = sb.toString();
            if (!BankAccountPaymentParams.isBicValid(string) && !BankAccountPaymentParams.isBankCodeValid(string)) {
                return a();
            }
            StringUtils.wipeString(sb);
            return -1;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return R.string.checkout_error_bic_bank_code_invalid;
        }
    }

    class e implements InputLayout.c {
        final x a;
        final m b;

        e(x xVar, m mVar) {
            this.a = xVar;
            this.b = mVar;
        }

        @Override
        public int a(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder(charSequence);
            StringUtils.removeSubstring(sb, this.a.a());
            StringUtils.replaceNonstandardDigits(sb);
            int iA = !a(sb.toString()) ? this.b.a() : -1;
            StringUtils.wipeString(sb);
            return iA;
        }

        private boolean a(String str) {
            if (CardPaymentParams.isNumberValid(str, this.b.c())) {
                return this.b.b() == null || this.b.b().matcher(str).find();
            }
            return false;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return this.b.a();
        }
    }

    class a implements InputLayout.c {
        final x a;
        final boolean b;

        a(x xVar, boolean z) {
            this.a = xVar;
            this.b = z;
        }

        @Override
        public int a(CharSequence charSequence) {
            int i;
            StringBuilder sb = new StringBuilder(charSequence);
            StringUtils.removeSubstring(sb, this.a.a());
            StringUtils.replaceNonstandardDigits(sb);
            String string = sb.toString();
            if (!this.b || BankAccountPaymentParams.isIbanValid(string) || BankAccountPaymentParams.isAccountNumberValid(string)) {
                i = (this.b || BankAccountPaymentParams.isIbanValid(string)) ? -1 : R.string.checkout_error_iban_invalid;
            } else {
                i = R.string.checkout_error_iban_account_number_invalid;
            }
            StringUtils.wipeString(sb);
            return i;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            if (this.b) {
                return R.string.checkout_error_iban_account_number_invalid;
            }
            return R.string.checkout_error_iban_invalid;
        }
    }

    class f implements InputLayout.c {
        final n a;
        final o b;

        f(n nVar, o oVar) {
            this.a = nVar;
            this.b = oVar;
        }

        @Override
        public int a(CharSequence charSequence) {
            String strReplaceNonstandardDigits = StringUtils.replaceNonstandardDigits(charSequence.toString());
            if (strReplaceNonstandardDigits == null || !s.h().matcher(strReplaceNonstandardDigits).matches()) {
                return this.a.b();
            }
            String strReplaceNonstandardDigits2 = StringUtils.replaceNonstandardDigits(this.b.a());
            String strReplaceNonstandardDigits3 = StringUtils.replaceNonstandardDigits(this.b.b());
            if (!CardPaymentParams.isExpiryMonthValid(strReplaceNonstandardDigits2) || !CardPaymentParams.isExpiryYearValid(strReplaceNonstandardDigits3)) {
                return this.a.b();
            }
            if (CardPaymentParams.isCardExpired(strReplaceNonstandardDigits2, strReplaceNonstandardDigits3)) {
                return this.a.a();
            }
            return -1;
        }

        @Override
        public CheckoutValidationResult a(String str, IPaymentFormListener iPaymentFormListener) {
            return CheckoutValidationResult.DEFAULT;
        }

        @Override
        public int a() {
            return this.a.b();
        }
    }
}
