.class final Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;
.super Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;
.source "InjectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/InjectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetConstructorPrivilegedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction<",
        "TT;",
        "Ljava/lang/reflect/Constructor;",
        ">;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 218
    iput-object p2, p0, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;->args:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;-><init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1}, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;->run(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;->args:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
