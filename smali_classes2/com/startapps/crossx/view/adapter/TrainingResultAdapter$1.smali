.class Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$1;
.super Ljava/lang/Object;
.source "TrainingResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;

    iput p2, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->resultWodListener:Lcom/startapps/crossx/Interfaces/ResultWodListener;

    iget v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;

    invoke-virtual {v1, v0}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/UserResultModel;

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/Interfaces/ResultWodListener;->onEditResult(ILcom/startapps/crossx/model/UserResultModel;)V

    return-void
.end method
