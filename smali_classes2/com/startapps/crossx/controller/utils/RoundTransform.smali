.class public final Lcom/startapps/crossx/controller/utils/RoundTransform;
.super Ljava/lang/Object;
.source "RoundTransform.kt"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/startapps/crossx/controller/utils/RoundTransform;",
        "Lcom/squareup/picasso/Transformation;",
        "mRadius",
        "",
        "mMargin",
        "mColor",
        "mBorder",
        "",
        "(IIIF)V",
        "key",
        "",
        "transform",
        "Landroid/graphics/Bitmap;",
        "source",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mBorder:F

.field private final mColor:I

.field private final mMargin:I

.field private final mRadius:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/startapps/crossx/controller/utils/RoundTransform;-><init>(IIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mRadius:I

    iput p2, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mMargin:I

    iput p3, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mColor:I

    iput p4, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mBorder:F

    return-void
.end method

.method public synthetic constructor <init>(IIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/16 p1, 0x96

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, -0x1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/high16 p4, 0x40000000    # 2.0f

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/utils/RoundTransform;-><init>(IIIF)V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    const-string v0, "rounded"

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p1, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v2, Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 14
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mMargin:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mMargin:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mRadius:I

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eq p1, v2, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 21
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 22
    iget v4, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    iget v1, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mBorder:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v4, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mMargin:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v4, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mMargin:I

    sub-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v4, p0, Lcom/startapps/crossx/controller/utils/RoundTransform;->mRadius:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    invoke-virtual {v3, v1, p1, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-string p1, "output"

    .line 29
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
