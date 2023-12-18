.class Lcom/startapps/crossx/view/fragment/NotificationsFragment$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/NotificationsFragment;->getNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/NotificationsFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/NotificationsFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 3

    .line 126
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->-$$Nest$fgetnotificationModelList(Lcom/startapps/crossx/view/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    .line 128
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 130
    new-instance v0, Lcom/startapps/crossx/model/NotificationModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/NotificationModel;-><init>()V

    .line 131
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/model/NotificationModel;->setId(J)V

    .line 132
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/NotificationModel;->setMessage(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/NotificationModel;->setDate(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/NotificationsFragment;

    invoke-static {v1}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->-$$Nest$fgetnotificationModelList(Lcom/startapps/crossx/view/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/NotificationsFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->-$$Nest$fgetnotificationModelList(Lcom/startapps/crossx/view/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 140
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/NotificationsFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->-$$Nest$fgetnotificationAdapter(Lcom/startapps/crossx/view/fragment/NotificationsFragment;)Lcom/startapps/crossx/view/adapter/NotificationAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/NotificationAdapter;->notifyDataSetChanged()V

    .line 141
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/NotificationsFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->progressNotification:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
