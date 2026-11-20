package com.mapbox.maps.extension.style.expressions.types;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.reactcommunity.rndatetimepicker.Common;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B3\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J7\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\t\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\t\"\u0004\b\u0010\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/mapbox/maps/extension/style/expressions/types/FormatSection;", "", "content", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "fontScale", "textFont", Common.TEXT_COLOR, "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "getContent", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getFontScale", "setFontScale", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)V", "getTextColor", "setTextColor", "getTextFont", "setTextFont", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FormatSection {
    private final Expression content;
    private Expression fontScale;
    private Expression textColor;
    private Expression textFont;

    public FormatSection(Expression content) {
        this(content, null, null, null, 14, null);
        Intrinsics.checkNotNullParameter(content, "content");
    }

    public FormatSection(Expression content, Expression expression) {
        this(content, expression, null, null, 12, null);
        Intrinsics.checkNotNullParameter(content, "content");
    }

    public FormatSection(Expression content, Expression expression, Expression expression2) {
        this(content, expression, expression2, null, 8, null);
        Intrinsics.checkNotNullParameter(content, "content");
    }

    public static FormatSection copy$default(FormatSection formatSection, Expression expression, Expression expression2, Expression expression3, Expression expression4, int i, Object obj) {
        if ((i & 1) != 0) {
            expression = formatSection.content;
        }
        if ((i & 2) != 0) {
            expression2 = formatSection.fontScale;
        }
        if ((i & 4) != 0) {
            expression3 = formatSection.textFont;
        }
        if ((i & 8) != 0) {
            expression4 = formatSection.textColor;
        }
        return formatSection.copy(expression, expression2, expression3, expression4);
    }

    public final Expression getContent() {
        return this.content;
    }

    public final Expression getFontScale() {
        return this.fontScale;
    }

    public final Expression getTextFont() {
        return this.textFont;
    }

    public final Expression getTextColor() {
        return this.textColor;
    }

    public final FormatSection copy(Expression content, Expression fontScale, Expression textFont, Expression textColor) {
        Intrinsics.checkNotNullParameter(content, "content");
        return new FormatSection(content, fontScale, textFont, textColor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FormatSection)) {
            return false;
        }
        FormatSection formatSection = (FormatSection) other;
        return Intrinsics.areEqual(this.content, formatSection.content) && Intrinsics.areEqual(this.fontScale, formatSection.fontScale) && Intrinsics.areEqual(this.textFont, formatSection.textFont) && Intrinsics.areEqual(this.textColor, formatSection.textColor);
    }

    public int hashCode() {
        int iHashCode = this.content.hashCode() * 31;
        Expression expression = this.fontScale;
        int iHashCode2 = (iHashCode + (expression == null ? 0 : expression.hashCode())) * 31;
        Expression expression2 = this.textFont;
        int iHashCode3 = (iHashCode2 + (expression2 == null ? 0 : expression2.hashCode())) * 31;
        Expression expression3 = this.textColor;
        return iHashCode3 + (expression3 != null ? expression3.hashCode() : 0);
    }

    public String toString() {
        return "FormatSection(content=" + this.content + ", fontScale=" + this.fontScale + ", textFont=" + this.textFont + ", textColor=" + this.textColor + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public FormatSection(Expression content, Expression expression, Expression expression2, Expression expression3) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.content = content;
        this.fontScale = expression;
        this.textFont = expression2;
        this.textColor = expression3;
    }

    public FormatSection(Expression expression, Expression expression2, Expression expression3, Expression expression4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(expression, (i & 2) != 0 ? null : expression2, (i & 4) != 0 ? null : expression3, (i & 8) != 0 ? null : expression4);
    }

    public final Expression getContent() {
        return this.content;
    }

    public final Expression getFontScale() {
        return this.fontScale;
    }

    public final void setFontScale(Expression expression) {
        this.fontScale = expression;
    }

    public final Expression getTextFont() {
        return this.textFont;
    }

    public final void setTextFont(Expression expression) {
        this.textFont = expression;
    }

    public final Expression getTextColor() {
        return this.textColor;
    }

    public final void setTextColor(Expression expression) {
        this.textColor = expression;
    }
}
