.class Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$1;
.super Ljava/lang/Object;
.source "CreateGroupAthletesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->fillUsers(Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;Lcom/startapps/crossx/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

.field final synthetic val$model:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;Lcom/startapps/crossx/model/UserModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$1;->val$model:Lcom/startapps/crossx/model/UserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$1;->val$model:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->goToUserActivity(Lcom/startapps/crossx/model/UserModel;)V

    return-void
.end method
