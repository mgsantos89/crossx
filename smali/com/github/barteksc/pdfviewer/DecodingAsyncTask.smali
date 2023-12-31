.class Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;
.super Landroid/os/AsyncTask;
.source "DecodingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private context:Landroid/content/Context;

.field private docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private firstPageIdx:I

.field private pageHeight:I

.field private pageWidth:I

.field private password:Ljava/lang/String;

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    .line 42
    iput p5, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->firstPageIdx:I

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    .line 44
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 45
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 47
    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 3

    .line 53
    :try_start_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/github/barteksc/pdfviewer/source/DocumentSource;->createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    .line 55
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->firstPageIdx:I

    invoke-virtual {v0, p1, v1}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    .line 56
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->firstPageIdx:I

    invoke-virtual {p1, v0, v1}, Lcom/shockwave/pdfium/PdfiumCore;->getPageWidth(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result p1

    iput p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pageWidth:I

    .line 57
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->firstPageIdx:I

    invoke-virtual {p1, v0, v1}, Lcom/shockwave/pdfium/PdfiumCore;->getPageHeight(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result p1

    iput p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pageHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadError(Ljava/lang/Throwable;)V

    return-void

    .line 70
    :cond_0
    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    if-nez p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pageWidth:I

    iget v2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pageHeight:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->loadComplete(Lcom/shockwave/pdfium/PdfDocument;II)V

    :cond_1
    return-void
.end method
