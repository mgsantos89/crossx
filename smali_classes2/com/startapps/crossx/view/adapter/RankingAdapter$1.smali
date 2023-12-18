.class Lcom/startapps/crossx/view/adapter/RankingAdapter$1;
.super Ljava/lang/Object;
.source "RankingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/RankingAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/RankingAdapter;

.field final synthetic val$model:Lcom/startapps/crossx/model/RankingUserModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/RankingAdapter;Lcom/startapps/crossx/model/RankingUserModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/RankingAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$1;->val$model:Lcom/startapps/crossx/model/RankingUserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/RankingAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter;->-$$Nest$fgetonClickRankingListener(Lcom/startapps/crossx/view/adapter/RankingAdapter;)Lcom/startapps/crossx/Interfaces/OnClickRankingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/RankingAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/RankingAdapter;->-$$Nest$fgetonClickRankingListener(Lcom/startapps/crossx/view/adapter/RankingAdapter;)Lcom/startapps/crossx/Interfaces/OnClickRankingListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/RankingAdapter$1;->val$model:Lcom/startapps/crossx/model/RankingUserModel;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/Interfaces/OnClickRankingListener;->onClickRankingUserListener(Lcom/startapps/crossx/model/UserModel;)V

    :cond_0
    return-void
.end method
