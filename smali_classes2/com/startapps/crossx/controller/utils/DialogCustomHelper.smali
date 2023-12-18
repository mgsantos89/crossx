.class public Lcom/startapps/crossx/controller/utils/DialogCustomHelper;
.super Ljava/lang/Object;
.source "DialogCustomHelper.java"


# static fields
.field private static containerDataCard:Landroid/view/View;

.field private static textViewBrandCardNumber:Landroid/widget/TextView;

.field private static textViewCardLabel:Landroid/widget/TextView;

.field private static textViewTotalPaidLabel:Landroid/widget/TextView;

.field private static textviewPaidValue:Landroid/widget/TextView;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private builder:Landroid/app/Dialog;

.field private buttonDown:Landroid/widget/Button;

.field private buttonUp:Landroid/widget/Button;

.field private final dialogCustomPaymentsListener:Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;

.field private dialogType:I

.field private imageViewType:Landroid/widget/ImageView;

.field private final notification:Lcom/startapps/crossx/model/Notification;

.field private textViewDescription:Landroid/widget/TextView;

.field private textViewFooter:Landroid/widget/TextView;

.field private textViewTitle:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetbuilder(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->builder:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogCustomPaymentsListener(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogCustomPaymentsListener:Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnotification(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Lcom/startapps/crossx/model/Notification;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapps/crossx/model/Notification;Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    .line 44
    iput-object p3, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogCustomPaymentsListener:Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;

    .line 45
    new-instance p3, Landroid/app/Dialog;

    invoke-direct {p3, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->builder:Landroid/app/Dialog;

    .line 47
    invoke-virtual {p2}, Lcom/startapps/crossx/model/Notification;->getType()Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    move-result-object p1

    sget-object p2, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->DUE_DATE:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->portionToPay()V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->paymentDone()V

    :goto_0
    return-void
.end method

.method private checkDialogsPaymentsWarnings()V
    .locals 13

    .line 170
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_TO_PAY:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0xa

    const v3, 0x7f12015b

    const v4, 0x7f12015a

    const v5, 0x7f0800fd

    const-wide/16 v6, 0xb

    const/4 v8, 0x4

    const v9, 0x7f12016d

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->checkDueDateTomorrow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->FIRST_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 173
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->expirationInDays(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v10

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v6, v6, Lcom/startapps/crossx/model/Notification;->membershipName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v10, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_TO_PAY:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v10}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v10, 0x7f120166

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->checkDueDateTomorrow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->SECOND_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 185
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->expirationInDays(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v0, v11, v6

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v11

    .line 189
    :goto_1
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v5, v5, Lcom/startapps/crossx/model/Notification;->membershipName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 193
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_TO_PAY:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f120164

    const v2, 0x7f12015c

    const v4, 0x7f0800fe

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-boolean v0, v0, Lcom/startapps/crossx/model/Notification;->userHasCreditCards:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->checkDueDateTomorrow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->THIRD_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 197
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 199
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v4, v4, Lcom/startapps/crossx/model/Notification;->membershipName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 201
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 202
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v3, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_TO_PAY:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-boolean v0, v0, Lcom/startapps/crossx/model/Notification;->userHasCreditCards:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->checkDueDateTomorrow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-nez v0, :cond_5

    .line 205
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->FOURTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 206
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(I)V

    .line 208
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 209
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v3, v3, Lcom/startapps/crossx/model/Notification;->membershipName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_EXPIRATION:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0800fb

    const v2, 0x7f12015d

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-boolean v0, v0, Lcom/startapps/crossx/model/Notification;->userHasCreditCards:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->checkDueDateTomorrow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-eqz v0, :cond_6

    .line 214
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->FIFTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 215
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->setButtonVisible()V

    .line 218
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 220
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v2, v2, Lcom/startapps/crossx/model/Notification;->membershipName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120169

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v3, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_EXPIRATION:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->checkDueDateToday(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-nez v0, :cond_7

    .line 223
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->SIXTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 224
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v3, v3, Lcom/startapps/crossx/model/Notification;->membershipName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120168

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->setButtonVisible()V

    .line 229
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(I)V

    .line 230
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 232
    :cond_7
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_EXPIREAD:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f12016a

    const v4, 0x7f0800fa

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->checkDueDateToday(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-boolean v0, v0, Lcom/startapps/crossx/model/Notification;->userHasCreditCards:Z

    if-nez v0, :cond_8

    .line 233
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->SEVENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 234
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v4, v4, Lcom/startapps/crossx/model/Notification;->membershipName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->setButtonVisible()V

    .line 237
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 238
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 241
    :cond_8
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v5, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PLOT_EXPIREAD:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->checkDueDateExpiration(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-boolean v0, v0, Lcom/startapps/crossx/model/Notification;->userHasCreditCards:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-nez v0, :cond_9

    .line 242
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->EIGHTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 243
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v5, v5, Lcom/startapps/crossx/model/Notification;->membershipName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 250
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v0, v0, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v1, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PAYMENT_RECCURENT:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 253
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->NINTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 254
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    const v1, 0x7f0800f4

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v2, v2, Lcom/startapps/crossx/model/Notification;->membershipName:Ljava/lang/String;

    iget-object v4, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v4, v4, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v4, v4, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v5, v5, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v5, v5, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    iget-object v6, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v6, v6, Lcom/startapps/crossx/model/Notification;->value:Ljava/lang/String;

    invoke-static {v6}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f120156

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    const v1, 0x7f120160

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 259
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    const v1, 0x7f120170

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 260
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_2
    return-void
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0212

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    const v0, 0x7f0a0474

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewTitle:Landroid/widget/TextView;

    const v0, 0x7f0a00c8

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    const v0, 0x7f0a00b4

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    const v0, 0x7f0a0455

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    return-void
.end method

.method private setButtonVisible()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public checkDialogsPaymentsDone()V
    .locals 8

    .line 265
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move v1, v0

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v2, v2, Lcom/startapps/crossx/model/Notification;->products:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v2, v2, Lcom/startapps/crossx/model/Notification;->products:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/Product;

    iget-wide v4, v2, Lcom/startapps/crossx/model/Product;->membershipRecurrenceCreditCardId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 274
    :goto_1
    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v2, v2, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v4, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PAYMENT_SUCCESS:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v4}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " "

    const v5, 0x7f120157

    const v6, 0x7f0800f5

    const v7, 0x7f1201eb

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v2, v2, Lcom/startapps/crossx/model/Notification;->products:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    if-nez v1, :cond_2

    .line 276
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->TENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 277
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 279
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textviewPaidValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewBrandCardNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v2, v2, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v2, v2, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v2, v2, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v2, v2, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->setButtonVisible()V

    .line 282
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    const v1, 0x7f120166

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 283
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    sget-object v2, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->PAYMENT_SUCCESS:Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-eqz v1, :cond_3

    .line 286
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ELEVENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 287
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 289
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewBrandCardNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v3, v3, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v3, v3, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v3, v3, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v3, v3, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textviewPaidValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->type:Ljava/lang/String;

    sget-object v3, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->CREDIT_CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f120161

    const v4, 0x7f120163

    const v5, 0x7f0800f7

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-nez v1, :cond_4

    .line 295
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->TWELFTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 296
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v5, v5, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v5, v5, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    iget-object v6, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v6, v6, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v6, v6, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->setButtonVisible()V

    .line 299
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    const v1, 0x7f12015d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 300
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 301
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->containerDataCard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 303
    :cond_4
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->type:Ljava/lang/String;

    sget-object v6, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->CREDIT_CARD_REFUSED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    invoke-virtual {v6}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->recurrenceCreditCard:Lcom/startapps/crossx/model/CreditCard;

    if-eqz v1, :cond_5

    .line 304
    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->THIRTEENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 305
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v5, v5, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v5, v5, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    iget-object v6, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v6, v6, Lcom/startapps/crossx/model/Notification;->creditCard:Lcom/startapps/crossx/model/CreditCard;

    iget-object v6, v6, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->setButtonVisible()V

    .line 308
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    const v1, 0x7f120162

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 309
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 310
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->containerDataCard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 312
    :cond_5
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->notification:Lcom/startapps/crossx/model/Notification;

    iget-object v1, v1, Lcom/startapps/crossx/model/Notification;->type:Ljava/lang/String;

    sget-object v3, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->BANK_SLIP_CREATED:Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/enuns/NotificationTypeEnum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 313
    sget-object v1, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->FOURTEENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->dialogType:I

    .line 314
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->imageViewType:Landroid/widget/ImageView;

    const v3, 0x7f080102

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewDescription:Landroid/widget/TextView;

    const v3, 0x7f12015e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 316
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 319
    sget-object v0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->containerDataCard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public paymentDone()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006c

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->findViews(Landroid/view/View;)V

    const v1, 0x7f0a044c

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewBrandCardNumber:Landroid/widget/TextView;

    const v1, 0x7f0a0477

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textviewPaidValue:Landroid/widget/TextView;

    const v1, 0x7f0a0476

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewTotalPaidLabel:Landroid/widget/TextView;

    const v1, 0x7f0a044e

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewCardLabel:Landroid/widget/TextView;

    const v1, 0x7f0a0112

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->containerDataCard:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    new-instance v2, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;-><init>(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    new-instance v2, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;-><init>(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->checkDialogsPaymentsDone()V

    .line 163
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->builder:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 164
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->builder:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->builder:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public portionToPay()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006d

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->findViews(Landroid/view/View;)V

    const v1, 0x7f0a045b

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonUp:Landroid/widget/Button;

    new-instance v2, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$1;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$1;-><init>(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->buttonDown:Landroid/widget/Button;

    new-instance v2, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$2;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$2;-><init>(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->textViewFooter:Landroid/widget/TextView;

    new-instance v2, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;-><init>(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->checkDialogsPaymentsWarnings()V

    .line 115
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->builder:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 116
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->builder:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->builder:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
