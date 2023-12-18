.class public abstract Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FasterArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field holders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 16
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;->holders:Ljava/util/Map;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected abstract fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end method

.method protected abstract getHolder(Landroid/view/View;)Ljava/lang/Object;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 37
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;->layoutResourceForItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 38
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;->getHolder(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;->holders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 45
    :goto_0
    invoke-virtual {p0, v0, p1, p3}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V

    return-object p2
.end method

.method protected abstract layoutResourceForItem()I
.end method

.method protected notify(Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
