.class public Lcom/startapps/crossx/view/activity/TimelineGroupActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "TimelineGroupActivity.java"


# instance fields
.field floatingActionButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private groupId:Ljava/lang/String;

.field private groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

.field private groupTimelineModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/GroupTimelineModel;",
            ">;"
        }
    .end annotation
.end field

.field listView:Landroid/widget/ListView;

.field private nameGroup:Ljava/lang/String;

.field private timelineGroupAdapter:Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetgroupTimelineModelList(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupTimelineModelList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimelineGroupAdapter(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;)Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->timelineGroupAdapter:Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private editGroup()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->nameGroup:Ljava/lang/String;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupId:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/startapps/crossx/controller/utils/Intents;->goToEditGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getTimelineGroup()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupTimelineModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupId:Ljava/lang/String;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v3, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$1;

    invoke-direct {v3, p0, p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$1;-><init>(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->getTimelineGroup(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f120116

    .line 117
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0032

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Atletas - Timeline do Grupo"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "groupid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "name_group"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupId:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->nameGroup:Ljava/lang/String;

    .line 84
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupTimelineModelList:Ljava/util/List;

    .line 88
    new-instance p1, Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupTimelineModelList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->timelineGroupAdapter:Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;

    .line 89
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->defineToolbar()V

    return-void

    .line 73
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 103
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 104
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onNewMessage()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->groupId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToNewMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->editGroup()V

    .line 133
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onStart()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onStart()V

    .line 98
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getTimelineGroup()V

    return-void
.end method
