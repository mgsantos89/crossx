.class Lio/card/payment/ExpiryValidator;
.super Ljava/lang/Object;
.source "ExpiryValidator.java"

# interfaces
.implements Lio/card/payment/Validator;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpiryValidator"


# instance fields
.field private fullLength:Z

.field public month:I

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lio/card/payment/ExpiryValidator;->month:I

    .line 27
    iput p2, p0, Lio/card/payment/ExpiryValidator;->year:I

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput-boolean p1, p0, Lio/card/payment/ExpiryValidator;->fullLength:Z

    const/16 p1, 0x7d0

    if-ge p2, p1, :cond_1

    add-int/2addr p2, p1

    .line 33
    iput p2, p0, Lio/card/payment/ExpiryValidator;->year:I

    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 39
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/card/payment/ExpiryValidator;->fullLength:Z

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 46
    :cond_1
    invoke-static {p1}, Lio/card/payment/CreditCardNumber;->getDateForString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lio/card/payment/ExpiryValidator;->month:I

    .line 52
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result p1

    iput p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    const/16 v0, 0x76c

    if-ge p1, v0, :cond_3

    add-int/2addr p1, v0

    .line 55
    iput p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lio/card/payment/ExpiryValidator;->month:I

    .line 62
    iput p1, p0, Lio/card/payment/ExpiryValidator;->year:I

    .line 63
    iput-boolean p1, p0, Lio/card/payment/ExpiryValidator;->fullLength:Z

    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    .line 109
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0x31

    const/4 v7, 0x0

    if-nez p5, :cond_0

    .line 111
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    const-string v0, "0"

    .line 113
    invoke-virtual {v6, v7, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p3, p3, 0x1

    :cond_0
    sub-int v0, p6, p5

    sub-int v1, p5, v0

    const/4 v8, 0x2

    if-gt v1, v8, :cond_2

    add-int v1, p5, p3

    sub-int/2addr v1, v0

    if-lt v1, v8, :cond_2

    rsub-int/lit8 v0, p5, 0x2

    if-eq v0, p3, :cond_1

    if-ltz v0, :cond_2

    if-ge v0, p3, :cond_2

    .line 120
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v1, "/"

    .line 121
    invoke-virtual {v6, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p3, p3, 0x1

    :cond_2
    move v5, p3

    .line 128
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v1, p5

    move v2, p6

    move-object v3, v6

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 129
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const-string p4, ""

    const/16 p5, 0x30

    const/4 p6, 0x1

    if-lt p3, p6, :cond_4

    .line 132
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-lt p3, p5, :cond_3

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ge p1, p3, :cond_4

    :cond_3
    return-object p4

    .line 137
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v8, :cond_6

    .line 138
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, p5, :cond_5

    invoke-virtual {p2, p6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p3, 0x32

    if-le p1, p3, :cond_5

    return-object p4

    .line 141
    :cond_5
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p5, :cond_6

    invoke-virtual {p2, p6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p5, :cond_6

    return-object p4

    .line 146
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_7

    return-object p4

    :cond_7
    return-object v6
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 72
    iget v0, p0, Lio/card/payment/ExpiryValidator;->month:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lio/card/payment/ExpiryValidator;->year:I

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02d/%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFullLength()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lio/card/payment/ExpiryValidator;->fullLength:Z

    return v0
.end method

.method public isValid()Z
    .locals 5

    .line 82
    iget v0, p0, Lio/card/payment/ExpiryValidator;->month:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    const/16 v3, 0xc

    if-ge v3, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 88
    iget v3, p0, Lio/card/payment/ExpiryValidator;->year:I

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    add-int/lit8 v4, v4, 0xf

    if-le v3, v4, :cond_1

    return v1

    .line 92
    :cond_1
    iget v3, p0, Lio/card/payment/ExpiryValidator;->year:I

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    if-gt v3, v4, :cond_2

    iget v3, p0, Lio/card/payment/ExpiryValidator;->year:I

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    if-ne v3, v4, :cond_3

    iget v3, p0, Lio/card/payment/ExpiryValidator;->month:I

    .line 93
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    add-int/2addr v0, v2

    if-lt v3, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
