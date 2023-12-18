.class Lio/card/payment/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final TORCH_BLACK_LISTED:Z

.field private static sHardwareSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "DROID2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lio/card/payment/Util;->TORCH_BLACK_LISTED:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceSupportsTorch(Landroid/content/Context;)Z
    .locals 1

    .line 39
    sget-boolean v0, Lio/card/payment/Util;->TORCH_BLACK_LISTED:Z

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.flash"

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getNativeMemoryStats()Ljava/lang/String;
    .locals 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(free/alloc\'d/total)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hardwareSupportCheck()Z
    .locals 7

    .line 75
    invoke-static {}, Lio/card/payment/CardScanner;->processorSupported()Z

    move-result v0

    const-string v1, "card.io"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "- Processor type is not supported"

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 83
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    const-string v0, "- No camera found"

    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 96
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 97
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 101
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 102
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    const/16 v6, 0x280

    if-ne v5, v6, :cond_2

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_2

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-nez v3, :cond_4

    const-string v0, "- Camera resolution is insufficient"

    .line 109
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    :cond_4
    return v0
.end method

.method public static hardwareSupported()Z
    .locals 1

    .line 68
    sget-object v0, Lio/card/payment/Util;->sHardwareSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lio/card/payment/Util;->hardwareSupportCheck()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/card/payment/Util;->sHardwareSupported:Ljava/lang/Boolean;

    .line 71
    :cond_0
    sget-object v0, Lio/card/payment/Util;->sHardwareSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static hasConfigFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static logNativeMemoryStats()V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native memory stats: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/card/payment/Util;->getNativeMemoryStats()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMORY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static manifestHasConfigChange(Landroid/content/pm/ResolveInfo;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Didn\'t find %s in the AndroidManifest.xml"

    .line 48
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lio/card/payment/Util;->hasConfigFlag(II)Z

    move-result p0

    if-nez p0, :cond_1

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " requires attribute android:configChanges=\"orientation\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const-string p1, "card.io"

    .line 56
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method public static rectGivenCenter(Landroid/graphics/Point;II)Landroid/graphics/Rect;
    .locals 4

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/graphics/Point;->y:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v2, p2

    iget v3, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v3, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    add-int/2addr p0, p2

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static setupTextPaintStyle(Landroid/graphics/Paint;)V
    .locals 4

    const/4 v0, -0x1

    .line 131
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 134
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 135
    fill-array-data v0, :array_0

    const/16 v1, 0xc8

    .line 136
    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static writeCapturedCardImageIfNecessary(Landroid/content/Intent;Landroid/content/Intent;Lio/card/payment/OverlayView;)V
    .locals 2

    const-string v0, "io.card.payment.returnCardImage"

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {p2}, Lio/card/payment/OverlayView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 151
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    invoke-virtual {p2}, Lio/card/payment/OverlayView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {p2, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string p2, "io.card.payment.capturedCardImage"

    .line 153
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    return-void
.end method
