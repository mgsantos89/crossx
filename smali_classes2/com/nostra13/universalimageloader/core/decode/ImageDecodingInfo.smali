.class public Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
.super Ljava/lang/Object;
.source "ImageDecodingInfo.java"


# instance fields
.field private final considerExifParams:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final extraForDownloader:Ljava/lang/Object;

.field private final imageKey:Ljava/lang/String;

.field private final imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final imageUri:Ljava/lang/String;

.field private final originalImageUri:Ljava/lang/String;

.field private final targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private final viewScaleType:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageKey:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageUri:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->originalImageUri:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 57
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 58
    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->viewScaleType:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 60
    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 61
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->extraForDownloader:Ljava/lang/Object;

    .line 63
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isConsiderExifParams()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->considerExifParams:Z

    .line 64
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 65
    invoke-virtual {p7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method private copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 69
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 70
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 71
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 72
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 74
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 75
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 76
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 77
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 78
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 79
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method private copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 86
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    return-void
.end method

.method private copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 91
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 92
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public getImageKey()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->imageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalImageUri()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->originalImageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-object v0
.end method

.method public getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->viewScaleType:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public shouldConsiderExifParams()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->considerExifParams:Z

    return v0
.end method
