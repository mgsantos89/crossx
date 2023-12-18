.class Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "AddUserGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->saveGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/AddUserGroupActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/AddUserGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AddUserGroupActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 160
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AddUserGroupActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AddUserGroupActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->listUsers:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 168
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AddUserGroupActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AddUserGroupActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->listUsers:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 1

    .line 174
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 176
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AddUserGroupActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AddUserGroupActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;->listUsers:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AddUserGroupActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AddUserGroupActivity;

    const-string/jumbo p2, "usu\u00e1rios adicionados com sucesso"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
