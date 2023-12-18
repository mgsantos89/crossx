.class Lcom/startapps/crossx/view/adapter/HistoryAdapter$1;
.super Ljava/lang/Object;
.source "HistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/HistoryAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/HistoryAdapter;

.field final synthetic val$history:Lcom/startapps/crossx/model/History;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/HistoryAdapter;Lcom/startapps/crossx/model/History;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/HistoryAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter$1;->val$history:Lcom/startapps/crossx/model/History;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/HistoryAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->-$$Nest$fgetinfoMembership(Lcom/startapps/crossx/view/adapter/HistoryAdapter;)Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter$1;->val$history:Lcom/startapps/crossx/model/History;

    iget-object v0, v0, Lcom/startapps/crossx/model/History;->products:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/Product;

    iget-wide v0, v0, Lcom/startapps/crossx/model/Product;->id:J

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;->showMembershipDetailsClickListener(J)V

    return-void
.end method
