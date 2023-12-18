.class final Lio/realm/ObjectIdListOperator;
.super Lio/realm/ManagedListOperator;
.source "ManagedListOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/ManagedListOperator<",
        "Lorg/bson/types/ObjectId;",
        ">;"
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
            "Lorg/bson/types/ObjectId;",
            ">;)V"
        }
    .end annotation

    .line 696
    invoke-direct {p0, p1, p2, p3}, Lio/realm/ManagedListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public appendValue(Ljava/lang/Object;)V
    .locals 1

    .line 726
    iget-object v0, p0, Lio/realm/ObjectIdListOperator;->osList:Lio/realm/internal/OsList;

    check-cast p1, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsList;->addObjectId(Lorg/bson/types/ObjectId;)V

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

    .line 716
    :cond_0
    instance-of v0, p1, Lorg/bson/types/ObjectId;

    if-eqz v0, :cond_1

    return-void

    .line 717
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "org.bson.types.ObjectId"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    .line 718
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

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 693
    invoke-virtual {p0, p1}, Lio/realm/ObjectIdListOperator;->get(I)Lorg/bson/types/ObjectId;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/bson/types/ObjectId;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 707
    iget-object v0, p0, Lio/realm/ObjectIdListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->getValue(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bson/types/ObjectId;

    return-object p1
.end method

.method public insertValue(ILjava/lang/Object;)V
    .locals 3

    .line 731
    iget-object v0, p0, Lio/realm/ObjectIdListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    check-cast p2, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, v1, v2, p2}, Lio/realm/internal/OsList;->insertObjectId(JLorg/bson/types/ObjectId;)V

    return-void
.end method

.method protected setValue(ILjava/lang/Object;)V
    .locals 3

    .line 736
    iget-object v0, p0, Lio/realm/ObjectIdListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    check-cast p2, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, v1, v2, p2}, Lio/realm/internal/OsList;->setObjectId(JLorg/bson/types/ObjectId;)V

    return-void
.end method
