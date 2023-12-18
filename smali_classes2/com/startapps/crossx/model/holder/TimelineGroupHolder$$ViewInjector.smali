.class public Lcom/startapps/crossx/model/holder/TimelineGroupHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "TimelineGroupHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/model/holder/TimelineGroupHolder;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a027d

    const-string v1, "field \'layouAthlete\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->layouAthlete:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0214

    const-string v1, "field \'img\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->img:Landroid/widget/ImageView;

    const v0, 0x7f0a0489

    const-string v1, "field \'title\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0a03d4

    const-string v1, "field \'subTitle\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->subTitle:Landroid/widget/TextView;

    const v0, 0x7f0a02dc

    const-string v1, "field \'message\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->message:Landroid/widget/TextView;

    const v0, 0x7f0a0140

    const-string v1, "field \'date\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 21
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->date:Landroid/widget/TextView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/model/holder/TimelineGroupHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->layouAthlete:Landroid/widget/RelativeLayout;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->img:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->title:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->subTitle:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->message:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->date:Landroid/widget/TextView;

    return-void
.end method
