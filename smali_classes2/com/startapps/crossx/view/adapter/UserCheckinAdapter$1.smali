.class Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$1;
.super Ljava/lang/Object;
.source "UserCheckinAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

.field final synthetic val$model:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;Lcom/startapps/crossx/model/UserModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$1;->val$model:Lcom/startapps/crossx/model/UserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->onClickUserListener:Lcom/startapps/crossx/Interfaces/OnClickUserCheckinListener;

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->onClickUserListener:Lcom/startapps/crossx/Interfaces/OnClickUserCheckinListener;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$1;->val$model:Lcom/startapps/crossx/model/UserModel;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/Interfaces/OnClickUserCheckinListener;->onClickUserListener(Lcom/startapps/crossx/model/UserModel;)V

    :cond_0
    return-void
.end method
