.class Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$1;
.super Ljava/lang/Object;
.source "CreditCardRegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 172
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 183
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    .line 184
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fgetmaskZipCode(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)Lcom/startapps/crossx/controller/utils/MaskText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/MaskText;->stringUnMask()Ljava/lang/String;

    move-result-object p1

    .line 185
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-static {p2, p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$mgetAddressByZipCode(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$mdisablePostalCode(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    :goto_0
    return-void
.end method
