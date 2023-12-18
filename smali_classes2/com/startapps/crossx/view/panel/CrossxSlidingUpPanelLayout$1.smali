.class Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;
.super Ljava/lang/Object;
.source "CrossxSlidingUpPanelLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->slideUpDown(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

.field final synthetic val$lp:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic val$marginBottonValue:I

.field final synthetic val$state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;Landroid/widget/RelativeLayout$LayoutParams;Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

    iput-object p2, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->val$lp:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p3, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->val$state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    iput p4, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->val$marginBottonValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->val$lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->val$state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    sget-object v2, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->COLLAPSED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 86
    :cond_0
    iget v1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->val$marginBottonValue:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 88
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

    iget-object v0, v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->val$lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->val$marginBottonValue:I

    if-ne p1, v0, :cond_1

    .line 91
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

    iget-object v0, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->val$state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    iput-object v0, p1, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    .line 92
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->startAnimation:Z

    :cond_1
    return-void
.end method
