.class public abstract Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AbstractRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;,
        Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;,
        Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$VIEW_TYPES;
    }
.end annotation

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
.field protected footerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter<",
            "TT;>.FooterViewHolder;"
        }
    .end annotation
.end field

.field protected headerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter<",
            "TT;>.HeaderViewHolder;"
        }
    .end annotation
.end field

.field protected objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->objects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->footerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->footerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->headerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->headerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearData()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected abstract fillHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->objects:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->headerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->footerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 92
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->isFooterPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method protected getObjectAtPosition(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->objects:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public isFooterPosition(I)Z
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 86
    iget-object v2, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->footerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;

    if-eqz v2, :cond_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isFooterType(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHeaderPosition(I)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->headerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isHeaderType(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 141
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->isFooterPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->headerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 146
    :cond_0
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->getObjectAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->fillHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 127
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->isHeaderType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->headerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->isFooterType(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 130
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->footerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->getViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public removeFooterView()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->footerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$FooterViewHolder;

    .line 59
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeHeaderView()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->headerViewHolder:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$HeaderViewHolder;

    .line 54
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
