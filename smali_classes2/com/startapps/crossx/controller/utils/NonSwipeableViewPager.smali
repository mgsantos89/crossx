.class public Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "NonSwipeableViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager$MyScroller;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;->setMyScroller()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;->setMyScroller()V

    return-void
.end method

.method private setMyScroller()V
    .locals 3

    .line 45
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    new-instance v1, Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager$MyScroller;

    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager$MyScroller;-><init>(Lcom/startapps/crossx/controller/utils/NonSwipeableViewPager;Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
