.class public Lcom/startapps/crossx/controller/utils/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zoomInAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 10

    .line 17
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/4 v0, 0x1

    .line 22
    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 23
    invoke-virtual {v9, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    int-to-long v0, p1

    .line 24
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    invoke-virtual {v9, p3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    int-to-long p1, p2

    .line 26
    invoke-virtual {v9, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 27
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static zoomInAnimation(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, v0, p2, p3}, Lcom/startapps/crossx/controller/utils/AnimationUtils;->zoomInAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
