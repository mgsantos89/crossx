.class Lio/card/payment/Logo;
.super Ljava/lang/Object;
.source "Logo.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLogo:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private mUseCardIOLogo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/card/payment/Logo;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v1, 0x64

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    .line 32
    iput-object p1, p0, Lio/card/payment/Logo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 5

    .line 49
    iget-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0, v1}, Lio/card/payment/Logo;->loadLogo(Z)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    iget-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    div-float v2, p3, p2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    div-float p2, p3, v0

    goto :goto_0

    :cond_1
    mul-float p3, p2, v0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    div-float/2addr p3, v0

    .line 68
    iget-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    neg-float v3, p2

    neg-float v4, p3

    invoke-direct {v1, v3, v4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lio/card/payment/Logo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method loadLogo(Z)V
    .locals 1

    .line 36
    iget-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/card/payment/Logo;->mUseCardIOLogo:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 40
    :cond_0
    iput-boolean p1, p0, Lio/card/payment/Logo;->mUseCardIOLogo:Z

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lio/card/payment/Logo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lio/card/payment/R$drawable;->cio_card_io_logo:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lio/card/payment/Logo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lio/card/payment/R$drawable;->cio_paypal_logo:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method
