.class Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;
.super Ljava/lang/Object;
.source "UserMembershipPaymentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;

.field final synthetic val$payment:Lcom/startapps/crossx/model/Payment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;Lcom/startapps/crossx/model/Payment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->val$payment:Lcom/startapps/crossx/model/Payment;

    iput p3, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->val$payment:Lcom/startapps/crossx/model/Payment;

    iget-object p1, p1, Lcom/startapps/crossx/model/Payment;->paymentMethodId:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    sget-object v0, Lcom/startapps/crossx/model/Payment$PaymentMethod;->ONLINE_ORDER:Lcom/startapps/crossx/model/Payment$PaymentMethod;

    if-ne p1, v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->-$$Nest$fgetonPaymentListener(Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;)Lcom/startapps/crossx/Interfaces/OnPaymentListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->val$payment:Lcom/startapps/crossx/model/Payment;

    iget v1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/Interfaces/OnPaymentListener;->onSeeOrderInvoice(Lcom/startapps/crossx/model/Payment;I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->-$$Nest$fgetonPaymentListener(Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;)Lcom/startapps/crossx/Interfaces/OnPaymentListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->val$payment:Lcom/startapps/crossx/model/Payment;

    iget v1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter$2;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/Interfaces/OnPaymentListener;->onPaidInvoice(Lcom/startapps/crossx/model/Payment;I)V

    :goto_0
    return-void
.end method
