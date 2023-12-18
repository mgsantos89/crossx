.class public Lcom/github/barteksc/pdfviewer/PDFView;
.super Landroid/widget/RelativeLayout;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PDFView$Configurator;,
        Lcom/github/barteksc/pdfviewer/PDFView$State;,
        Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "PDFView"


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private annotationRendering:Z

.field private antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private bestQuality:Z

.field cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

.field private currentFilteredPage:I

.field private currentPage:I

.field private currentXOffset:F

.field private currentYOffset:F

.field private debugPaint:Landroid/graphics/Paint;

.field private decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

.field private defaultPage:I

.field private documentPageCount:I

.field private dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

.field private enableAntialiasing:Z

.field private filteredUserPageIndexes:[I

.field private filteredUserPages:[I

.field private invalidPageColor:I

.field private isScrollHandleInit:Z

.field private maxZoom:F

.field private midZoom:F

.field private minZoom:F

.field private onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onDrawPagesNums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

.field private onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

.field private onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

.field private onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

.field private onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

.field private onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

.field private optimalPageHeight:F

.field private optimalPageWidth:F

.field private originalUserPages:[I

.field private pageHeight:I

.field private pageWidth:I

.field private pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

.field private paint:Landroid/graphics/Paint;

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private recycled:Z

.field private renderDuringScale:Z

.field renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

.field private final renderingHandlerThread:Landroid/os/HandlerThread;

.field private scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private spacingPx:I

.field private state:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field private swipeVertical:Z

.field private zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 326
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 91
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 92
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 93
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    .line 104
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 176
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 181
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    const/4 p2, 0x1

    .line 186
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 191
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    const/4 v0, -0x1

    .line 261
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->invalidPageColor:I

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    .line 268
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    .line 279
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 289
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    .line 295
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    .line 303
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    .line 308
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    .line 309
    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 315
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    .line 320
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    .line 328
    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "PDF renderer"

    invoke-direct {p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    .line 330
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 334
    :cond_0
    new-instance p2, Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-direct {p2}, Lcom/github/barteksc/pdfviewer/CacheManager;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    .line 335
    new-instance p2, Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p2, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 336
    new-instance p2, Lcom/github/barteksc/pdfviewer/DragPinchManager;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p2, p0, v1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    .line 338
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    .line 339
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    .line 340
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 342
    new-instance p2, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {p2, p1}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 343
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnDrawListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSpacing(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setInvalidPageColor(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/github/barteksc/pdfviewer/PDFView;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V
    .locals 0

    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnDrawAllListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageChangeListener(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageScrollListener(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnRenderListener(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnTapListener(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageErrorListener(Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setDefaultPage(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    return-void
.end method

.method private calculateCenterOffsetForPage(I)F
    .locals 3

    .line 951
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    int-to-float v0, p1

    .line 952
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr p1, v2

    int-to-float p1, p1

    add-float/2addr v0, p1

    neg-float p1, v0

    .line 953
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    :goto_0
    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    return p1

    :cond_0
    int-to-float v0, p1

    .line 956
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr p1, v2

    int-to-float p1, p1

    add-float/2addr v0, p1

    neg-float p1, v0

    .line 957
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    goto :goto_0
.end method

.method private calculateOptimalWidthAndHeight()V
    .locals 5

    .line 967
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 971
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 972
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float v3, v0, v2

    float-to-double v3, v3

    .line 975
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    .line 978
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 981
    :goto_0
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 982
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    :cond_2
    :goto_1
    return-void
.end method

.method private calculatePageOffset(I)F
    .locals 2

    .line 467
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    int-to-float v0, p1

    .line 468
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result p1

    return p1

    :cond_0
    int-to-float v0, p1

    .line 470
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result p1

    return p1
.end method

.method private determineValidPageNumberFrom(I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    if-eqz v0, :cond_1

    .line 931
    array-length v1, v0

    if-lt p1, v1, :cond_2

    .line 932
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 935
    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    if-lt p1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_2
    return p1
.end method

.method private drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 12

    .line 775
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 776
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 785
    :cond_0
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 786
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v2

    move v4, v2

    move v2, v3

    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v2

    move v4, v3

    .line 790
    :goto_0
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 792
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 793
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 795
    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v6

    .line 796
    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v7

    .line 797
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v8

    .line 798
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v9, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v0, v9

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    .line 803
    new-instance v9, Landroid/graphics/RectF;

    float-to-int v10, v6

    int-to-float v10, v10

    float-to-int v11, v7

    int-to-float v11, v11

    add-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v7, v0

    float-to-int v0, v7

    int-to-float v0, v0

    invoke-direct {v9, v10, v11, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 808
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, v2

    .line 809
    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr v6, v4

    .line 810
    iget v7, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_5

    iget v7, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v7

    cmpg-float v0, v0, v3

    if-lez v0, :cond_5

    iget v0, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v6

    .line 811
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-gez v0, :cond_5

    iget v0, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v0

    cmpg-float v0, v6, v3

    if-gtz v0, :cond_2

    goto :goto_2

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 818
    sget-boolean v0, Lcom/github/barteksc/pdfviewer/util/Constants;->DEBUG_MODE:Z

    if-eqz v0, :cond_4

    .line 819
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_3

    const/high16 p2, -0x10000

    goto :goto_1

    :cond_3
    const p2, -0xffff01

    :goto_1
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 820
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    neg-float p2, v2

    neg-float v0, v4

    .line 824
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_5
    :goto_2
    neg-float p2, v2

    neg-float v0, v4

    .line 812
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 5

    if-eqz p3, :cond_1

    .line 752
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 754
    invoke-direct {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v0

    goto :goto_0

    .line 757
    :cond_0
    invoke-direct {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 760
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 761
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    .line 762
    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    .line 763
    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v3

    .line 761
    invoke-interface {p3, p1, v2, v3, p2}, Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;->onLayerDrawn(Landroid/graphics/Canvas;FFI)V

    neg-float p2, v1

    neg-float p3, v0

    .line 766
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 347
    invoke-direct/range {v0 .. v5}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V

    return-void
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V
    .locals 6

    .line 352
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_2

    if-eqz p5, :cond_0

    .line 358
    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    .line 359
    invoke-static {p5}, Lcom/github/barteksc/pdfviewer/util/ArrayUtils;->deleteDuplicatedPages([I)[I

    move-result-object p5

    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    .line 360
    iget-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    invoke-static {p5}, Lcom/github/barteksc/pdfviewer/util/ArrayUtils;->calculateIndexesInDuplicateArray([I)[I

    move-result-object p5

    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    .line 363
    :cond_0
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    .line 364
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    .line 367
    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 368
    aget p3, p3, p4

    move v5, p3

    goto :goto_0

    :cond_1
    move v5, p4

    .line 371
    :goto_0
    iput-boolean p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 373
    new-instance p3, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;-><init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;I)V

    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    .line 374
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, p4, [Ljava/lang/Void;

    invoke-virtual {p3, p1, p2}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 353
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Don\'t call load on a PDF View without recycling it first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setDefaultPage(I)V
    .locals 0

    .line 1239
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    return-void
.end method

.method private setInvalidPageColor(I)V
    .locals 0

    .line 1342
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->invalidPageColor:I

    return-void
.end method

.method private setOnDrawAllListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-void
.end method

.method private setOnDrawListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-void
.end method

.method private setOnPageChangeListener(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-void
.end method

.method private setOnPageErrorListener(Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

    return-void
.end method

.method private setOnPageScrollListener(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-void
.end method

.method private setOnRenderListener(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    return-void
.end method

.method private setOnTapListener(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    return-void
.end method

.method private setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-void
.end method

.method private setSpacing(I)V
    .locals 1

    .line 1338
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    return-void
.end method


# virtual methods
.method calculateDocLength()F
    .locals 3

    .line 475
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    .line 476
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_0

    int-to-float v1, v0

    .line 477
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    return v0

    :cond_0
    int-to-float v1, v0

    .line 479
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 3

    .line 630
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    .line 631
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return v2

    :cond_0
    if-lez p1, :cond_3

    .line 633
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    return v2

    :cond_1
    if-gez p1, :cond_2

    .line 637
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return v2

    :cond_2
    if-lez p1, :cond_3

    .line 639
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 3

    .line 648
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    .line 649
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return v2

    :cond_0
    if-lez p1, :cond_3

    .line 651
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    return v2

    :cond_1
    if-gez p1, :cond_2

    .line 655
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return v2

    :cond_2
    if-lez p1, :cond_3

    .line 657
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 1

    .line 600
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 601
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->computeFling()V

    return-void
.end method

.method public doRenderDuringScale()Z
    .locals 1

    .line 1350
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    return v0
.end method

.method public documentFitsView()Z
    .locals 5

    .line 1175
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1176
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v1, v2

    .line 1177
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    int-to-float v0, v0

    .line 1178
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v3, v4

    :cond_0
    return v3

    :cond_1
    int-to-float v0, v0

    .line 1180
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method public enableAnnotationRendering(Z)V
    .locals 0

    .line 1314
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return-void
.end method

.method public enableAntialiasing(Z)V
    .locals 0

    .line 1330
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    return-void
.end method

.method public enableDoubletap(Z)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enableDoubletap(Z)V

    return-void
.end method

.method public enableRenderDuringScale(Z)V
    .locals 0

    .line 1322
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    return-void
.end method

.method public enableSwipe(Z)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->setSwipeEnabled(Z)V

    return-void
.end method

.method public fitToWidth()V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_0

    .line 1195
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    const-string v1, "Cannot fit, document not rendered yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1198
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    const/4 v0, 0x0

    .line 1199
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(F)V

    return-void
.end method

.method public fitToWidth(I)V
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_0

    .line 1186
    sget-object p1, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    const-string v0, "Cannot fit, document not rendered yet"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->fitToWidth()V

    .line 1190
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(I)V

    return-void
.end method

.method public fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1371
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/AssetSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/AssetSource;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromBytes([B)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1395
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;-><init>([B)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromFile(Ljava/io/File;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1378
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/FileSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/FileSource;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromSource(Lcom/github/barteksc/pdfviewer/source/DocumentSource;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1406
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromStream(Ljava/io/InputStream;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1399
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromUri(Landroid/net/Uri;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1385
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/UriSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/UriSource;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 1203
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    return v0
.end method

.method public getCurrentXOffset()F
    .locals 1

    .line 1207
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    return v0
.end method

.method public getCurrentYOffset()F
    .locals 1

    .line 1211
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    return v0
.end method

.method public getDocumentMeta()Lcom/shockwave/pdfium/PdfDocument$Meta;
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1357
    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->getDocumentMeta(Lcom/shockwave/pdfium/PdfDocument;)Lcom/shockwave/pdfium/PdfDocument$Meta;

    move-result-object v0

    return-object v0
.end method

.method getDocumentPageCount()I
    .locals 1

    .line 1123
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    return v0
.end method

.method getFilteredUserPageIndexes()[I
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    return-object v0
.end method

.method getFilteredUserPages()[I
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    return-object v0
.end method

.method public getInvalidPageColor()I
    .locals 1

    .line 1346
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->invalidPageColor:I

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 1290
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return v0
.end method

.method public getMidZoom()F
    .locals 1

    .line 1282
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 1274
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    return v0
.end method

.method getOnPageChangeListener()Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-object v0
.end method

.method getOnPageScrollListener()Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-object v0
.end method

.method getOnRenderListener()Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    return-object v0
.end method

.method getOnTapListener()Lcom/github/barteksc/pdfviewer/listener/OnTapListener;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    return-object v0
.end method

.method public getOptimalPageHeight()F
    .locals 1

    .line 1235
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    return v0
.end method

.method public getOptimalPageWidth()F
    .locals 1

    .line 1231
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    return v0
.end method

.method getOriginalUserPages()[I
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    return-object v0
.end method

.method public getPageAtPositionOffset(F)I
    .locals 2

    .line 1269
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 1270
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public getPageCount()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    if-eqz v0, :cond_0

    .line 489
    array-length v0, v0

    return v0

    .line 491
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    return v0
.end method

.method public getPositionOffset()F
    .locals 3

    .line 440
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 441
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    goto :goto_0

    .line 443
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 445
    invoke-static {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->limit(FFF)F

    move-result v0

    return v0
.end method

.method getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    return-object v0
.end method

.method getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object v0
.end method

.method getSpacingPx()I
    .locals 1

    .line 1334
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    return v0
.end method

.method public getTableOfContents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 1361
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1364
    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->getTableOfContents(Lcom/shockwave/pdfium/PdfDocument;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .line 1223
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return v0
.end method

.method public isAnnotationRendering()Z
    .locals 1

    .line 1318
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return v0
.end method

.method public isAntialiasing()Z
    .locals 1

    .line 1326
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    return v0
.end method

.method public isBestQuality()Z
    .locals 1

    .line 1302
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    return v0
.end method

.method public isSwipeVertical()Z
    .locals 1

    .line 1306
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return v0
.end method

.method public isZooming()Z
    .locals 2

    .line 1227
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(IZ)V

    return-void
.end method

.method public jumpTo(IZ)V
    .locals 2

    .line 383
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v0

    neg-float v0, v0

    .line 384
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 386
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p2, v1, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startYAnimation(FF)V

    goto :goto_0

    .line 388
    :cond_0
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p0, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 392
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p2, v1, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startXAnimation(FF)V

    goto :goto_0

    .line 394
    :cond_2
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 397
    :goto_0
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    return-void
.end method

.method loadComplete(Lcom/shockwave/pdfium/PdfDocument;II)V
    .locals 1

    .line 850
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 851
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v0, p1}, Lcom/shockwave/pdfium/PdfiumCore;->getPageCount(Lcom/shockwave/pdfium/PdfDocument;)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    .line 853
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    .line 855
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageWidth:I

    .line 856
    iput p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageHeight:I

    .line 857
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateOptimalWidthAndHeight()V

    .line 859
    new-instance p2, Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-direct {p2, p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    .line 861
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p2

    if-nez p2, :cond_0

    .line 862
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 864
    :cond_0
    new-instance p2, Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {p2, p3, p0, v0, p1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;-><init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    .line 866
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->start()V

    .line 868
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz p1, :cond_1

    .line 869
    invoke-interface {p1, p0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setupLayout(Lcom/github/barteksc/pdfviewer/PDFView;)V

    const/4 p1, 0x1

    .line 870
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 873
    :cond_1
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    if-eqz p1, :cond_2

    .line 874
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    invoke-interface {p1, p2}, Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;->loadComplete(I)V

    .line 877
    :cond_2
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(IZ)V

    return-void
.end method

.method loadError(Ljava/lang/Throwable;)V
    .locals 2

    .line 881
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 882
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 883
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    .line 884
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    if-eqz v0, :cond_0

    .line 885
    invoke-interface {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "PDFView"

    const-string v1, "load pdf error"

    .line 887
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method loadPageByOffset()V
    .locals 4

    .line 1085
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1090
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    div-int v1, v0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1091
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 1092
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 1093
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    add-float/2addr v3, v0

    .line 1094
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    goto :goto_0

    .line 1096
    :cond_1
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 1097
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    add-float/2addr v3, v0

    .line 1098
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 1101
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-ltz v0, :cond_2

    .line 1103
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1104
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    goto :goto_1

    .line 1106
    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    :goto_1
    return-void
.end method

.method public loadPages()V
    .locals 2

    .line 834
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 839
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    .line 840
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->makeANewSet()V

    .line 842
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadPages()V

    .line 843
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    :cond_1
    :goto_0
    return-void
.end method

.method public moveRelativeTo(FF)V
    .locals 1

    .line 1134
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 987
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    return-void
.end method

.method public moveTo(FFZ)V
    .locals 5

    .line 999
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 1001
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    .line 1002
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-float/2addr v0, v1

    :goto_0
    sub-float/2addr p1, v0

    goto :goto_1

    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    add-float v3, p1, v0

    .line 1007
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 1008
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 1013
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v0

    .line 1014
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 1015
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v0

    div-float/2addr p2, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p2, v2

    if-lez v1, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    add-float v1, p2, v0

    .line 1019
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    neg-float p2, v0

    .line 1020
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 1024
    :cond_5
    :goto_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_6

    .line 1025
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_6

    :cond_6
    cmpl-float v0, p2, v0

    if-lez v0, :cond_7

    .line 1027
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_6

    .line 1029
    :cond_7
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_6

    .line 1033
    :cond_8
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    .line 1034
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_9

    .line 1035
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-float/2addr v0, v1

    :goto_3
    sub-float/2addr p2, v0

    goto :goto_4

    :cond_9
    cmpl-float v3, p2, v2

    if-lez v3, :cond_a

    move p2, v2

    goto :goto_4

    :cond_a
    add-float v3, p2, v0

    .line 1039
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 1040
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_3

    .line 1045
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v0

    .line 1046
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_c

    .line 1047
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    goto :goto_5

    :cond_c
    cmpl-float v1, p1, v2

    if-lez v1, :cond_d

    move p1, v2

    goto :goto_5

    :cond_d
    add-float v1, p1, v0

    .line 1051
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    neg-float p1, v0

    .line 1052
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 1056
    :cond_e
    :goto_5
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_f

    .line 1057
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_6

    :cond_f
    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    .line 1059
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_6

    .line 1061
    :cond_10
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    .line 1065
    :goto_6
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 1066
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 1067
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPositionOffset()F

    move-result p1

    if-eqz p3, :cond_11

    .line 1069
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz p2, :cond_11

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result p2

    if-nez p2, :cond_11

    .line 1070
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-interface {p2, p1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setScroll(F)V

    .line 1073
    :cond_11
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    if-eqz p2, :cond_12

    .line 1074
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result p3

    invoke-interface {p2, p3, p1}, Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;->onPageScrolled(IF)V

    .line 1077
    :cond_12
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    return-void
.end method

.method public onBitmapRendered(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 4

    .line 903
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-ne v0, v1, :cond_0

    .line 904
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 905
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-interface {v0, v1, v2, v3}, Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;->onInitiallyRendered(IFF)V

    .line 910
    :cond_0
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cacheThumbnail(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_0

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cachePart(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    .line 915
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 609
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 610
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 666
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 700
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 706
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 711
    :goto_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_3

    return-void

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_4

    return-void

    .line 720
    :cond_4
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 721
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 722
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 725
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/CacheManager;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 726
    invoke-direct {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_1

    .line 731
    :cond_5
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/CacheManager;->getPageParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 732
    invoke-direct {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    .line 733
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 734
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 738
    :cond_7
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 739
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-direct {p0, p1, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    goto :goto_3

    .line 741
    :cond_8
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 743
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-direct {p0, p1, v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    neg-float v0, v0

    neg-float v1, v1

    .line 746
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method onPageError(Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;)V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getPage()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;->onPageError(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 550
    :cond_0
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot open page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 615
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object p2, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 618
    :cond_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 619
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateOptimalWidthAndHeight()V

    .line 620
    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz p1, :cond_1

    .line 621
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    invoke-direct {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_0

    .line 623
    :cond_1
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result p1

    neg-float p1, p1

    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 625
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    :cond_2
    :goto_1
    return-void
.end method

.method public recycle()V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 559
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->stop()V

    .line 561
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancel(Z)Z

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->recycle()V

    .line 570
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    if-eqz v2, :cond_2

    .line 571
    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->destroyLayout()V

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-eqz v2, :cond_3

    .line 575
    invoke-virtual {v0, v2}, Lcom/shockwave/pdfium/PdfiumCore;->closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V

    :cond_3
    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    .line 579
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    .line 580
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    .line 581
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    .line 582
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    .line 583
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    const/4 v0, 0x0

    .line 585
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 586
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    .line 587
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 588
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-void
.end method

.method redraw()V
    .locals 0

    .line 892
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    return-void
.end method

.method public resetZoom()V
    .locals 1

    .line 1243
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    return-void
.end method

.method public resetZoomWithAnimation()V
    .locals 1

    .line 1247
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(F)V

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    .line 1294
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return-void
.end method

.method public setMidZoom(F)V
    .locals 0

    .line 1286
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    .line 1278
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    return-void
.end method

.method public setPositionOffset(F)V
    .locals 1

    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(FZ)V

    return-void
.end method

.method public setPositionOffset(FZ)V
    .locals 3

    .line 454
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 455
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    .line 459
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    return-void
.end method

.method public setSwipeVertical(Z)V
    .locals 0

    .line 1310
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return-void
.end method

.method showPage(I)V
    .locals 2

    .line 405
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->determineValidPageNumberFrom(I)I

    move-result p1

    .line 412
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    .line 413
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    .line 414
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 415
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 416
    aget p1, v0, p1

    .line 417
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 423
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result p1

    if-nez p1, :cond_2

    .line 424
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setPageNum(I)V

    .line 427
    :cond_2
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    if-eqz p1, :cond_3

    .line 428
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;->onPageChanged(II)V

    :cond_3
    return-void
.end method

.method public stopFling()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    return-void
.end method

.method public toCurrentScale(F)F
    .locals 1

    .line 1219
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public toRealScale(F)F
    .locals 1

    .line 1215
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float/2addr p1, v0

    return p1
.end method

.method public useBestQuality(Z)V
    .locals 0

    .line 1298
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    return-void
.end method

.method public zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V
    .locals 1

    .line 1166
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public zoomCenteredTo(FLandroid/graphics/PointF;)V
    .locals 4

    .line 1153
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float v0, p1, v0

    .line 1154
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    .line 1155
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    mul-float/2addr p1, v0

    .line 1156
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    mul-float/2addr v1, v0

    .line 1157
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    add-float/2addr p1, v2

    .line 1158
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, v0

    sub-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 1159
    invoke-virtual {p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    return-void
.end method

.method public zoomTo(F)V
    .locals 0

    .line 1141
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return-void
.end method

.method public zoomWithAnimation(F)V
    .locals 4

    .line 1255
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method

.method public zoomWithAnimation(FFF)V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method
