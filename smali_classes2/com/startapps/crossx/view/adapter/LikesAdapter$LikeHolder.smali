.class public Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LikesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/LikesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LikeHolder"
.end annotation


# instance fields
.field private avatar:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/LikesAdapter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/LikesAdapter;Landroid/view/View;)V
    .locals 1

    .line 66
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->this$0:Lcom/startapps/crossx/view/adapter/LikesAdapter;

    .line 67
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0222

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->avatar:Landroid/widget/ImageView;

    const p1, 0x7f0a0309

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->mName:Landroid/widget/TextView;

    const p1, 0x7f0a0291

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->mTime:Landroid/widget/TextView;

    .line 73
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->mName:Landroid/widget/TextView;

    const-string v0, "oswald-bold.ttf"

    invoke-virtual {p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->mTime:Landroid/widget/TextView;

    const-string v0, "oswald-regular.ttf"

    invoke-virtual {p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getAvatar()Landroid/widget/ImageView;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->avatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTime()Landroid/widget/TextView;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->this$0:Lcom/startapps/crossx/view/adapter/LikesAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/LikesAdapter$LikeHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/adapter/LikesAdapter;->notifyItemChanged(I)V

    return-void
.end method
