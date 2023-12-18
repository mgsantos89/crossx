.class Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$1;
.super Ljava/lang/Object;
.source "UserMembershipAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

.field final synthetic val$userMembership:Lcom/startapps/crossx/model/UserMembership;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;Lcom/startapps/crossx/model/UserMembership;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$1;->val$userMembership:Lcom/startapps/crossx/model/UserMembership;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 91
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

    iget-object v0, v0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$1;->val$userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v2, p0, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;

    invoke-static {v2}, Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;->-$$Nest$fgetuserModel(Lcom/startapps/crossx/view/adapter/UserMembershipAdapter;)Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Intents;->goToUserMembershipDetail(Landroid/content/Context;Lcom/startapps/crossx/model/UserMembership;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
