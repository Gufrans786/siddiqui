package ch.qos.logback.classic.db.names;

import java.util.Locale;

public class DefaultDBNameResolver implements DBNameResolver {
    @Override
    public <N extends Enum<?>> String getColumnName(N n2) {
        return n2.toString().toLowerCase(Locale.US);
    }

    @Override
    public <N extends Enum<?>> String getTableName(N n2) {
        return n2.toString().toLowerCase(Locale.US);
    }
}
