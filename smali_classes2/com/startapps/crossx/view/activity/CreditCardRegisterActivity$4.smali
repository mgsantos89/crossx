.class Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$4;
.super Ljava/lang/Object;
.source "CreditCardRegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->addListenersInEditTex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$4;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 431
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$4;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardHolderName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$4;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardHolderName:Landroid/widget/TextView;

    const-string v0, "***************"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
