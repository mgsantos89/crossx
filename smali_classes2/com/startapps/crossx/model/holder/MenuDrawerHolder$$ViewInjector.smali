.class public Lcom/startapps/crossx/model/holder/MenuDrawerHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "MenuDrawerHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/model/holder/MenuDrawerHolder;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a01f6

    const-string v1, "field \'icon\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a0302

    const-string v1, "field \'name\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 13
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->name:Landroid/widget/TextView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/model/holder/MenuDrawerHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->icon:Landroid/widget/ImageView;

    .line 18
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->name:Landroid/widget/TextView;

    return-void
.end method
