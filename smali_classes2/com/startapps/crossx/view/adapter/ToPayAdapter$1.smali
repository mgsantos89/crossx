.class Lcom/startapps/crossx/view/adapter/ToPayAdapter$1;
.super Ljava/lang/Object;
.source "ToPayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/ToPayAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/ToPayAdapter;

.field final synthetic val$paymentModel:Lcom/startapps/crossx/model/PaymentModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/ToPayAdapter;Lcom/startapps/crossx/model/PaymentModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/ToPayAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter$1;->val$paymentModel:Lcom/startapps/crossx/model/PaymentModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/ToPayAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->-$$Nest$fgetinfoMembership(Lcom/startapps/crossx/view/adapter/ToPayAdapter;)Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter$1;->val$paymentModel:Lcom/startapps/crossx/model/PaymentModel;

    iget-object v0, v0, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/Product;

    iget-wide v0, v0, Lcom/startapps/crossx/model/Product;->id:J

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;->showMembershipDetailsClickListener(J)V

    return-void
.end method
