.class Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;
.super Ljava/lang/Object;
.source "AbstractWorkoutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/WodsModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

.field final synthetic val$btSetCategorie:Landroid/widget/Button;

.field final synthetic val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic val$notResult:Landroid/widget/Button;

.field final synthetic val$textDescription:Landroid/widget/EditText;

.field final synthetic val$textRepetitions:Landroid/widget/EditText;

.field final synthetic val$textResult:Landroid/widget/EditText;

.field final synthetic val$wood:Lcom/startapps/crossx/model/WodsModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/Button;Lcom/startapps/crossx/model/WodsModel;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$btSetCategorie:Landroid/widget/Button;

    iput-object p3, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textResult:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$notResult:Landroid/widget/Button;

    iput-object p5, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$wood:Lcom/startapps/crossx/model/WodsModel;

    iput-object p6, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textRepetitions:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textDescription:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 186
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$btSetCategorie:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    const v2, 0x7f12026d

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textResult:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$notResult:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    const v2, 0x7f1201a4

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 196
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$wood:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WodsModel;->getResultTypeId()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textResult:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textRepetitions:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iget-object v1, v1, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WodsModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tempo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textResult:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->-$$Nest$mformatResult(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textResult:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$wood:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/WodsModel;->getResultTypeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :goto_1
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$wood:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WodsModel;->getResultTypeId()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$notResult:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-nez v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textResult:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 215
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 216
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_4

    .line 219
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "O valor digitado no resultado \u00e9 inv\u00e1lido"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iget-boolean v0, v0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->isEditResult:Z

    if-eqz v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$notResult:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->-$$Nest$mdoSendEdiResult(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Ljava/util/Map;Ljava/lang/String;Z)V

    goto :goto_3

    .line 231
    :cond_6
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$textDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$notResult:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->-$$Nest$mdoSendResult(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Ljava/util/Map;Ljava/lang/String;Z)V

    .line 234
    :goto_3
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    .line 235
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    :goto_4
    return-void
.end method
