.class Lcom/startapps/crossx/view/activity/GroupNewMessageActivity$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "GroupNewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->sendMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity$1;->this$0:Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 119
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity$1;->this$0:Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;->goBack()V

    return-void
.end method
