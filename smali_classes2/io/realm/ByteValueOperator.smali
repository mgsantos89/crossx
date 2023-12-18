.class Lio/realm/ByteValueOperator;
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
        "Ljava/lang/Byte;",
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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 571
    const-class v1, Ljava/lang/Byte;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->BYTE:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    return-void
.end method


# virtual methods
.method processValue(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 0

    .line 576
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic processValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/realm/ByteValueOperator;->processValue(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
