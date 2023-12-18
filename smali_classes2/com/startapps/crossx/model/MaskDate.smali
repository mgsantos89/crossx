.class public Lcom/startapps/crossx/model/MaskDate;
.super Ljava/lang/Object;
.source "MaskDate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private cal:Ljava/util/Calendar;

.field private current:Ljava/lang/String;

.field private ddmmyyyy:Ljava/lang/String;

.field private editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/startapps/crossx/model/MaskDate;->current:Ljava/lang/String;

    const-string v0, "DDMMYYYY"

    .line 17
    iput-object v0, p0, Lcom/startapps/crossx/model/MaskDate;->ddmmyyyy:Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/MaskDate;->cal:Ljava/util/Calendar;

    .line 21
    iput-object p1, p0, Lcom/startapps/crossx/model/MaskDate;->editText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/startapps/crossx/model/MaskDate;->current:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[^\\d.]"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object p4, p0, Lcom/startapps/crossx/model/MaskDate;->current:Ljava/lang/String;

    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x2

    move v1, p3

    move v0, p4

    :goto_0
    if-gt v0, p3, :cond_0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    const/16 v0, 0x8

    const/4 v2, 0x4

    if-ge p2, v0, :cond_2

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v3, p0, Lcom/startapps/crossx/model/MaskDate;->ddmmyyyy:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 49
    :cond_2
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 50
    invoke-virtual {p1, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 51
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v4, 0xc

    if-le v3, v4, :cond_3

    move v3, v4

    .line 54
    :cond_3
    iget-object v4, p0, Lcom/startapps/crossx/model/MaskDate;->cal:Ljava/util/Calendar;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, p4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0x76c

    if-ge p1, v4, :cond_4

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_4
    const/16 v4, 0x834

    if-le p1, v4, :cond_5

    goto :goto_1

    .line 56
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/startapps/crossx/model/MaskDate;->cal:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 61
    iget-object v4, p0, Lcom/startapps/crossx/model/MaskDate;->cal:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    if-le p2, v4, :cond_6

    iget-object p2, p0, Lcom/startapps/crossx/model/MaskDate;->cal:Ljava/util/Calendar;

    invoke-virtual {p2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p2

    .line 62
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%02d%02d%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 65
    :goto_3
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 67
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s/%s/%s"

    .line 65
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-gez v1, :cond_7

    move v1, p3

    .line 70
    :cond_7
    iput-object p1, p0, Lcom/startapps/crossx/model/MaskDate;->current:Ljava/lang/String;

    .line 71
    iget-object p2, p0, Lcom/startapps/crossx/model/MaskDate;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/startapps/crossx/model/MaskDate;->editText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/startapps/crossx/model/MaskDate;->current:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v1, p2, :cond_8

    goto :goto_4

    :cond_8
    iget-object p2, p0, Lcom/startapps/crossx/model/MaskDate;->current:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_9
    return-void
.end method
