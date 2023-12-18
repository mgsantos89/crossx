.class Lcom/startapps/crossx/view/fragment/WebView_Fragment$1;
.super Landroid/os/AsyncTask;
.source "WebView_Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/WebView_Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/WebView_Fragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/WebView_Fragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment$1;->this$0:Lcom/startapps/crossx/view/fragment/WebView_Fragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/WebView_Fragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 83
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment$1;->this$0:Lcom/startapps/crossx/view/fragment/WebView_Fragment;

    iget-object v0, v0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->URLstring:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment$1;->this$0:Lcom/startapps/crossx/view/fragment/WebView_Fragment;

    iget-object v0, v0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->fromStream(Ljava/io/InputStream;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
