.class Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$2;
.super Ljava/lang/Object;
.source "EditGroupAthletesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->fillUsers(Lcom/startapps/crossx/model/holder/EditGroupAthletesHolder;Lcom/startapps/crossx/model/UserModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    iput p2, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->onEditGroupListener:Lcom/startapps/crossx/Interfaces/OnEditGroup;

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->onEditGroupListener:Lcom/startapps/crossx/Interfaces/OnEditGroup;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;

    iget v1, p0, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/adapter/EditGroupAthletesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/UserModel;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/Interfaces/OnEditGroup;->onDeleteUser(Lcom/startapps/crossx/model/UserModel;)V

    :cond_0
    return-void
.end method
