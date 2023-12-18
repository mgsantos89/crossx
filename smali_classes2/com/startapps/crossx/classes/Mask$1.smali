.class Lcom/startapps/crossx/classes/Mask$1;
.super Ljava/lang/Object;
.source "Mask.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/classes/Mask;->insert(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isUpdating:Z

.field old:Ljava/lang/String;

.field final synthetic val$ediTxt:Landroid/widget/EditText;

.field final synthetic val$mask:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/startapps/crossx/classes/Mask$1;->val$mask:Ljava/lang/String;

    iput-object p2, p0, Lcom/startapps/crossx/classes/Mask$1;->val$ediTxt:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/startapps/crossx/classes/Mask$1;->old:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/classes/Mask;->unmask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-boolean v0, p0, Lcom/startapps/crossx/classes/Mask$1;->isUpdating:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    iput-object p1, p0, Lcom/startapps/crossx/classes/Mask$1;->old:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/startapps/crossx/classes/Mask$1;->isUpdating:Z

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/classes/Mask$1;->val$mask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v2, v0

    const-string v3, ""

    move-object v4, v3

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-char v5, v0, v1

    const/16 v6, 0x23

    if-eq v5, v6, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/startapps/crossx/classes/Mask$1;->old:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 46
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/startapps/crossx/classes/Mask$1;->isUpdating:Z

    .line 55
    iget-object p1, p0, Lcom/startapps/crossx/classes/Mask$1;->val$ediTxt:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p1, p0, Lcom/startapps/crossx/classes/Mask$1;->val$ediTxt:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

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
