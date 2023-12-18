.class public Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "WorkoutHourDetailActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0239

    const-string v1, "field \'dayWeek\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->dayWeek:Landroid/widget/TextView;

    const v0, 0x7f0a0238

    const-string v1, "field \'dayMonth\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->dayMonth:Landroid/widget/TextView;

    const v0, 0x7f0a0247

    const-string v1, "field \'nameCoach\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->nameCoach:Landroid/widget/TextView;

    const v0, 0x7f0a0248

    const-string v1, "field \'nameProgram\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->nameProgram:Landroid/widget/TextView;

    const v0, 0x7f0a0244

    const-string v1, "field \'hour\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hour:Landroid/widget/TextView;

    const v0, 0x7f0a0246

    const-string v1, "field \'limit\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->limit:Landroid/widget/TextView;

    const v0, 0x7f0a021f

    const-string v1, "field \'imageView\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0134

    const-string v1, "field \'buttonCheckIn\' and method \'onLCickButtonCheckin\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    .line 26
    new-instance v1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b7

    const-string v1, "field \'listView\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->listView:Landroid/widget/ListView;

    const v0, 0x7f0a02dd

    const-string v1, "field \'messageBar\'"

    .line 36
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    const v0, 0x7f0a0208

    const-string v1, "field \'imageWarning\'"

    .line 38
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageWarning:Landroid/widget/ImageView;

    const v0, 0x7f0a01c6

    const-string v1, "field \'gympassTokenField\'"

    .line 40
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassTokenField:Landroid/widget/EditText;

    const v0, 0x7f0a01c7

    const-string v1, "field \'gympassView\'"

    .line 42
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c5

    const-string v1, "field \'gympassLabel\'"

    .line 44
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 45
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->dayWeek:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->dayMonth:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->nameCoach:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->nameProgram:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hour:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->limit:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageView:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    .line 57
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->listView:Landroid/widget/ListView;

    .line 58
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageWarning:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassTokenField:Landroid/widget/EditText;

    .line 61
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    .line 62
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassLabel:Landroid/widget/TextView;

    return-void
.end method
