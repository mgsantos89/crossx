.class Lio/card/payment/Preview;
.super Landroid/view/ViewGroup;
.source "Preview.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "Preview"


# instance fields
.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput p4, p0, Lio/card/payment/Preview;->mPreviewWidth:I

    .line 38
    iput p3, p0, Lio/card/payment/Preview;->mPreviewHeight:I

    .line 40
    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    .line 41
    invoke-virtual {p0, p2}, Lio/card/payment/Preview;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/card/payment/Preview;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lio/card/payment/Preview;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 92
    iget p1, p0, Lio/card/payment/Preview;->mPreviewHeight:I

    mul-int p2, p4, p1

    iget p3, p0, Lio/card/payment/Preview;->mPreviewWidth:I

    mul-int v0, p5, p3

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    mul-int/2addr p3, p5

    .line 93
    div-int/2addr p3, p1

    .line 94
    iget-object p1, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int p2, p4, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p2, v1, p4, p5}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0

    :cond_0
    mul-int/2addr p1, p4

    .line 97
    div-int/2addr p1, p3

    .line 98
    iget-object p2, p0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int p3, p5, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p2, v1, p3, p4, p5}, Landroid/view/SurfaceView;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lio/card/payment/Preview;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lio/card/payment/Preview;->resolveSize(II)I

    move-result p1

    .line 75
    invoke-virtual {p0}, Lio/card/payment/Preview;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lio/card/payment/Preview;->resolveSize(II)I

    move-result p2

    .line 77
    invoke-virtual {p0, p1, p2}, Lio/card/payment/Preview;->setMeasuredDimension(II)V

    return-void
.end method
