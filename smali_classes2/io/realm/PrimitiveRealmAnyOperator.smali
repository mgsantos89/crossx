.class abstract Lio/realm/PrimitiveRealmAnyOperator;
.super Lio/realm/RealmAnyOperator;
.source "RealmAnyOperator.java"


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lio/realm/RealmAny$Type;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/realm/RealmAny$Type;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 161
    invoke-direct {p0, p2}, Lio/realm/RealmAnyOperator;-><init>(Lio/realm/RealmAny$Type;)V

    .line 162
    iput-object p1, p0, Lio/realm/PrimitiveRealmAnyOperator;->value:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lio/realm/RealmAny$Type;Lio/realm/internal/core/NativeRealmAny;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/realm/RealmAny$Type;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lio/realm/internal/core/NativeRealmAny;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 166
    invoke-direct {p0, p2, p3}, Lio/realm/RealmAnyOperator;-><init>(Lio/realm/RealmAny$Type;Lio/realm/internal/core/NativeRealmAny;)V

    .line 167
    iput-object p1, p0, Lio/realm/PrimitiveRealmAnyOperator;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    check-cast p1, Lio/realm/PrimitiveRealmAnyOperator;

    .line 185
    iget-object v1, p0, Lio/realm/PrimitiveRealmAnyOperator;->value:Ljava/lang/Object;

    iget-object p1, p1, Lio/realm/PrimitiveRealmAnyOperator;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lio/realm/PrimitiveRealmAnyOperator;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 177
    iget-object v0, p0, Lio/realm/PrimitiveRealmAnyOperator;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lio/realm/PrimitiveRealmAnyOperator;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
