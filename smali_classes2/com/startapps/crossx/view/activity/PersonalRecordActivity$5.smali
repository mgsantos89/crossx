.class Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;
.super Ljava/lang/Object;
.source "PersonalRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/PersonalRecordsDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

.field final synthetic val$date:Landroid/widget/EditText;

.field final synthetic val$editTextDescription:Landroid/widget/EditText;

.field final synthetic val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic val$personalRecordsDetails:Lcom/startapps/crossx/model/PersonalRecordsDetails;

.field final synthetic val$result:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/startapps/crossx/model/PersonalRecordsDetails;Landroid/widget/EditText;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 530
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iput-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$date:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$result:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$personalRecordsDetails:Lcom/startapps/crossx/model/PersonalRecordsDetails;

    iput-object p5, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$editTextDescription:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 534
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$date:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[^\\d.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 536
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$result:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 538
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    const-string v0, "Ops, preencha seu personal record"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 542
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 544
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$date:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 545
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$date:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v1

    .line 546
    iget-object v4, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$date:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 548
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 549
    invoke-virtual {v7, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 550
    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 551
    invoke-virtual {v7, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 553
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$personalRecordsDetails:Lcom/startapps/crossx/model/PersonalRecordsDetails;

    const-string v2, "O valor digitado no resultado \u00e9 inv\u00e1lido"

    const/16 v3, 0x3b

    const-string v4, ":"

    const-string/jumbo v5, "tempo"

    if-nez p1, :cond_3

    .line 555
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fgetrersultTypeName(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 556
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 557
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object v5, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$result:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$mformatResultToPost(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 559
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 560
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v3, :cond_1

    .line 563
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$result:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$mformatResultToPost(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {v1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fgetcategoryID(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$editTextDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v7, v0, v1, v2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$msendResult(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/util/Calendar;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 577
    :cond_3
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v6, "Click"

    const-string v8, "PR - Editar resultado"

    const-string v9, "Button"

    invoke-virtual {p1, v9, v6, v8}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fgetrersultTypeName(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 580
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 581
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object v5, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$result:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$mformatResultToPost(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 583
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_5

    .line 584
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v3, :cond_4

    .line 587
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 593
    :cond_5
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$personalRecordsDetails:Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getId()J

    move-result-wide v8

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$result:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$mformatResultToPost(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fgetcategoryID(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)I

    move-result v11

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$editTextDescription:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$meditResult(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/util/Calendar;JLjava/lang/String;ILjava/lang/String;)V

    .line 601
    :goto_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 603
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fgetmActionMode(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 604
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fgetmActionMode(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_3

    .line 609
    :cond_6
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    const-string v0, "Data invalida"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_3
    return-void
.end method
