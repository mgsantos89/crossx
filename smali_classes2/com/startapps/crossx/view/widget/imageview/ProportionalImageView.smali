.class public Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;
.super Landroid/widget/ImageView;
.source "ProportionalImageView.java"


# instance fields
.field private scaleHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->scaleHeight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->scaleHeight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->scaleHeight:F

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 34
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->getMeasuredWidth()I

    move-result p1

    int-to-float p2, p1

    .line 35
    iget v0, p0, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->scaleHeight:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    const v1, 0x7f080170

    .line 46
    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getDefaultOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 45
    invoke-virtual {v0, p1, p0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method

.method public setScaleHeight(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->scaleHeight:F

    return-void
.end method
