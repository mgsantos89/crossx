.class public Lcom/startapps/crossx/view/activity/PostActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "PostActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/PostActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0287

    const-string v1, "field \'scroll\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/PostActivity;->scroll:Landroid/widget/ScrollView;

    const v0, 0x7f0a033e

    const-string v1, "field \'photo\' and method \'setPhotoClick\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/PostActivity;->photo:Landroid/widget/ImageView;

    .line 14
    new-instance v1, Lcom/startapps/crossx/view/activity/PostActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/PostActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/PostActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021a

    const-string v1, "field \'imgPost\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/PostActivity;->imgPost:Landroid/widget/ImageView;

    const v0, 0x7f0a04ad

    const-string v1, "field \'textPost\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 25
    check-cast p0, Landroid/widget/EditText;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/PostActivity;->textPost:Landroid/widget/EditText;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/PostActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->scroll:Landroid/widget/ScrollView;

    .line 30
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->photo:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->imgPost:Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->textPost:Landroid/widget/EditText;

    return-void
.end method
