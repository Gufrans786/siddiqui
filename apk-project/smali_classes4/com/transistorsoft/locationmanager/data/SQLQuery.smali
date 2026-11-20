.class public Lcom/transistorsoft/locationmanager/data/SQLQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static FIELD_END:Ljava/lang/String; = "end"

.field public static FIELD_LIMIT:Ljava/lang/String; = "limit"

.field public static FIELD_ORDER:Ljava/lang/String; = "order"

.field public static FIELD_START:Ljava/lang/String; = "start"

.field public static ORDER_ASC:I = 0x1

.field public static ORDER_DESC:I = -0x1


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget v0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->ORDER_ASC:I

    iput v0, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->c:I

    return-void
.end method

.method public static create()Lcom/transistorsoft/locationmanager/data/SQLQuery;
    .locals 1

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/data/SQLQuery;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/data/SQLQuery;-><init>()V

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/transistorsoft/locationmanager/data/SQLQuery;
    .locals 3

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/data/SQLQuery;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/data/SQLQuery;-><init>()V

    .line 2
    sget-object v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_START:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_START:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->setStart(J)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    .line 3
    :cond_0
    sget-object v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_END:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_END:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->setEnd(J)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    .line 4
    :cond_1
    sget-object v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_ORDER:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_ORDER:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->setOrder(I)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    .line 5
    :cond_2
    sget-object v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_LIMIT:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_LIMIT:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->setLimit(I)Lcom/transistorsoft/locationmanager/data/SQLQuery;

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->b:J

    return-wide v0
.end method

.method public getLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->d:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->c:I

    return v0
.end method

.method public getSelection(Lch/qos/logback/classic/db/names/DefaultDBNameResolver;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-wide v4, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->a:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {p1, v4}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " >= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iget-wide v4, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->b:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {p1, v2}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " <= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->b:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public getStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->a:J

    return-wide v0
.end method

.method public setEnd(J)Lcom/transistorsoft/locationmanager/data/SQLQuery;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->b:J

    return-object p0
.end method

.method public setLimit(I)Lcom/transistorsoft/locationmanager/data/SQLQuery;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->d:I

    return-object p0
.end method

.method public setOrder(I)Lcom/transistorsoft/locationmanager/data/SQLQuery;
    .locals 2

    .line 1
    sget v0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->ORDER_ASC:I

    if-eq p1, v0, :cond_0

    sget v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->ORDER_DESC:I

    if-eq p1, v1, :cond_0

    move p1, v0

    .line 4
    :cond_0
    iput p1, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->c:I

    return-object p0
.end method

.method public setStart(J)Lcom/transistorsoft/locationmanager/data/SQLQuery;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->a:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LogQuery "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_END:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/transistorsoft/locationmanager/data/SQLQuery;->FIELD_LIMIT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/transistorsoft/locationmanager/data/SQLQuery;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
