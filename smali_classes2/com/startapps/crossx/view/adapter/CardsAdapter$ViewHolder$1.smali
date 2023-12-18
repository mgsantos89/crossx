.class Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "CardsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->format(Lcom/startapps/crossx/model/CreditCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;

.field final synthetic val$creditCard:Lcom/startapps/crossx/model/CreditCard;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;Lcom/startapps/crossx/model/CreditCard;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;->this$1:Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;->val$creditCard:Lcom/startapps/crossx/model/CreditCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;->this$1:Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/CardsAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->-$$Nest$fgetcardsAdapterClickListener(Lcom/startapps/crossx/view/adapter/CardsAdapter;)Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;->val$creditCard:Lcom/startapps/crossx/model/CreditCard;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/view/adapter/CardsAdapter$CardsAdapterClickListener;->adapterItemClickListener(Lcom/startapps/crossx/model/CreditCard;)V

    .line 109
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;->this$1:Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->radioButtonBrandSelected:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;->this$1:Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/CardsAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;->val$creditCard:Lcom/startapps/crossx/model/CreditCard;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->-$$Nest$mcheckedItem(Lcom/startapps/crossx/view/adapter/CardsAdapter;Lcom/startapps/crossx/model/CreditCard;)V

    :cond_0
    return-void
.end method
