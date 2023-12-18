.class final Lbutterknife/ImmutableViewList;
.super Ljava/util/AbstractList;
.source "ImmutableViewList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final views:[Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 15
    iput-object p1, p0, Lbutterknife/ImmutableViewList;->views:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .line 27
    iget-object v0, p0, Lbutterknife/ImmutableViewList;->views:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public get(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lbutterknife/ImmutableViewList;->views:[Landroid/view/View;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lbutterknife/ImmutableViewList;->get(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 23
    iget-object v0, p0, Lbutterknife/ImmutableViewList;->views:[Landroid/view/View;

    array-length v0, v0

    return v0
.end method
