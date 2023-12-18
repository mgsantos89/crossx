.class public Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentsHolder"
.end annotation


# instance fields
.field private avatar:Landroid/widget/ImageView;

.field private commentModel:Lcom/startapps/crossx/model/CommentModel;

.field private mComments:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private position:I

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/CommentsAdapter;Landroid/view/View;)V
    .locals 1

    .line 200
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    .line 201
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0221

    .line 203
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->avatar:Landroid/widget/ImageView;

    const p1, 0x7f0a0308

    .line 204
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->mName:Landroid/widget/TextView;

    const p1, 0x7f0a0105

    .line 205
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->mComments:Landroid/widget/TextView;

    const p1, 0x7f0a0107

    .line 206
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->mTime:Landroid/widget/TextView;

    .line 208
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->mName:Landroid/widget/TextView;

    const-string v0, "oswald-bold.ttf"

    invoke-virtual {p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->mComments:Landroid/widget/TextView;

    const-string v0, "oswald-regular.ttf"

    invoke-virtual {p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public getAvatar()Landroid/widget/ImageView;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->avatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getComments()Landroid/widget/TextView;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->mComments:Landroid/widget/TextView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTime()Landroid/widget/TextView;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 218
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/adapter/CommentsAdapter;)Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->commentModel:Lcom/startapps/crossx/model/CommentModel;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;->isOwnerComment(Lcom/startapps/crossx/model/CommentModel;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->notifyItemChanged(I)V

    .line 220
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->-$$Nest$fgetmOnSelectCommentListener(Lcom/startapps/crossx/view/adapter/CommentsAdapter;)Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->commentModel:Lcom/startapps/crossx/model/CommentModel;

    iget v1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->position:I

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;->onSelectComent(Lcom/startapps/crossx/model/CommentModel;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setActivated(Z)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    const p1, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setCommentModel(Lcom/startapps/crossx/model/CommentModel;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->commentModel:Lcom/startapps/crossx/model/CommentModel;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$CommentsHolder;->position:I

    return-void
.end method
