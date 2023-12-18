.class public Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;
.super Landroidx/fragment/app/DialogFragment;
.source "DialogFragmentDataPayment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;,
        Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;
    }
.end annotation


# static fields
.field private static final DIALOG_FRAGMENT_DATA_PAYMENT:Ljava/lang/String; = "dialog_fragment_data_payment"

.field private static final DIALOG_LISTENER:Ljava/lang/String; = "dialog_listener"


# instance fields
.field buttonDown:Landroid/widget/Button;

.field buttonUp:Landroid/widget/Button;

.field containerDataCard:Landroid/view/View;

.field private dataPayment:Lcom/startapps/crossx/model/DataPayment;

.field private dialogListenerOnClick:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

.field imageViewType:Landroid/widget/ImageView;

.field textViewBrandCardNumber:Landroid/widget/TextView;

.field textViewCard:Landroid/widget/TextView;

.field textViewDescription:Landroid/widget/TextView;

.field textViewTitle:Landroid/widget/TextView;

.field textViewTotalPaid:Landroid/widget/TextView;

.field textViewTotalPaidValue:Landroid/widget/TextView;

.field private typePayment:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private setButtonUpAndDownVisible()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonUp:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private setupView()V
    .locals 8

    .line 141
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v0, v0, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v0, v0, Lcom/startapps/crossx/model/PushData;->products:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v3, v3, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v3, v3, Lcom/startapps/crossx/model/PushData;->products:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v3, v3, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v3, v3, Lcom/startapps/crossx/model/PushData;->products:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/Product;

    iget-wide v3, v3, Lcom/startapps/crossx/model/Product;->membershipRecurrenceCreditCardId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 151
    :goto_1
    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v2, v2, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v2, v2, Lcom/startapps/crossx/model/PushData;->products:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x7f1201eb

    const-string v4, " "

    const v5, 0x7f120157

    const v6, 0x7f0800f5

    const v7, 0x7f120158

    if-ne v2, v1, :cond_2

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTotalPaidValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v1, v1, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v1, v1, Lcom/startapps/crossx/model/PushData;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewBrandCardNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v2, v2, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v2, v2, Lcom/startapps/crossx/model/PushData;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v2, v2, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v2, v2, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v2, v2, Lcom/startapps/crossx/model/PushData;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v2, v2, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->setButtonUpAndDownVisible()V

    .line 158
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonUp:Landroid/widget/Button;

    const v1, 0x7f120166

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 160
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->ENABLE_PAYMENT:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->typePayment:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    goto/16 :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v0, v0, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v0, v0, Lcom/startapps/crossx/model/PushData;->type:Ljava/lang/String;

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PAYMENT_SUCCESS:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v0, v0, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v0, v0, Lcom/startapps/crossx/model/PushData;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewBrandCardNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v5, v5, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v5, v5, Lcom/startapps/crossx/model/PushData;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v5, v5, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v4, v4, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v4, v4, Lcom/startapps/crossx/model/PushData;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v4, v4, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTotalPaidValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v2, v2, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v2, v2, Lcom/startapps/crossx/model/PushData;->value:Ljava/lang/String;

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 170
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->OK:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->typePayment:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    .line 171
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v0, v0, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v0, v0, Lcom/startapps/crossx/model/PushData;->type:Ljava/lang/String;

    sget-object v2, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->CREDIT_CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f120161

    const v3, 0x7f120163

    const v4, 0x7f0800f7

    const v5, 0x7f12015f

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v0, v0, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v0, v0, Lcom/startapps/crossx/model/PushData;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-nez v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v4, v4, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v4, v4, Lcom/startapps/crossx/model/PushData;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v4, v4, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v5, v5, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v5, v5, Lcom/startapps/crossx/model/PushData;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v5, v5, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->setButtonUpAndDownVisible()V

    .line 179
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->TO_PAY_NOW:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->typePayment:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonUp:Landroid/widget/Button;

    const v3, 0x7f12015d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 182
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->containerDataCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v0, v0, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v0, v0, Lcom/startapps/crossx/model/PushData;->type:Ljava/lang/String;

    sget-object v6, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->CREDIT_CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    invoke-virtual {v6}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v0, v0, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v0, v0, Lcom/startapps/crossx/model/PushData;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v4, v4, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v4, v4, Lcom/startapps/crossx/model/PushData;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v4, v4, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v5, v5, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    iget-object v5, v5, Lcom/startapps/crossx/model/PushData;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v5, v5, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->setButtonUpAndDownVisible()V

    .line 190
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonUp:Landroid/widget/Button;

    const v3, 0x7f120162

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 191
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 192
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->CHANGE_CARD:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->typePayment:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    .line 193
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->containerDataCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static show(Lcom/startapps/crossx/model/DataPayment;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-static {p0, p1, v0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->show(Lcom/startapps/crossx/model/DataPayment;Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;)V

    return-void
.end method

.method public static show(Lcom/startapps/crossx/model/DataPayment;Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;)V
    .locals 3

    const-string v0, "show DialogFragmentDataPayment class"

    .line 208
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;-><init>()V

    .line 210
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data_payment"

    .line 211
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "dialog_listener"

    .line 212
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 214
    invoke-virtual {v0, p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->setCancelable(Z)V

    const-string p0, "dialog_fragment_data_payment"

    .line 215
    invoke-virtual {v0, p1, p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClickButtonDown()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dismiss()V

    .line 99
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dialogListenerOnClick:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;->clickDown()V

    :cond_0
    return-void
.end method

.method public onClickButtonUp()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dialogListenerOnClick:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->typePayment:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    if-eqz v0, :cond_4

    .line 110
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$1;->$SwitchMap$com$startapps$crossx$controller$utils$DialogFragmentDataPayment$TypePayment:[I

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->typePayment:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$TypePayment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dialogListenerOnClick:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v1, v1, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    invoke-interface {v0, v1}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;->clickedEnablePayment(Lcom/startapps/crossx/model/Notification;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dialogListenerOnClick:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v1, v1, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    invoke-interface {v0, v1}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;->clickedToPayNow(Lcom/startapps/crossx/model/Notification;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dialogListenerOnClick:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    iget-object v1, v1, Lcom/startapps/crossx/model/DataPayment;->pushData:Lcom/startapps/crossx/model/PushData;

    invoke-interface {v0, v1}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;->clickedChangeCard(Lcom/startapps/crossx/model/Notification;)V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dialogListenerOnClick:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

    invoke-interface {v0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;->clickedOk()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p3, 0x7f0d006c

    .line 79
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "data_payment"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/DataPayment;

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dataPayment:Lcom/startapps/crossx/model/DataPayment;

    .line 88
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "dialog_listener"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->dialogListenerOnClick:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$DialogListenerOnClick;

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->setupView()V

    :cond_1
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 131
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 133
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
