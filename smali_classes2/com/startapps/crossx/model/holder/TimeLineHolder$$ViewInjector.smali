.class public Lcom/startapps/crossx/model/holder/TimeLineHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "TimeLineHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/model/holder/TimeLineHolder;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0217

    const-string v1, "field \'imgBox\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->imgBox:Landroid/widget/ImageView;

    const v0, 0x7f0a0303

    const-string v1, "field \'nameBox\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->nameBox:Landroid/widget/TextView;

    const v0, 0x7f0a04ae

    const-string v1, "field \'type\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->type:Landroid/widget/TextView;

    const v0, 0x7f0a0486

    const-string v1, "field \'time\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->time:Landroid/widget/TextView;

    const v0, 0x7f0a03a1

    const-string v1, "field \'share\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->share:Landroid/widget/ImageView;

    const v0, 0x7f0a021a

    const-string v1, "field \'imgPost\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->imgPost:Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    const v0, 0x7f0a0428

    const-string v1, "field \'textPost\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textPost:Landroid/widget/TextView;

    const v0, 0x7f0a0425

    const-string v1, "field \'textNumberLikes\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textNumberLikes:Landroid/widget/TextView;

    const v0, 0x7f0a0424

    const-string v1, "field \'textNumberComments\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textNumberComments:Landroid/widget/TextView;

    const v0, 0x7f0a00ba

    const-string v1, "field \'buttonRemovePost\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->buttonRemovePost:Landroid/widget/TextView;

    const v0, 0x7f0a01ca

    const-string v1, "field \'headerUser\'"

    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->headerUser:Landroid/view/View;

    const v0, 0x7f0a01fa

    const-string v1, "field \'toggleButtonLike\'"

    .line 32
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    check-cast v0, Lcom/startapps/crossx/view/widget/ToggleButton;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->toggleButtonLike:Lcom/startapps/crossx/view/widget/ToggleButton;

    const v0, 0x7f0a0108

    const-string v1, "field \'commentsLayout\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    check-cast v0, Lcom/startapps/crossx/view/widget/CommentsLayout;

    iput-object v0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->commentsLayout:Lcom/startapps/crossx/view/widget/CommentsLayout;

    const v0, 0x7f0a01f8

    const-string v1, "field \'btComments\'"

    .line 36
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 37
    check-cast p0, Landroid/widget/ImageButton;

    iput-object p0, p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;->btComments:Landroid/widget/ImageButton;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/model/holder/TimeLineHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->imgBox:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->nameBox:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->type:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->time:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->share:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->imgPost:Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    .line 47
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textPost:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textNumberLikes:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textNumberComments:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->buttonRemovePost:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->headerUser:Landroid/view/View;

    .line 52
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->toggleButtonLike:Lcom/startapps/crossx/view/widget/ToggleButton;

    .line 53
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->commentsLayout:Lcom/startapps/crossx/view/widget/CommentsLayout;

    .line 54
    iput-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->btComments:Landroid/widget/ImageButton;

    return-void
.end method
