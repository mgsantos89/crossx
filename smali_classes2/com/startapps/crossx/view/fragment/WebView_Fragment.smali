.class public Lcom/startapps/crossx/view/fragment/WebView_Fragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "WebView_Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/fragment/WebView_Fragment$Callback;
    }
.end annotation


# static fields
.field private static final ARG_URL:Ljava/lang/String; = "url"

.field private static final TAG:Ljava/lang/String; = "WEBVIEW"


# instance fields
.field URLstring:Ljava/lang/String;

.field private volatile mWebChromeClient:Landroid/webkit/WebChromeClient;

.field pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/startapps/crossx/view/fragment/WebView_Fragment;
    .locals 3

    .line 42
    new-instance v0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "url"

    .line 44
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d011f

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string v0, "Reflection fail"

    const-string v1, "WEBVIEW"

    const-string v2, "/data/data/"

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "url"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->URLstring:Ljava/lang/String;

    :cond_0
    const p2, 0x7f0a0301

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->webView:Landroid/webkit/WebView;

    const p2, 0x7f0a0338

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/barteksc/pdfviewer/PDFView;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 77
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->URLstring:Ljava/lang/String;

    const-string p3, ".pdf"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 78
    new-instance p2, Lcom/startapps/crossx/view/fragment/WebView_Fragment$1;

    invoke-direct {p2, p0}, Lcom/startapps/crossx/view/fragment/WebView_Fragment$1;-><init>(Lcom/startapps/crossx/view/fragment/WebView_Fragment;)V

    new-array p3, p3, [Ljava/lang/Void;

    .line 90
    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/fragment/WebView_Fragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 92
    :cond_1
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->setVisibility(I)V

    .line 93
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 95
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v3, 0x1

    .line 97
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 99
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 100
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    :try_start_0
    const-string v4, "Enabling HTML5-Features"

    .line 105
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-class v4, Landroid/webkit/WebSettings;

    const-string v5, "setDomStorageEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, p3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 107
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, p3

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-class v4, Landroid/webkit/WebSettings;

    const-string v5, "setDatabaseEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, p3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 110
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, p3

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-class v4, Landroid/webkit/WebSettings;

    const-string v5, "setDatabasePath"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, p3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/databases/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p3

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-class v4, Landroid/webkit/WebSettings;

    const-string v5, "setAppCacheMaxSize"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, p3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const/high16 v6, 0x800000

    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p3

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-class v4, Landroid/webkit/WebSettings;

    const-string v5, "setAppCachePath"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, p3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/cache/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, p3

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-class v2, Landroid/webkit/WebSettings;

    const-string v4, "setAppCacheEnabled"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, p3

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 122
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, p3

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Enabled HTML5-Features"

    .line 124
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 133
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p2

    .line 130
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p2

    .line 127
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_0
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 138
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->webView:Landroid/webkit/WebView;

    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->URLstring:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method
