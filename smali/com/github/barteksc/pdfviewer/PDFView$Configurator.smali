.class public Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
.super Ljava/lang/Object;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Configurator"
.end annotation


# instance fields
.field private annotationRendering:Z

.field private antialiasing:Z

.field private defaultPage:I

.field private final documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private enableDoubletap:Z

.field private enableSwipe:Z

.field private invalidPageColor:I

.field private onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

.field private onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

.field private onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

.field private onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

.field private onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

.field private onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

.field private pageNumbers:[I

.field private password:Ljava/lang/String;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private spacing:I

.field private swipeHorizontal:Z

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method private constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V
    .locals 2

    .line 1455
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1415
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    const/4 v0, 0x1

    .line 1417
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    .line 1419
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    const/4 v1, 0x0

    .line 1439
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    .line 1441
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    .line 1443
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    .line 1445
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    .line 1447
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 1449
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    .line 1451
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    const/4 p1, -0x1

    .line 1453
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->invalidPageColor:I

    .line 1456
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V
    .locals 0

    .line 1411
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)[I
    .locals 0

    .line 1411
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    return-object p0
.end method

.method static synthetic access$1500(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/source/DocumentSource;
    .locals 0

    .line 1411
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Ljava/lang/String;
    .locals 0

    .line 1411
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;
    .locals 0

    .line 1411
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;
    .locals 0

    .line 1411
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    return-object p0
.end method


# virtual methods
.method public defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1525
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    return-object p0
.end method

.method public enableAnnotationRendering(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1475
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    return-object p0
.end method

.method public enableAntialiasing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1545
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    return-object p0
.end method

.method public enableDoubletap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1470
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    return-object p0
.end method

.method public enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1465
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    return-object p0
.end method

.method public invalidPageColor(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1555
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->invalidPageColor:I

    return-object p0
.end method

.method public load()V
    .locals 2

    .line 1560
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 1561
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 1562
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 1563
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$300(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V

    .line 1564
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$400(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V

    .line 1565
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$500(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V

    .line 1566
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$600(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V

    .line 1567
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$700(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)V

    .line 1568
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableSwipe(Z)V

    .line 1569
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableDoubletap(Z)V

    .line 1570
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$800(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    .line 1571
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeVertical(Z)V

    .line 1572
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableAnnotationRendering(Z)V

    .line 1573
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    .line 1574
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing(Z)V

    .line 1575
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1000(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    .line 1576
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->invalidPageColor:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1100(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    .line 1577
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1300(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1200(Lcom/github/barteksc/pdfviewer/PDFView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->setSwipeVertical(Z)V

    .line 1579
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v1, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;

    invoke-direct {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;-><init>(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)V

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1480
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-object p0
.end method

.method public onDrawAll(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1485
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-object p0
.end method

.method public onError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1500
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    return-object p0
.end method

.method public onLoad(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1490
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    return-object p0
.end method

.method public onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1510
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-object p0
.end method

.method public onPageError(Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1505
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

    return-object p0
.end method

.method public onPageScroll(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-object p0
.end method

.method public onRender(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1515
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    return-object p0
.end method

.method public onTap(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1520
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    return-object p0
.end method

.method public varargs pages([I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1460
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    return-object p0
.end method

.method public password(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1535
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    return-object p0
.end method

.method public scrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1540
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object p0
.end method

.method public spacing(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1550
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    return-object p0
.end method

.method public swipeHorizontal(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1530
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    return-object p0
.end method
