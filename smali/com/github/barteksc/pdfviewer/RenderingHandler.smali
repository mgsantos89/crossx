.class Lcom/github/barteksc/pdfviewer/RenderingHandler;
.super Landroid/os/Handler;
.source "RenderingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;
    }
.end annotation


# static fields
.field static final MSG_RENDER_TASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.github.barteksc.pdfviewer.RenderingHandler"


# instance fields
.field private final openedPages:Landroid/util/SparseBooleanArray;

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private renderBounds:Landroid/graphics/RectF;

.field private renderMatrix:Landroid/graphics/Matrix;

.field private roundedRenderBounds:Landroid/graphics/Rect;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    .line 52
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    .line 58
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 59
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 60
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    return-void
.end method

.method static synthetic access$000(Lcom/github/barteksc/pdfviewer/RenderingHandler;)Lcom/github/barteksc/pdfviewer/PDFView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object p0
.end method

.method private calculateBounds(IILandroid/graphics/RectF;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 133
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    int-to-float p2, p2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 134
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 136
    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 138
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method private proceed(Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v2, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-virtual {v0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    .line 100
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 103
    new-instance v1, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;

    iget p1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-direct {v1, p1, v0}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 107
    :cond_0
    :goto_0
    iget v0, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->width:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 108
    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->height:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 111
    :try_start_1
    iget-boolean v2, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bestQuality:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    iget-object v3, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v3}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->calculateBounds(IILandroid/graphics/RectF;)V

    .line 117
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v6, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-boolean v11, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->annotationRendering:Z

    move-object v5, v2

    .line 119
    invoke-virtual/range {v3 .. v11}, Lcom/shockwave/pdfium/PdfiumCore;->renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V

    goto :goto_2

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getInvalidPageColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 125
    :goto_2
    new-instance v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    iget v4, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->userPage:I

    iget v5, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    iget v7, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->width:F

    iget v8, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->height:F

    iget-object v9, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    iget-boolean v10, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->thumbnail:Z

    iget v11, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->cacheOrder:I

    move-object v3, v0

    move-object v6, v2

    invoke-direct/range {v3 .. v11}, Lcom/github/barteksc/pdfviewer/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    return-object v0

    :catch_1
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method addRenderingTask(IIFFLandroid/graphics/RectF;ZIZZ)V
    .locals 13

    move-object v11, p0

    .line 64
    new-instance v12, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move v5, p1

    move v6, p2

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;FFLandroid/graphics/RectF;IIZIZZ)V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0, v12}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;

    .line 73
    :try_start_0
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->proceed(Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 75
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v1, Lcom/github/barteksc/pdfviewer/RenderingHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/github/barteksc/pdfviewer/RenderingHandler$1;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Lcom/github/barteksc/pdfviewer/exception/PageRenderingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v1, Lcom/github/barteksc/pdfviewer/RenderingHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/github/barteksc/pdfviewer/RenderingHandler$2;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;)V

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    return-void
.end method
