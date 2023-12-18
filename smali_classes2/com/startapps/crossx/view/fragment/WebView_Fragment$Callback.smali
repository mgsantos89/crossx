.class Lcom/startapps/crossx/view/fragment/WebView_Fragment$Callback;
.super Landroid/webkit/WebViewClient;
.source "WebView_Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/fragment/WebView_Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/WebView_Fragment;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/fragment/WebView_Fragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/WebView_Fragment$Callback;->this$0:Lcom/startapps/crossx/view/fragment/WebView_Fragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
