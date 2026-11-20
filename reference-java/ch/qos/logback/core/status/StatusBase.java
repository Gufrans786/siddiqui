package ch.qos.logback.core.status;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class StatusBase implements Status {
    private static final List<Status> EMPTY_LIST = new ArrayList(0);
    List<Status> childrenList;
    long date;
    int level;
    final String message;
    final Object origin;
    Throwable throwable;

    StatusBase(int i, String str, Object obj) {
        this(i, str, obj, null);
    }

    StatusBase(int i, String str, Object obj, Throwable th) {
        this.level = i;
        this.message = str;
        this.origin = obj;
        this.throwable = th;
        this.date = System.currentTimeMillis();
    }

    @Override
    public synchronized void add(Status status) {
        try {
            if (status == null) {
                throw new NullPointerException("Null values are not valid Status.");
            }
            if (this.childrenList == null) {
                this.childrenList = new ArrayList();
            }
            this.childrenList.add(status);
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StatusBase statusBase = (StatusBase) obj;
        if (this.level != statusBase.level) {
            return false;
        }
        String str = this.message;
        String str2 = statusBase.message;
        if (str == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str.equals(str2)) {
            return false;
        }
        return true;
    }

    @Override
    public Long getDate() {
        return Long.valueOf(this.date);
    }

    @Override
    public synchronized int getEffectiveLevel() {
        int i;
        i = this.level;
        Iterator<Status> it = iterator();
        while (it.hasNext()) {
            int effectiveLevel = it.next().getEffectiveLevel();
            if (effectiveLevel > i) {
                i = effectiveLevel;
            }
        }
        return i;
    }

    @Override
    public int getLevel() {
        return this.level;
    }

    @Override
    public String getMessage() {
        return this.message;
    }

    @Override
    public Object getOrigin() {
        return this.origin;
    }

    @Override
    public Throwable getThrowable() {
        return this.throwable;
    }

    @Override
    public synchronized boolean hasChildren() {
        List<Status> list;
        list = this.childrenList;
        return list != null && list.size() > 0;
    }

    public int hashCode() {
        int i = (this.level + 31) * 31;
        String str = this.message;
        return i + (str == null ? 0 : str.hashCode());
    }

    @Override
    public synchronized Iterator<Status> iterator() {
        List<Status> list = this.childrenList;
        if (list != null) {
            return list.iterator();
        }
        return EMPTY_LIST.iterator();
    }

    @Override
    public synchronized boolean remove(Status status) {
        List<Status> list = this.childrenList;
        if (list == null) {
            return false;
        }
        return list.remove(status);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        int effectiveLevel = getEffectiveLevel();
        if (effectiveLevel == 0) {
            str = "INFO";
        } else {
            if (effectiveLevel != 1) {
                if (effectiveLevel == 2) {
                    str = "ERROR";
                }
                if (this.origin != null) {
                    sb.append(" in ");
                    sb.append(this.origin);
                    sb.append(" -");
                }
                sb.append(" ");
                sb.append(this.message);
                if (this.throwable != null) {
                    sb.append(" ");
                    sb.append(this.throwable);
                }
                return sb.toString();
            }
            str = "WARN";
        }
        sb.append(str);
        if (this.origin != null) {
            sb.append(" in ");
            sb.append(this.origin);
            sb.append(" -");
        }
        sb.append(" ");
        sb.append(this.message);
        if (this.throwable != null) {
            sb.append(" ");
            sb.append(this.throwable);
        }
        return sb.toString();
    }
}
