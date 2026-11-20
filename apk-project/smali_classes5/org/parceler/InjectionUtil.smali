.class public final Lorg/parceler/InjectionUtil;
.super Ljava/lang/Object;
.source "InjectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;,
        Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;,
        Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;,
        Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;,
        Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;,
        Lorg/parceler/InjectionUtil$GenericType;
    }
.end annotation


# static fields
.field public static final CALL_CONSTRUCTOR_METHOD:Ljava/lang/String; = "callConstructor"

.field public static final CALL_METHOD_METHOD:Ljava/lang/String; = "callMethod"

.field public static final GET_FIELD_METHOD:Ljava/lang/String; = "getField"

.field public static final SET_FIELD_METHOD:Ljava/lang/String; = "setField"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 194
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 196
    new-instance p1, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;-><init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V

    invoke-static {p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 204
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "Exception during field injection"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    .line 202
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "PrivilegedActionException Exception during field injection"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    .line 200
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "Exception during method injection: NoSuchMethodException"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static callConstructor(Lorg/parceler/InjectionUtil$GenericType;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/parceler/InjectionUtil$GenericType<",
            "TT;>;[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 210
    const-class p0, Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lorg/parceler/InjectionUtil;->callConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static callMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 146
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 148
    new-instance p1, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p5, p3}, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V

    invoke-static {p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 156
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "Exception during field injection"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    .line 154
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "PrivilegedActionException Exception during field injection"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    .line 152
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "Exception during method injection: NoSuchFieldException"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static callMethod(Lorg/parceler/InjectionUtil$GenericType;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/parceler/InjectionUtil$GenericType<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 161
    const-class p0, Ljava/lang/Object;

    invoke-static/range {p0 .. p5}, Lorg/parceler/InjectionUtil;->callMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 56
    new-instance p1, Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lorg/parceler/InjectionUtil$GetFieldPrivilegedAction;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V

    invoke-static {p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "Exception during field injection"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    .line 63
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "PrivilegedActionException Exception during field injection"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    .line 60
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoSuchFieldException Exception during field injection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static getField(Lorg/parceler/InjectionUtil$GenericType;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/parceler/InjectionUtil$GenericType<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 70
    const-class p0, Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lorg/parceler/InjectionUtil;->getField(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 100
    new-instance v0, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 109
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "Exception during field injection"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    .line 107
    new-instance p1, Lorg/parceler/ParcelerRuntimeException;

    const-string p2, "PrivilegedActionException Exception during field injection"

    invoke-direct {p1, p2, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    .line 104
    new-instance p3, Lorg/parceler/ParcelerRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoSuchFieldException Exception during field injection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p3
.end method
