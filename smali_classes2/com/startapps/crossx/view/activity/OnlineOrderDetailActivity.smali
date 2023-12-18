.class public Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "OnlineOrderDetailActivity.java"


# instance fields
.field public barcodeLabel:Landroid/widget/TextView;

.field public barcodeTitleLabel:Landroid/widget/TextView;

.field public copyButton:Landroid/widget/Button;

.field private currencySymbol:Ljava/lang/String;

.field public discountDescription:Landroid/widget/TextView;

.field public dueDateLabel:Landroid/widget/TextView;

.field private payment:Lcom/startapps/crossx/model/Payment;

.field private paymentClient:Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;

.field public progressBar:Landroid/widget/ProgressBar;

.field public sendEmailButton:Landroid/widget/Button;

.field public valueLabel:Landroid/widget/TextView;

.field public valueTitleLabel:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fputpayment(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;Lcom/startapps/crossx/model/Payment;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    return-void
.end method

.method static bridge synthetic -$$Nest$mpopulateInformation(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->populateInformation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private fetchOnlineOrderDetail()V
    .locals 8

    .line 108
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->paymentClient:Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    iget-wide v3, v0, Lcom/startapps/crossx/model/Payment;->id:J

    const-string v5, "order"

    const/4 v6, 0x0

    new-instance v7, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;

    invoke-direct {v7, p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$1;-><init>(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;)V

    invoke-virtual/range {v2 .. v7}, Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;->payInvoice(JLjava/lang/String;Ljava/lang/Integer;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method private populateInformation()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->valueLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    iget-object v2, v2, Lcom/startapps/crossx/model/Payment;->grossValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->barcodeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    iget-object v1, v1, Lcom/startapps/crossx/model/Payment;->onlineOrderBarcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    iget v0, v0, Lcom/startapps/crossx/model/Payment;->discountDays:I

    const/16 v1, 0x8

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->discountDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->discountDescription:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Valor de "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/Payment;->getDiscountValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " para pagamento at\u00e9 o dia "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/Payment;->getMaxDateTodDscount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->discountDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public copyButtonClick()V
    .locals 3

    const-string v0, "clipboard"

    .line 151
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 152
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    iget-object v1, v1, Lcom/startapps/crossx/model/Payment;->onlineOrderBarcode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v0, 0x7f1200c3

    const/4 v1, 0x0

    .line 154
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected defineFonts()V
    .locals 5

    .line 63
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->valueTitleLabel:Landroid/widget/TextView;

    const v2, 0x7f1201af

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->valueLabel:Landroid/widget/TextView;

    const v3, 0x7f1201b0

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->barcodeTitleLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->barcodeLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->dueDateLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->copyButton:Landroid/widget/Button;

    const v2, 0x7f1201ae

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->sendEmailButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1200c7

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d003c

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 195
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "payment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->finish()V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "currency_symbol"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->currencySymbol:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v1, "Detalhe do boleto"

    invoke-virtual {p1, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->defineToolbar()V

    .line 95
    new-instance p1, Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->paymentClient:Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;

    .line 96
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Payment;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p1, Lcom/startapps/crossx/model/Payment;->onlineOrderBarcode:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    iget-object p1, p1, Lcom/startapps/crossx/model/Payment;->onlineOrderBarcode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->populateInformation()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->fetchOnlineOrderDetail()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->finish()V

    .line 204
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public sendEmailButtonClick()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->paymentClient:Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->payment:Lcom/startapps/crossx/model/Payment;

    iget-wide v1, v1, Lcom/startapps/crossx/model/Payment;->id:J

    new-instance v3, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;

    invoke-direct {v3, p0}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$2;-><init>(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;->sendInvoiceToEmail(JLcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method
