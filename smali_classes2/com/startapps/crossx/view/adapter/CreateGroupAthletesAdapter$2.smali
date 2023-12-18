.class Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;
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

.field final synthetic val$holder:Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;

.field final synthetic val$model:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->val$model:Lcom/startapps/crossx/model/UserModel;

    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->val$holder:Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->listUsersSelected:Ljava/util/List;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->val$model:Lcom/startapps/crossx/model/UserModel;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->listUsersSelected:Ljava/util/List;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->val$model:Lcom/startapps/crossx/model/UserModel;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->val$holder:Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;->getBtSelected()Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter;->listUsersSelected:Ljava/util/List;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->val$model:Lcom/startapps/crossx/model/UserModel;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CreateGroupAthletesAdapter$2;->val$holder:Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/CreateGroupAthletesHolder;->getBtSelected()Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    :goto_0
    return-void
.end method
