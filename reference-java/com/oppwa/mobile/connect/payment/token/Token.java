package com.oppwa.mobile.connect.payment.token;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.utils.Utils;
import org.json.JSONException;
import org.json.JSONObject;

public class Token implements Parcelable, Cloneable {
    public static final Parcelable.Creator<Token> CREATOR = new a();
    private final String a;
    private final String b;
    private Card c;
    private BankAccount d;
    private VirtualAccount e;

    class a implements Parcelable.Creator<Token> {
        a() {
        }

        @Override
        public Token createFromParcel(Parcel parcel) {
            return new Token(parcel, null);
        }

        @Override
        public Token[] newArray(int i) {
            return new Token[i];
        }
    }

    Token(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static Token createTokenFromJSON(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString("id");
        String string2 = jSONObject.getString("paymentBrand");
        if (jSONObject.has("card")) {
            return new Token(string, string2, Card.a(jSONObject.getJSONObject("card")));
        }
        if (jSONObject.has("bankAccount")) {
            return new Token(string, string2, BankAccount.a(jSONObject.getJSONObject("bankAccount")));
        }
        if (jSONObject.has("virtualAccount")) {
            return new Token(string, string2, VirtualAccount.a(jSONObject.getJSONObject("virtualAccount")));
        }
        return null;
    }

    public Token copyToken(Token token) {
        return new Token(token);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Token token = (Token) obj;
            if (Utils.compare(this.a, token.a) && Utils.compare(this.b, token.b) && Utils.compare(this.c, token.c) && Utils.compare(this.d, token.d) && Utils.compare(this.e, token.e)) {
                return true;
            }
        }
        return false;
    }

    public BankAccount getBankAccount() {
        return this.d;
    }

    public Card getCard() {
        return this.c;
    }

    public String getPaymentBrand() {
        return this.b;
    }

    public String getTokenId() {
        return this.a;
    }

    public VirtualAccount getVirtualAccount() {
        return this.e;
    }

    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
        Card card = this.c;
        int iHashCode2 = (iHashCode + (card != null ? card.hashCode() : 0)) * 31;
        BankAccount bankAccount = this.d;
        int iHashCode3 = (iHashCode2 + (bankAccount != null ? bankAccount.hashCode() : 0)) * 31;
        VirtualAccount virtualAccount = this.e;
        return iHashCode3 + (virtualAccount != null ? virtualAccount.hashCode() : 0);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeParcelable(this.c, i);
        parcel.writeParcelable(this.d, i);
        parcel.writeParcelable(this.e, i);
    }

    public Token(String str, String str2, Card card) {
        this.a = str;
        this.b = str2;
        this.c = card;
    }

    public Token(String str, String str2, BankAccount bankAccount) {
        this.a = str;
        this.b = str2;
        this.d = bankAccount;
    }

    public Token(String str, String str2, VirtualAccount virtualAccount) {
        this.a = str;
        this.b = str2;
        this.e = virtualAccount;
    }

    private Token(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = (Card) parcel.readParcelable(Card.class.getClassLoader());
        this.d = (BankAccount) parcel.readParcelable(BankAccount.class.getClassLoader());
        this.e = (VirtualAccount) parcel.readParcelable(VirtualAccount.class.getClassLoader());
    }

    private Token(Token token) {
        this.a = token.getTokenId();
        this.b = token.getPaymentBrand();
        this.c = token.getCard() != null ? new Card(token.getCard()) : null;
        this.d = token.getBankAccount() != null ? new BankAccount(token.getBankAccount()) : null;
        this.e = token.getVirtualAccount() != null ? new VirtualAccount(token.getVirtualAccount()) : null;
    }
}
