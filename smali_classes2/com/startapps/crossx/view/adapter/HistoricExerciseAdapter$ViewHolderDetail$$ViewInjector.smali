.class public Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail$$ViewInjector;
.super Ljava/lang/Object;
.source "HistoricExerciseAdapter$ViewHolderDetail$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a024d

    const-string v1, "field \'itemPR\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->itemPR:Landroid/widget/LinearLayout;

    const v0, 0x7f0a024f

    const-string v1, "field \'day\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->day:Landroid/widget/TextView;

    const v0, 0x7f0a0251

    const-string v1, "field \'monthYear\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->monthYear:Landroid/widget/TextView;

    const v0, 0x7f0a0253

    const-string v1, "field \'result\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->result:Landroid/widget/TextView;

    const v0, 0x7f0a024e

    const-string v1, "field \'pr\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->pr:Landroid/widget/TextView;

    const v0, 0x7f0a0254

    const-string v1, "field \'type\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 21
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->type:Landroid/widget/TextView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->itemPR:Landroid/widget/LinearLayout;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->day:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->monthYear:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->result:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->pr:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->type:Landroid/widget/TextView;

    return-void
.end method
