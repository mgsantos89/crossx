.class Lcom/github/barteksc/pdfviewer/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;,
        Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;,
        Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;
    }
.end annotation


# instance fields
.field private animation:Landroid/animation/ValueAnimator;

.field private flinging:Z

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private scroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    .line 45
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 46
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    return-void
.end method

.method static synthetic access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->hideHandle()V

    return-void
.end method

.method private hideHandle()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hideDelayed()V

    :cond_0
    return-void
.end method


# virtual methods
.method computeFling()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 91
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    goto :goto_0

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    .line 94
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 95
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->hideHandle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startFlingAnimation(IIIIIIII)V
    .locals 11

    move-object v0, p0

    .line 83
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    .line 85
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    return-void
.end method

.method public startXAnimation(FF)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 51
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 52
    new-instance p1, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;

    invoke-direct {p1, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    .line 53
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 56
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startYAnimation(FF)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 62
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 63
    new-instance p1, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;

    invoke-direct {p1, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    .line 64
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 68
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startZoomAnimation(FFFF)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    .line 73
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 74
    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    new-instance p3, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;

    invoke-direct {p3, p0, p1, p2}, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;FF)V

    .line 76
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stopAll()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    return-void
.end method

.method public stopFling()V
    .locals 2

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    .line 109
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method
