.class Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;
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

    .line 440
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardNumber:Landroid/widget/TextView;

    const-string v1, "**** **** **** ****"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/CreditCardHelper;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "discover"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v0, "visa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "aura"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "amex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "jcb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v1

    goto :goto_1

    :sswitch_6
    const-string v0, "elo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "diners"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "hipercard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_9
    const-string v0, "mastercard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    move v3, v2

    :goto_1
    const p1, 0x7f060020

    const-string v0, "#### #### #### #### ###"

    packed-switch v3, :pswitch_data_0

    :goto_2
    move v0, v2

    goto/16 :goto_3

    .line 508
    :pswitch_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v3, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v4, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v4, v4, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    const p1, 0x7f060023

    const v0, 0x7f080106

    goto/16 :goto_3

    .line 468
    :pswitch_1
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v4, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v5, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v5, v5, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    goto :goto_2

    .line 473
    :pswitch_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v3, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v4, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v4, v4, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    const p1, 0x7f06002d

    const v0, 0x7f08015e

    goto/16 :goto_3

    .line 498
    :pswitch_3
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v0, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v3, v3, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    const-string v4, "##### ####### #######"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    const p1, 0x7f06001f

    const v0, 0x7f0800ca

    goto/16 :goto_3

    .line 488
    :pswitch_4
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v0, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v3, v3, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    const-string v4, "#### ###### #####"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    const p1, 0x7f06001e

    const v0, 0x7f0800c4

    goto/16 :goto_3

    .line 493
    :pswitch_5
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v3, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v4, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v4, v4, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    const p1, 0x7f060029

    const v0, 0x7f08011a

    goto :goto_3

    .line 478
    :pswitch_6
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v3, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v4, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v4, v4, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    const p1, 0x7f060024

    const v0, 0x7f08010c

    goto :goto_3

    .line 503
    :pswitch_7
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v0, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v3, v3, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    const-string v4, "#### ###### ####"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    const p1, 0x7f060022

    const v0, 0x7f080105

    goto :goto_3

    .line 513
    :pswitch_8
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v0, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v3, v3, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    const-string v4, "#### ##### #### ####"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    const p1, 0x7f060028

    const v0, 0x7f0800d5

    goto :goto_3

    .line 483
    :pswitch_9
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    new-instance v3, Lcom/startapps/crossx/controller/utils/MaskText;

    iget-object v4, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v4, v4, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->numberEdit:Landroid/widget/EditText;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/startapps/crossx/controller/utils/MaskText;-><init>(Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->-$$Nest$fputmaskNumber(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Lcom/startapps/crossx/controller/utils/MaskText;)V

    const p1, 0x7f06002a

    const v0, 0x7f080129

    .line 517
    :goto_3
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object v3, v3, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardBackground:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/startapps/crossx/view/CrossXApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    if-nez v0, :cond_b

    .line 519
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardBrand:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 521
    :cond_b
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardBrand:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$5;->this$0:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->cardBrand:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79845b8e -> :sswitch_9
        -0x514f2a74 -> :sswitch_8
        -0x4f6033c3 -> :sswitch_7
        0x188a8 -> :sswitch_6
        0x19a49 -> :sswitch_5
        0x2dbddf -> :sswitch_4
        0x2ddd63 -> :sswitch_3
        0x373c41 -> :sswitch_2
        0x6527f10 -> :sswitch_1
        0x104877e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
