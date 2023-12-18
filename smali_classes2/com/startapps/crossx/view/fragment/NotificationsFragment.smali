.class public Lcom/startapps/crossx/view/fragment/NotificationsFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "NotificationsFragment.java"


# instance fields
.field public listNotification:Landroid/widget/ListView;

.field private notificationAdapter:Lcom/startapps/crossx/view/adapter/NotificationAdapter;

.field private notificationModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/NotificationModel;",
            ">;"
        }
    .end annotation
.end field

.field private notificationsRequester:Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;

.field protected onNotificationListener:Lcom/startapps/crossx/Interfaces/OnNotificationListener;

.field public progressNotification:Landroid/widget/ProgressBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetnotificationAdapter(Lcom/startapps/crossx/view/fragment/NotificationsFragment;)Lcom/startapps/crossx/view/adapter/NotificationAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->notificationAdapter:Lcom/startapps/crossx/view/adapter/NotificationAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationModelList(Lcom/startapps/crossx/view/fragment/NotificationsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->notificationModelList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    return-void
.end method

.method private clearCountBadge()V
    .locals 2

    .line 117
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/Preference;->addNotification(I)V

    return-void
.end method

.method private getNotifications()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->notificationsRequester:Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;

    new-instance v1, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v2, Lcom/startapps/crossx/view/fragment/NotificationsFragment$1;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v2, p0, v3}, Lcom/startapps/crossx/view/fragment/NotificationsFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/NotificationsFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v1, v2}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;->getNotifications(Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method


# virtual methods
.method public endLoader()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->progressNotification:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d007d

    return v0
.end method

.method public initLoader()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->progressNotification:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onAttach(Landroid/app/Activity;)V

    if-eqz p1, :cond_0

    .line 112
    check-cast p1, Lcom/startapps/crossx/view/activity/HomeActivity;

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->onNotificationListener:Lcom/startapps/crossx/Interfaces/OnNotificationListener;

    :cond_0
    return-void
.end method

.method protected onClickNotification()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->onNotificationListener:Lcom/startapps/crossx/Interfaces/OnNotificationListener;

    if-eqz v0, :cond_4

    .line 150
    sget-object v0, Lcom/startapps/crossx/model/enuns/NotificationEnum;->CHECK_IN:Lcom/startapps/crossx/model/enuns/NotificationEnum;

    .line 152
    sget-object v1, Lcom/startapps/crossx/view/fragment/NotificationsFragment$2;->$SwitchMap$com$startapps$crossx$model$enuns$NotificationEnum:[I

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/NotificationEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->onNotificationListener:Lcom/startapps/crossx/Interfaces/OnNotificationListener;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/OnNotificationListener;->onNotificationTraining()V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->onNotificationListener:Lcom/startapps/crossx/Interfaces/OnNotificationListener;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/OnNotificationListener;->onNotificationTimeLine()V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->onNotificationListener:Lcom/startapps/crossx/Interfaces/OnNotificationListener;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/OnNotificationListener;->onNotificationRanking()V

    goto :goto_0

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->onNotificationListener:Lcom/startapps/crossx/Interfaces/OnNotificationListener;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/OnNotificationListener;->onNotificationCheckIn()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 74
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Notifica\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 102
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 104
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->clearCountBadge()V

    .line 96
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->getNotifications()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p1, p2}, Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->notificationsRequester:Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->notificationModelList:Ljava/util/List;

    .line 87
    new-instance p1, Lcom/startapps/crossx/view/adapter/NotificationAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->notificationModelList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/startapps/crossx/view/adapter/NotificationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->notificationAdapter:Lcom/startapps/crossx/view/adapter/NotificationAdapter;

    .line 88
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->listNotification:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
