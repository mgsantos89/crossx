.class public Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MembershipDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private financialInvoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoice;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;->financialInvoices:Ljava/util/List;

    return-void
.end method

.method private getItem(I)Lcom/startapps/crossx/model/FinancialInvoice;
    .locals 1

    if-ltz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;->financialInvoices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/FinancialInvoice;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;->financialInvoices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;->onBindViewHolder(Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p2}, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;->getItem(I)Lcom/startapps/crossx/model/FinancialInvoice;

    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;->format(Lcom/startapps/crossx/model/FinancialInvoice;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;
    .locals 2

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter$ViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/MembershipDetailsAdapter;Landroid/view/View;)V

    return-object p2
.end method
