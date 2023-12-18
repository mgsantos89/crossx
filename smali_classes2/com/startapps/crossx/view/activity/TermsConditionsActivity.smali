.class public Lcom/startapps/crossx/view/activity/TermsConditionsActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "TermsConditionsActivity.java"


# static fields
.field private static final URL_TERMS:Ljava/lang/String; = "http://appcrossx.com/termos/"


# instance fields
.field protected mWVInstitucional:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private loadWebViewUrl()V
    .locals 3

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "android"

    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->mWVInstitucional:Landroid/webkit/WebView;

    const-string v2, "http://appcrossx.com/termos/"

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private setUpWebView()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->mWVInstitucional:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->mWVInstitucional:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->mWVInstitucional:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->mWVInstitucional:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 72
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->mWVInstitucional:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0045

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->setTitleActionBar()V

    .line 48
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->setUpWebView()V

    .line 49
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->loadWebViewUrl()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->finish()V

    .line 63
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onStart()V

    return-void
.end method

.method protected setTitleActionBar()V
    .locals 3

    .line 77
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027b

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, -0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 82
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
