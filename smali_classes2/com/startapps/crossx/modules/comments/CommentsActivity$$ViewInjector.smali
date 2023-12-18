.class public Lcom/startapps/crossx/modules/comments/CommentsActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "CommentsActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/modules/comments/CommentsActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0494

    const-string v1, "field \'toolbar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/modules/comments/CommentsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a03fb

    const-string v1, "field \'textComment\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/modules/comments/CommentsActivity;->textComment:Landroid/widget/EditText;

    const v0, 0x7f0a00c0

    const-string v1, "field \'btSend\' and method \'onClickSend\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/modules/comments/CommentsActivity;->btSend:Landroid/widget/Button;

    .line 16
    new-instance v1, Lcom/startapps/crossx/modules/comments/CommentsActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/modules/comments/CommentsActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/modules/comments/CommentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0357

    const-string v1, "field \'progressBar\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a02a7

    const-string v1, "field \'listComments\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/startapps/crossx/modules/comments/CommentsActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0350

    const-string v1, "field \'progressBarLoad\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 29
    check-cast p0, Landroid/widget/ProgressBar;

    iput-object p0, p1, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/modules/comments/CommentsActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 34
    iput-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->textComment:Landroid/widget/EditText;

    .line 35
    iput-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->btSend:Landroid/widget/Button;

    .line 36
    iput-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 37
    iput-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iput-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    return-void
.end method
