.class final Lio/realm/RealmAnyListOperator;
.super Lio/realm/ManagedListOperator;
.source "ManagedListOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/ManagedListOperator<",
        "Lio/realm/RealmAny;",
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
            "Lio/realm/RealmAny;",
            ">;)V"
        }
    .end annotation

    .line 796
    invoke-direct {p0, p1, p2, p3}, Lio/realm/ManagedListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public appendValue(Ljava/lang/Object;)V
    .locals 3

    .line 827
    check-cast p1, Lio/realm/RealmAny;

    .line 828
    iget-object v0, p0, Lio/realm/RealmAnyListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {v0, p1}, Lio/realm/CollectionUtils;->copyToRealmIfNeeded(Lio/realm/BaseRealm;Lio/realm/RealmAny;)Lio/realm/RealmAny;

    move-result-object p1

    .line 829
    iget-object v0, p0, Lio/realm/RealmAnyListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {p1}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->addRealmAny(J)V

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

    .line 817
    :cond_0
    instance-of v0, p1, Lio/realm/RealmAny;

    if-eqz v0, :cond_1

    return-void

    .line 818
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.util.RealmAny"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    .line 819
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

.method public get(I)Lio/realm/RealmAny;
    .locals 3

    .line 806
    iget-object v0, p0, Lio/realm/RealmAnyListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->getValue(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/internal/core/NativeRealmAny;

    if-nez p1, :cond_0

    .line 807
    new-instance p1, Lio/realm/internal/core/NativeRealmAny;

    invoke-direct {p1}, Lio/realm/internal/core/NativeRealmAny;-><init>()V

    .line 808
    :cond_0
    new-instance v0, Lio/realm/RealmAny;

    iget-object v1, p0, Lio/realm/RealmAnyListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {v1, p1}, Lio/realm/RealmAnyOperator;->fromNativeRealmAny(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmAnyOperator;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 793
    invoke-virtual {p0, p1}, Lio/realm/RealmAnyListOperator;->get(I)Lio/realm/RealmAny;

    move-result-object p1

    return-object p1
.end method

.method public insertValue(ILjava/lang/Object;)V
    .locals 3

    .line 834
    invoke-virtual {p0, p1}, Lio/realm/RealmAnyListOperator;->checkInsertIndex(I)V

    .line 836
    check-cast p2, Lio/realm/RealmAny;

    .line 837
    iget-object v0, p0, Lio/realm/RealmAnyListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {v0, p2}, Lio/realm/CollectionUtils;->copyToRealmIfNeeded(Lio/realm/BaseRealm;Lio/realm/RealmAny;)Lio/realm/RealmAny;

    move-result-object p2

    .line 838
    iget-object v0, p0, Lio/realm/RealmAnyListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {p2}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/internal/OsList;->insertRealmAny(JJ)V

    return-void
.end method

.method protected setValue(ILjava/lang/Object;)V
    .locals 3

    .line 843
    check-cast p2, Lio/realm/RealmAny;

    .line 844
    iget-object v0, p0, Lio/realm/RealmAnyListOperator;->realm:Lio/realm/BaseRealm;

    invoke-static {v0, p2}, Lio/realm/CollectionUtils;->copyToRealmIfNeeded(Lio/realm/BaseRealm;Lio/realm/RealmAny;)Lio/realm/RealmAny;

    move-result-object p2

    .line 845
    iget-object v0, p0, Lio/realm/RealmAnyListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {p2}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/internal/OsList;->setRealmAny(JJ)V

    return-void
.end method
