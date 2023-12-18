.class public Lcom/startapps/crossx/view/activity/TimelineGroupActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "TimelineGroupActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/TimelineGroupActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a02ac

    const-string v1, "field \'listView\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->listView:Landroid/widget/ListView;

    const v0, 0x7f0a01ad

    const-string v1, "field \'floatingActionButton\' and method \'onNewMessage\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 13
    move-object p2, p0

    check-cast p2, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object p2, p1, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->floatingActionButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 14
    new-instance p2, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$$ViewInjector$1;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->listView:Landroid/widget/ListView;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->floatingActionButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    return-void
.end method
