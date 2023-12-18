.class public Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "UserWorkoutAdapter$ViewHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0267

    const-string v1, "field \'workout\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    const v0, 0x7f0a0266

    const-string v1, "field \'hour\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    const v0, 0x7f0a0265

    const-string v1, "field \'dayWeek\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    const v0, 0x7f0a0264

    const-string v1, "field \'dayMonth\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    const v0, 0x7f0a00a6

    const-string v1, "field \'buttonADDResult\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 19
    check-cast p0, Landroid/widget/Button;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->buttonADDResult:Landroid/widget/Button;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->buttonADDResult:Landroid/widget/Button;

    return-void
.end method
