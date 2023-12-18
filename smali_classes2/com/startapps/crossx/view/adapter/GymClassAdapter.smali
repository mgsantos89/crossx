.class public final Lcom/startapps/crossx/view/adapter/GymClassAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GymClassAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/startapps/crossx/model/holder/GymClassViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0016J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\tJ\u001e\u0010\u0018\u001a\u00020\u000f2\u0016\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/startapps/crossx/view/adapter/GymClassAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/startapps/crossx/model/holder/GymClassViewHolder;",
        "()V",
        "mGymClassList",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/model/GymClassModel;",
        "Lkotlin/collections/ArrayList;",
        "mListener",
        "Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;",
        "mViewPool",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setOnItemClickListener",
        "listener",
        "updateGymClass",
        "gymClassList",
        "OnItemClickListener",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mGymClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;

.field private final mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->mGymClassList:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->mGymClassList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 12
    check-cast p1, Lcom/startapps/crossx/model/holder/GymClassViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->onBindViewHolder(Lcom/startapps/crossx/model/holder/GymClassViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/startapps/crossx/model/holder/GymClassViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->mGymClassList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mGymClassList[position]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/startapps/crossx/model/GymClassModel;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->mListener:Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;

    if-nez v1, :cond_0

    const-string v1, "mListener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->bind(Lcom/startapps/crossx/model/GymClassModel;Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;)V

    .line 29
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p1, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/startapps/crossx/R$id;->recycler_gym_class_coaches:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 30
    iget-object p1, p1, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->recycler_gym_class_coaches:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 32
    new-instance v0, Lcom/startapps/crossx/view/adapter/GymClassCoachAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->mGymClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/GymClassModel;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/GymClassModel;->getGym_class_coaches()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/startapps/crossx/view/adapter/GymClassCoachAdapter;-><init>(Ljava/util/ArrayList;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 33
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/startapps/crossx/model/holder/GymClassViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/startapps/crossx/model/holder/GymClassViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0108

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/startapps/crossx/model/holder/GymClassViewHolder;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/startapps/crossx/model/holder/GymClassViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setOnItemClickListener(Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->mListener:Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;

    return-void
.end method

.method public final updateGymClass(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gymClassList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->mGymClassList:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/GymClassAdapter;->notifyDataSetChanged()V

    return-void
.end method
