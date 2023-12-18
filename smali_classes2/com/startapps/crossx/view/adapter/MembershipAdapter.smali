.class public Lcom/startapps/crossx/view/adapter/MembershipAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MembershipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;,
        Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private membershipAdapterClickListener:Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;

.field private final membershipses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Membership;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/MembershipAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmembershipAdapterClickListener(Lcom/startapps/crossx/view/adapter/MembershipAdapter;)Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->membershipAdapterClickListener:Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Membership;",
            ">;",
            "Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->membershipses:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->membershipAdapterClickListener:Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;

    .line 29
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private getItem(I)Lcom/startapps/crossx/model/Membership;
    .locals 1

    if-ltz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->membershipses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Membership;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->membershipses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->onBindViewHolder(Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p2}, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->getItem(I)Lcom/startapps/crossx/model/Membership;

    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->format(Lcom/startapps/crossx/model/Membership;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;
    .locals 2

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0099

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/MembershipAdapter;Landroid/view/View;)V

    return-object p2
.end method
