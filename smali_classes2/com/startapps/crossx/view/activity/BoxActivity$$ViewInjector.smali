.class public Lcom/startapps/crossx/view/activity/BoxActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "BoxActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/BoxActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0217

    const-string v1, "field \'imgBox\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BoxActivity;->imgBox:Landroid/widget/ImageView;

    const v0, 0x7f0a0303

    const-string v1, "field \'nameBox\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BoxActivity;->nameBox:Landroid/widget/TextView;

    const v0, 0x7f0a0152

    const-string v1, "field \'descriptionBox\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BoxActivity;->descriptionBox:Landroid/widget/TextView;

    const v0, 0x7f0a01b1

    const-string v1, "field \'formFeedback\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BoxActivity;->formFeedback:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00ad

    const-string v1, "field \'privateButton\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/BoxActivity;->privateButton:Landroid/widget/Button;

    const v0, 0x7f0a0106

    const-string v1, "field \'commentText\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 21
    check-cast p0, Landroid/widget/EditText;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/BoxActivity;->commentText:Landroid/widget/EditText;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/BoxActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->imgBox:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->nameBox:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->descriptionBox:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->formFeedback:Landroid/widget/RelativeLayout;

    .line 29
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->privateButton:Landroid/widget/Button;

    .line 30
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity;->commentText:Landroid/widget/EditText;

    return-void
.end method
