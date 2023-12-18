.class public abstract Lcom/startapps/crossx/view/adapter/FasterCardAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FasterCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field protected listObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/FasterCardAdapter;->listObjects:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/FasterCardAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract fillHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FasterCardAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FasterCardAdapter;->listObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/FasterCardAdapter;->listObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract inflateView(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method protected abstract layoutResourceForItem(I)I
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterCardAdapter;->fillHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/FasterCardAdapter;->layoutResourceForItem(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterCardAdapter;->inflateView(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
