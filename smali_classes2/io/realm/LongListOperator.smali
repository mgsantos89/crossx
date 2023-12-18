.class final Lio/realm/LongListOperator;
.super Lio/realm/ManagedListOperator;
.source "ManagedListOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/ManagedListOperator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 325
    invoke-direct {p0, p1, p2, p3}, Lio/realm/ManagedListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public appendValue(Ljava/lang/Object;)V
    .locals 3

    .line 376
    iget-object v0, p0, Lio/realm/LongListOperator;->osList:Lio/realm/internal/OsList;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->addLong(J)V

    return-void
.end method

.method protected checkValidValue(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 366
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    return-void

    .line 367
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.Long, java.lang.Integer, java.lang.Short, java.lang.Byte"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    .line 368
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forRealmModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 336
    iget-object v0, p0, Lio/realm/LongListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->getValue(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_0
    iget-object v0, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_1

    return-object p1

    .line 344
    :cond_1
    iget-object v0, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    .line 346
    iget-object v0, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 348
    :cond_2
    iget-object v0, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_3

    .line 350
    iget-object v0, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 352
    :cond_3
    iget-object v0, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_4

    .line 354
    iget-object v0, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 357
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected element type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/realm/LongListOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertValue(ILjava/lang/Object;)V
    .locals 3

    .line 381
    iget-object v0, p0, Lio/realm/LongListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/internal/OsList;->insertLong(JJ)V

    return-void
.end method

.method protected setValue(ILjava/lang/Object;)V
    .locals 3

    .line 386
    iget-object v0, p0, Lio/realm/LongListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/internal/OsList;->setLong(JJ)V

    return-void
.end method
