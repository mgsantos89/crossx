.class public Lcom/startapps/crossx/controller/utils/MaskText;
.super Ljava/lang/Object;
.source "MaskText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private current:Ljava/lang/String;

.field private et:Landroid/widget/EditText;

.field mPattern:Ljava/util/regex/Pattern;

.field private mask:[Ljava/lang/String;

.field private maxCaracterUnMask:I


# direct methods
.method public varargs constructor <init>(Landroid/widget/EditText;[Ljava/lang/String;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "^[0-9]$"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->mPattern:Ljava/util/regex/Pattern;

    .line 26
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/MaskText;->et:Landroid/widget/EditText;

    .line 27
    iput-object p2, p0, Lcom/startapps/crossx/controller/utils/MaskText;->mask:[Ljava/lang/String;

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/text/InputFilter;

    .line 30
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/MaskText;->lengthMask()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    iget-object v1, p0, Lcom/startapps/crossx/controller/utils/MaskText;->et:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 33
    array-length v0, p2

    if-le v0, p1, :cond_0

    aget-object v0, p2, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v1, p2, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    aget-object p2, p2, p1

    goto :goto_0

    :cond_0
    aget-object p2, p2, v2

    :goto_0
    const-string v0, "#"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 37
    :goto_1
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->maxCaracterUnMask:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->maxCaracterUnMask:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method private lengthMask()I
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->mask:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 66
    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/MaskText;->mask:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_0

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 96
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->current:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/MaskText;->stringUnMask()Ljava/lang/String;

    move-result-object p1

    .line 100
    iget v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->maxCaracterUnMask:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->mask:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->mask:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 105
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v2

    .line 106
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_2

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 114
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/MaskText;->current:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->et:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/MaskText;->et:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    :cond_4
    :goto_3
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

.method public stringUnMask()Ljava/lang/String;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[.]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[-]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[/]"

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[(]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[)]"

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ ]"

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validPhone()Z
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/MaskText;->mask:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/MaskText;->et:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
