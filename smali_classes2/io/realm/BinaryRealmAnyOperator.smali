.class final Lio/realm/BinaryRealmAnyOperator;
.super Lio/realm/PrimitiveRealmAnyOperator;
.source "RealmAnyOperator.java"


# direct methods
.method constructor <init>(Lio/realm/internal/core/NativeRealmAny;)V
    .locals 2

    .line 295
    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAny;->asBinary()[B

    move-result-object v0

    sget-object v1, Lio/realm/RealmAny$Type;->BINARY:Lio/realm/RealmAny$Type;

    invoke-direct {p0, v0, v1, p1}, Lio/realm/PrimitiveRealmAnyOperator;-><init>(Ljava/lang/Object;Lio/realm/RealmAny$Type;Lio/realm/internal/core/NativeRealmAny;)V

    return-void
.end method

.method constructor <init>([B)V
    .locals 1

    .line 291
    sget-object v0, Lio/realm/RealmAny$Type;->BINARY:Lio/realm/RealmAny$Type;

    invoke-direct {p0, p1, v0}, Lio/realm/PrimitiveRealmAnyOperator;-><init>(Ljava/lang/Object;Lio/realm/RealmAny$Type;)V

    return-void
.end method


# virtual methods
.method protected createNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;
    .locals 2

    .line 300
    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    const-class v1, [B

    invoke-super {p0, v1}, Lio/realm/PrimitiveRealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    check-cast p1, Lio/realm/RealmAnyOperator;

    .line 308
    const-class v0, [B

    invoke-virtual {p0, v0}, Lio/realm/BinaryRealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v0}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
