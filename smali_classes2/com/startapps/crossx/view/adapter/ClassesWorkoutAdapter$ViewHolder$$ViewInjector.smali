.class public Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "ClassesWorkoutAdapter$ViewHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a04c2

    const-string v1, "field \'mainView\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->mainView:Landroid/view/View;

    const v0, 0x7f0a021f

    const-string v1, "field \'imageUser\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/startapps/crossx/view/RoundedImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->imageUser:Lcom/startapps/crossx/view/RoundedImageView;

    const v0, 0x7f0a0247

    const-string v1, "field \'name\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f0a0248

    const-string v1, "field \'workout\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    const v0, 0x7f0a0244

    const-string v1, "field \'hour\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    const v0, 0x7f0a0239

    const-string v1, "field \'dayWeek\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    const v0, 0x7f0a0238

    const-string v1, "field \'dayMonth\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    const v0, 0x7f0a0246

    const-string v1, "field \'limit\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->limit:Landroid/widget/TextView;

    const v0, 0x7f0a0206

    const-string v1, "field \'marker\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 27
    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->marker:Landroid/widget/ImageView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->mainView:Landroid/view/View;

    .line 32
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->imageUser:Lcom/startapps/crossx/view/RoundedImageView;

    .line 33
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->limit:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->marker:Landroid/widget/ImageView;

    return-void
.end method
