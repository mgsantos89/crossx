.class Lio/realm/ShortValueOperator;
.super Lio/realm/GenericPrimitiveValueOperator;
.source "ManagedMapManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/GenericPrimitiveValueOperator<",
        "TK;",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 552
    const-class v1, Ljava/lang/Short;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->SHORT:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    return-void
.end method


# virtual methods
.method bridge synthetic processValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 547
    invoke-virtual {p0, p1}, Lio/realm/ShortValueOperator;->processValue(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method processValue(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 0

    .line 557
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method
