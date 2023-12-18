.class public Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;
.super Landroid/widget/RelativeLayout;
.source "CrossxSlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CrossxSlidingUpPanelLayout"

.field private static marginBotton:I = 0x14


# instance fields
.field protected mMainView:Landroid/view/View;

.field protected mSlideableView:Landroid/view/View;

.field protected startAnimation:Z

.field protected state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getMarginValue(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;)I
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sget v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->marginBotton:I

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public getPanelState()Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 46
    sget v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->marginBotton:I

    invoke-virtual {p0}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    mul-int/2addr v0, v1

    sput v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->marginBotton:I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->mMainView:Landroid/view/View;

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->mMainView:Landroid/view/View;

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    sget-object p2, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->COLLAPSED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->startAnimation:Z

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->getMarginValue(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 67
    iget-object p2, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setPanelState(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->state:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    return-void
.end method

.method public slideUpDown(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;)V
    .locals 5

    .line 73
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->getMarginValue(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;)I

    move-result v0

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->startAnimation:Z

    .line 76
    iget-object v1, p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    filled-new-array {v0}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 79
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    new-instance v3, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$1;-><init>(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;Landroid/widget/RelativeLayout$LayoutParams;Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
