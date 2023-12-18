.class public Lcom/startapps/crossx/view/activity/NewsActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "NewsActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/NewsActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a00b1

    const-string v1, "method \'clickListener\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/startapps/crossx/view/activity/NewsActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/NewsActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/NewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b4

    const-string v1, "method \'notKnow\'"

    .line 19
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 20
    new-instance p2, Lcom/startapps/crossx/view/activity/NewsActivity$$ViewInjector$2;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/NewsActivity$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/activity/NewsActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/NewsActivity;)V
    .locals 0

    return-void
.end method
