.class Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;
.super Ljava/lang/Object;
.source "ExerciseDetailActivity_old.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/PersonalRecordsDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

.field final synthetic val$date:Landroid/widget/EditText;

.field final synthetic val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic val$personalRecordsDetails:Lcom/startapps/crossx/model/PersonalRecordsDetails;

.field final synthetic val$result:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Landroid/widget/EditText;Lcom/startapps/crossx/model/PersonalRecordsDetails;Landroid/widget/EditText;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 509
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iput-object p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$date:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$personalRecordsDetails:Lcom/startapps/crossx/model/PersonalRecordsDetails;

    iput-object p4, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$result:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 513
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$date:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[^\\d.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 517
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$date:Landroid/widget/EditText;

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

    .line 518
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$date:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    .line 519
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$date:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$date:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 521
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 522
    invoke-virtual {v5, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 523
    invoke-virtual {v5, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 524
    invoke-virtual {v5, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 526
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$personalRecordsDetails:Lcom/startapps/crossx/model/PersonalRecordsDetails;

    const-string/jumbo v0, "tempo"

    if-nez p1, :cond_1

    .line 528
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgetrersultTypeName(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$result:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$mformatResult(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$result:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    :goto_0
    invoke-static {p1, v5, v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$msendResult(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Ljava/util/Calendar;Ljava/lang/String;)V

    goto :goto_2

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getId()J

    move-result-wide v2

    .line 535
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgetrersultTypeName(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 536
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$result:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$mformatResult(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 537
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$result:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 534
    :goto_1
    invoke-static {v1, v2, v3, v5, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$meditResult(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;JLjava/util/Calendar;Ljava/lang/String;)V

    .line 540
    :goto_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 542
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgetmActionMode(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 543
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgetmActionMode(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_3

    .line 548
    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    const-string v0, "Data invalida"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_3
    return-void
.end method
