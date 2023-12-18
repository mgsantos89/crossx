.class Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;
.super Ljava/lang/Object;
.source "CreditCardRegisterActivity.java"

# interfaces
.implements Lcom/startapps/crossx/rest/listener/ApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getAddressByZipCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapps/crossx/rest/listener/ApiListener<",
        "Lcom/startapps/crossx/model/ZipcodeAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .line 238
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Falha ao encontrar esse cep"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 239
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$mdisablePostalCode(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V

    return-void
.end method

.method public onSuccess(Lcom/startapps/crossx/model/ZipcodeAddress;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getStreet()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStreetEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderDistrictEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderDistrictEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStateEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderStateEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCityEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ZipcodeAddress;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 232
    :cond_6
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->holderCityEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p1, Lcom/startapps/crossx/model/ZipcodeAddress;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$2;->onSuccess(Lcom/startapps/crossx/model/ZipcodeAddress;)V

    return-void
.end method
