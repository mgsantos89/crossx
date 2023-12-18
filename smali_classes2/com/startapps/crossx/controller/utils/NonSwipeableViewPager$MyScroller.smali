.class public Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager$MyScroller;
.super Landroid/widget/Scroller;
.source "NonSwipeableViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;Landroid/content/Context;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager$MyScroller;->this$0:Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;

    .line 56
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p0, p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public startScroll(IIIII)V
    .locals 6

    const/16 v5, 0x15e

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 61
    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
