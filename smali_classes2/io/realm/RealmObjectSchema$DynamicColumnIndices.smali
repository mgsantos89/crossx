.class final Lio/realm/RealmObjectSchema$DynamicColumnIndices;
.super Lio/realm/internal/ColumnInfo;
.source "RealmObjectSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmObjectSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DynamicColumnIndices"
.end annotation


# instance fields
.field private final table:Lio/realm/internal/Table;


# direct methods
.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 768
    invoke-direct {p0, v0, v1}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 769
    iput-object p1, p0, Lio/realm/RealmObjectSchema$DynamicColumnIndices;->table:Lio/realm/internal/Table;

    return-void
.end method


# virtual methods
.method protected copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 789
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DynamicColumnIndices cannot be copied"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 0

    .line 795
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "DynamicColumnIndices cannot copy"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFrom(Lio/realm/internal/ColumnInfo;)V
    .locals 1

    .line 784
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DynamicColumnIndices cannot be copied"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnDetails(Ljava/lang/String;)Lio/realm/internal/ColumnInfo$ColumnDetails;
    .locals 1

    .line 779
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DynamicColumnIndices do not support \'getColumnDetails\'"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnKey(Ljava/lang/String;)J
    .locals 2

    .line 774
    iget-object v0, p0, Lio/realm/RealmObjectSchema$DynamicColumnIndices;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
