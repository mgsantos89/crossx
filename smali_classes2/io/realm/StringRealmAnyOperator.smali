.class final Lio/realm/StringRealmAnyOperator;
.super Lio/realm/PrimitiveRealmAnyOperator;
.source "RealmAnyOperator.java"


# direct methods
.method constructor <init>(Lio/realm/internal/core/NativeRealmAny;)V
    .locals 2

    .line 280
    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAny;->asString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/realm/RealmAny$Type;->STRING:Lio/realm/RealmAny$Type;

    invoke-direct {p0, v0, v1, p1}, Lio/realm/PrimitiveRealmAnyOperator;-><init>(Ljava/lang/Object;Lio/realm/RealmAny$Type;Lio/realm/internal/core/NativeRealmAny;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 276
    sget-object v0, Lio/realm/RealmAny$Type;->STRING:Lio/realm/RealmAny$Type;

    invoke-direct {p0, p1, v0}, Lio/realm/PrimitiveRealmAnyOperator;-><init>(Ljava/lang/Object;Lio/realm/RealmAny$Type;)V

    return-void
.end method


# virtual methods
.method protected createNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;
    .locals 2

    .line 285
    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    const-class v1, Ljava/lang/String;

    invoke-super {p0, v1}, Lio/realm/PrimitiveRealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
