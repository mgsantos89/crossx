.class Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;
.super Ljava/lang/Object;
.source "PDFView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)V
    .locals 0

    .line 1579
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1582
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1400(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1500(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    move-result-object v2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1600(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1700(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    move-result-object v4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1800(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    move-result-object v5

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1400(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)[I

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V

    goto :goto_0

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1500(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    move-result-object v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1600(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v3}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1700(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    move-result-object v3

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator$1;->this$1:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    invoke-static {v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->access$1800(Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->access$2000(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V

    :goto_0
    return-void
.end method
