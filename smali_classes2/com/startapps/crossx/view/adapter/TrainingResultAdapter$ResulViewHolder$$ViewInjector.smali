.class public Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "TrainingResultAdapter$ResulViewHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a025d

    const-string v1, "field \'nameWod\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->nameWod:Landroid/widget/TextView;

    const v0, 0x7f0a025c

    const-string v1, "field \'categorie\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->categorie:Landroid/widget/TextView;

    const v0, 0x7f0a025b

    const-string v1, "field \'description\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f0a025a

    const-string v1, "field \'buttonEdit\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 17
    check-cast p0, Landroid/widget/Button;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->buttonEdit:Landroid/widget/Button;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->nameWod:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->categorie:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->description:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->buttonEdit:Landroid/widget/Button;

    return-void
.end method
