.class public Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;
.super Lcom/startapps/crossx/controller/utils/SimpleTextWatcher;
.source "MaskTextChangedListener.java"


# instance fields
.field private editText:Landroid/widget/EditText;

.field private isUpdating:Z

.field private mask:Ljava/lang/String;

.field private oldText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/model/enuns/MaskTypeEnum;Landroid/widget/EditText;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/SimpleTextWatcher;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->oldText:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/startapps/crossx/model/enuns/MaskTypeEnum;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->mask:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->editText:Landroid/widget/EditText;

    return-void
.end method

.method public static applyMask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->removeMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->maskText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static maskText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 40
    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 42
    aget-char v4, p0, v1

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    const/16 v5, 0x41

    if-eq v4, v5, :cond_2

    const/16 v5, 0x39

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 44
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object v3
.end method

.method public static removeMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "[.]"

    const-string v1, ""

    .line 25
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[-]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[/]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[(]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[)]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[ ]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[+]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 58
    iget-boolean p2, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->isUpdating:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->isUpdating:Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->removeMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget-object p3, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->oldText:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-le p2, p3, :cond_1

    .line 63
    iget-object p2, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->mask:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->maskText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->removeMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    .line 65
    iput-boolean p3, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->isUpdating:Z

    .line 66
    iget-object p3, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p3, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setSelection(I)V

    move-object p1, p2

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/MaskTextChangedListener;->oldText:Ljava/lang/String;

    :goto_0
    return-void
.end method
