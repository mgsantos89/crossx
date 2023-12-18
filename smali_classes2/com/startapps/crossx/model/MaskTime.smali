.class public Lcom/startapps/crossx/model/MaskTime;
.super Ljava/lang/Object;
.source "MaskTime.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static MASK:Ljava/lang/String; = "000000"


# instance fields
.field private current:Ljava/lang/String;

.field private editText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/startapps/crossx/model/MaskTime;->current:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/model/MaskTime;->editText:Landroid/widget/EditText;

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

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/startapps/crossx/model/MaskTime;->current:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/startapps/crossx/model/MaskTime;->current:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "[^\\d.]"

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/model/MaskTime;->current:Ljava/lang/String;

    invoke-virtual {v0, p3, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ":"

    if-ne p3, p4, :cond_0

    .line 65
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 66
    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ne p3, v3, :cond_1

    .line 70
    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, v4, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v5, 0x5

    if-ne p3, v5, :cond_2

    .line 75
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 76
    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 77
    invoke-virtual {p2, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 78
    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x6

    if-ne p3, p4, :cond_3

    .line 82
    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 83
    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 84
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 85
    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, v3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 89
    :cond_3
    :goto_0
    iput-object p2, p0, Lcom/startapps/crossx/model/MaskTime;->current:Ljava/lang/String;

    .line 90
    iget-object p3, p0, Lcom/startapps/crossx/model/MaskTime;->editText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p3, p0, Lcom/startapps/crossx/model/MaskTime;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 94
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/model/MaskTime;->current:Ljava/lang/String;

    return-void
.end method
