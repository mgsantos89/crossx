.class Lcom/startapps/crossx/view/widget/listview/EditingListView$1;
.super Ljava/lang/Object;
.source "EditingListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/listview/EditingListView;->animateRemoval(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/listview/EditingListView;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    iput-object p2, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    .line 325
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 327
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    .line 328
    :goto_0
    iget-object v5, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {v5}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 329
    iget-object v5, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {v5, v3}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, v0, v3

    .line 331
    iget-object v7, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {v7}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 333
    iget-object v8, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    iget-object v8, v8, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 334
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x96

    if-eqz v6, :cond_0

    .line 336
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v7, :cond_2

    .line 337
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 338
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 339
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    if-eqz v4, :cond_2

    .line 341
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/startapps/crossx/view/widget/listview/EditingListView$1$1;

    invoke-direct {v5, p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView$1$1;-><init>(Lcom/startapps/crossx/view/widget/listview/EditingListView$1;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 354
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v11, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {v11}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getDividerHeight()I

    move-result v11

    add-int/2addr v6, v11

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    neg-int v6, v6

    :goto_1
    add-int/2addr v6, v7

    .line 355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 356
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 357
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 358
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    if-eqz v4, :cond_2

    .line 360
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/startapps/crossx/view/widget/listview/EditingListView$1$2;

    invoke-direct {v5, p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView$1$2;-><init>(Lcom/startapps/crossx/view/widget/listview/EditingListView$1;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_2
    move v4, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    iget-object v0, v0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return v1
.end method
