.class Lcom/startapps/crossx/view/activity/CreditCardListActivity$3;
.super Ljava/lang/Object;
.source "CreditCardListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardListActivity;->deleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

.field final synthetic val$creditCard:Lcom/startapps/crossx/model/UserCreditCard;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;Lcom/startapps/crossx/model/UserCreditCard;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iput-object p2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$3;->val$creditCard:Lcom/startapps/crossx/model/UserCreditCard;

    iput p3, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$3;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$3;->val$creditCard:Lcom/startapps/crossx/model/UserCreditCard;

    iget v0, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$3;->val$position:I

    invoke-static {p1, p2, v0}, Lcom/startapps/crossx/view/activity/CreditCardListActivity;->-$$Nest$mdoDeleteCreditCard(Lcom/startapps/crossx/view/activity/CreditCardListActivity;Lcom/startapps/crossx/model/UserCreditCard;I)V

    return-void
.end method
