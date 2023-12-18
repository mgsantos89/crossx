.class Lcom/startapps/crossx/view/activity/CreateGroupActivity$3;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "CreateGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreateGroupActivity;->createGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CreateGroupActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreateGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreateGroupActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 225
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onServerError "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServerError"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 1

    .line 215
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    const-string p2, "group_id"

    .line 217
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreateGroupActivity;

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goToTimelineGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 219
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreateGroupActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreateGroupActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/CreateGroupActivity;->finish()V

    return-void
.end method
