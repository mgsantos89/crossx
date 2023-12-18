.class Lcom/startapps/crossx/view/activity/EditGroupActivity$5;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "EditGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/EditGroupActivity;->onDeleteUser(Lcom/startapps/crossx/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/EditGroupActivity;

.field final synthetic val$userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/EditGroupActivity;Lcom/startapps/crossx/model/UserModel;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity$5;->this$0:Lcom/startapps/crossx/view/activity/EditGroupActivity;

    iput-object p2, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity$5;->val$userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .line 307
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity$5;->this$0:Lcom/startapps/crossx/view/activity/EditGroupActivity;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/EditGroupActivity$5;->val$userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/activity/EditGroupActivity;->deleteUser(Lcom/startapps/crossx/model/UserModel;)V

    return-void
.end method
