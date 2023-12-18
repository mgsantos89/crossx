.class public Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;
.super Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.source "NotificationsRequester.java"


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public getNotifications(Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->initLoader()V

    .line 20
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    iget-object v1, p0, Lcom/startapps/crossx/controller/network/requests/NotificationsRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    sget-object v2, Lcom/startapps/crossx/controller/network/URLs;->URL_USER_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/startapps/crossx/controller/network/ConnectionController;->get(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V

    return-void
.end method
