.class public Lcom/startapps/crossx/model/ImageProperties;
.super Lcom/startapps/crossx/model/AbstractModel;
.source "ImageProperties.java"


# instance fields
.field filesize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filesize"
    .end annotation
.end field

.field height:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field width:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/startapps/crossx/model/AbstractModel;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateProportion()F
    .locals 2

    .line 45
    iget v0, p0, Lcom/startapps/crossx/model/ImageProperties;->height:F

    iget v1, p0, Lcom/startapps/crossx/model/ImageProperties;->width:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getFilesize()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/startapps/crossx/model/ImageProperties;->filesize:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/startapps/crossx/model/ImageProperties;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 29
    iget v0, p0, Lcom/startapps/crossx/model/ImageProperties;->width:F

    return v0
.end method

.method public setFilesize(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/startapps/crossx/model/ImageProperties;->filesize:I

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/startapps/crossx/model/ImageProperties;->height:F

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/startapps/crossx/model/ImageProperties;->width:F

    return-void
.end method
