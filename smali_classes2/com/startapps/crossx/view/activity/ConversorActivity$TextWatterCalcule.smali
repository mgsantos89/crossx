.class public Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;
.super Ljava/lang/Object;
.source "ConversorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/activity/ConversorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextWatterCalcule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;


# direct methods
.method protected constructor <init>(Lcom/startapps/crossx/view/activity/ConversorActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .line 106
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    const-wide/16 v0, 0x0

    const-string v2, "0"

    const-string v3, "%.2f"

    const-string v4, "."

    const-string v5, ","

    const-string v6, ""

    if-eqz p1, :cond_2

    .line 108
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    .line 113
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 112
    invoke-virtual {p1, v4, v5}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->kgToLbConverter(D)D

    move-result-wide v4

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object v2, v2, Lcom/startapps/crossx/view/activity/ConversorActivity;->lbs:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    cmpl-double v0, v4, v0

    if-lez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/ConversorActivity;->lbs:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->lbs:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 120
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->lbs:Landroid/widget/EditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->lbs:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 126
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->lbs:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 130
    :goto_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    .line 131
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 130
    invoke-virtual {p1, v4, v5}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->lbToKgConverter(D)D

    move-result-wide v4

    .line 132
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 134
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object v2, v2, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    cmpl-double v0, v4, v0

    if-lez v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 138
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$TextWatterCalcule;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
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
