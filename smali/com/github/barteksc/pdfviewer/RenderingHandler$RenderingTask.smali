.class Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;
.super Ljava/lang/Object;
.source "RenderingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/RenderingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderingTask"
.end annotation


# instance fields
.field annotationRendering:Z

.field bestQuality:Z

.field bounds:Landroid/graphics/RectF;

.field cacheOrder:I

.field height:F

.field page:I

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/RenderingHandler;

.field thumbnail:Z

.field userPage:I

.field width:F


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;FFLandroid/graphics/RectF;IIZIZZ)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->this$0:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p6, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    .line 169
    iput p2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->width:F

    .line 170
    iput p3, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->height:F

    .line 171
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    .line 172
    iput p5, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->userPage:I

    .line 173
    iput-boolean p7, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->thumbnail:Z

    .line 174
    iput p8, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->cacheOrder:I

    .line 175
    iput-boolean p9, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bestQuality:Z

    .line 176
    iput-boolean p10, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->annotationRendering:Z

    return-void
.end method
