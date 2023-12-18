.class Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$1;
.super Ljava/lang/Object;
.source "BoxAutoCompleteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

.field final synthetic val$model:Lcom/startapps/crossx/model/BoxModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;Lcom/startapps/crossx/model/BoxModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$1;->val$model:Lcom/startapps/crossx/model/BoxModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->activity:Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$1;->val$model:Lcom/startapps/crossx/model/BoxModel;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;->fillForm(Lcom/startapps/crossx/model/BoxModel;)V

    return-void
.end method
