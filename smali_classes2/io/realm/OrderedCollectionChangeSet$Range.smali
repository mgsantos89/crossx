.class public Lio/realm/OrderedCollectionChangeSet$Range;
.super Ljava/lang/Object;
.source "OrderedCollectionChangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedCollectionChangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public final length:I

.field public final startIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Lio/realm/OrderedCollectionChangeSet$Range;->startIndex:I

    .line 142
    iput p2, p0, Lio/realm/OrderedCollectionChangeSet$Range;->length:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 147
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v1, p0, Lio/realm/OrderedCollectionChangeSet$Range;->startIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lio/realm/OrderedCollectionChangeSet$Range;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "startIndex: %d, length: %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
