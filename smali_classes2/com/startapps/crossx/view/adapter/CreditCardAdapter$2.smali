.class Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;
.super Ljava/lang/Object;
.source "CreditCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

.field final synthetic val$creditCard:Lcom/startapps/crossx/model/UserCreditCard;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;Lcom/startapps/crossx/model/UserCreditCard;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;->val$creditCard:Lcom/startapps/crossx/model/UserCreditCard;

    iput p3, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->-$$Nest$fgetonCreditCardListener(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;)Lcom/startapps/crossx/Interfaces/OnCreditCardListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->-$$Nest$fgetonCreditCardListener(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;)Lcom/startapps/crossx/Interfaces/OnCreditCardListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;->val$creditCard:Lcom/startapps/crossx/model/UserCreditCard;

    iget v1, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/Interfaces/OnCreditCardListener;->onDeleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V

    :cond_0
    return-void
.end method
