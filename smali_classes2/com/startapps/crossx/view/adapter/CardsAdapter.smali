.class public Lcom/startapps/crossx/view/adapter/CardsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CardsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;,
        Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private cardsAdapterClickListener:Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;

.field private context:Landroid/content/Context;

.field private final creditCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;"
        }
    .end annotation
.end field

.field private fromCards:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcardsAdapterClickListener(Lcom/startapps/crossx/view/adapter/CardsAdapter;)Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter;->cardsAdapterClickListener:Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfromCards(Lcom/startapps/crossx/view/adapter/CardsAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter;->fromCards:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckedItem(Lcom/startapps/crossx/view/adapter/CardsAdapter;Lcom/startapps/crossx/model/CreditCard;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->checkedItem(Lcom/startapps/crossx/model/CreditCard;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;",
            "Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter;->creditCards:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter;->cardsAdapterClickListener:Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;

    .line 33
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p4, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter;->fromCards:Ljava/lang/String;

    return-void
.end method

.method private checkedItem(Lcom/startapps/crossx/model/CreditCard;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter;->creditCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/CreditCard;

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 61
    iput-boolean v2, v1, Lcom/startapps/crossx/model/CreditCard;->cardDefault:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 63
    iput-boolean v2, v1, Lcom/startapps/crossx/model/CreditCard;->cardDefault:Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getItem(I)Lcom/startapps/crossx/model/CreditCard;
    .locals 1

    if-ltz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter;->creditCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/CreditCard;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter;->creditCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->onBindViewHolder(Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p2}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->getItem(I)Lcom/startapps/crossx/model/CreditCard;

    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->format(Lcom/startapps/crossx/model/CreditCard;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;
    .locals 2

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d009b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/CardsAdapter;Landroid/view/View;)V

    return-object p2
.end method
