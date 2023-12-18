.class public Lcom/startapps/crossx/view/activity/TermsConditionsActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "TermsConditionsActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/TermsConditionsActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a04d3

    const-string v1, "field \'mWVInstitucional\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 11
    check-cast p0, Landroid/webkit/WebView;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->mWVInstitucional:Landroid/webkit/WebView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/TermsConditionsActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;->mWVInstitucional:Landroid/webkit/WebView;

    return-void
.end method
