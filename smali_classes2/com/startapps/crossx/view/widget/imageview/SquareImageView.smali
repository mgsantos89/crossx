.class public Lcom/startapps/crossx/view/widget/imageview/SquareImageView;
.super Landroid/widget/ImageView;
.source "SquareImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 32
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/imageview/SquareImageView;->getMeasuredWidth()I

    move-result p1

    .line 33
    invoke-virtual {p0, p1, p1}, Lcom/startapps/crossx/view/widget/imageview/SquareImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    const v1, 0x7f080171

    .line 39
    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getDefaultOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 38
    invoke-virtual {v0, p1, p0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method
