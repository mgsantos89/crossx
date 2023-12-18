.class public Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "BoxAutoCompleteHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0303

    const-string v1, "field \'name\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f0a0217

    const-string v1, "field \'img\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->img:Landroid/widget/ImageView;

    const v0, 0x7f0a0281

    const-string v1, "field \'linearLayout\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 15
    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p1, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->linearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->name:Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->img:Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->linearLayout:Landroid/widget/LinearLayout;

    return-void
.end method
