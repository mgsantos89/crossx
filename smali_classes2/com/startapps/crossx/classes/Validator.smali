.class public Lcom/startapps/crossx/classes/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# static fields
.field private static final PESO_CPF:[I

.field private static final VALID_EMAIL_ADDRESS_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$"

    const/4 v1, 0x2

    .line 12
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/classes/Validator;->VALID_EMAIL_ADDRESS_REGEX:Ljava/util/regex/Pattern;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_0

    sput-object v0, Lcom/startapps/crossx/classes/Validator;->PESO_CPF:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcularDigito(Ljava/lang/String;[I)I
    .locals 6

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_0

    add-int/lit8 v3, v0, 0x1

    .line 34
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 35
    array-length v4, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v0

    aget v4, p1, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 37
    :cond_0
    rem-int/lit8 v2, v2, 0xb

    rsub-int/lit8 p0, v2, 0xb

    const/16 p1, 0x9

    if-le p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    return v1
.end method

.method public static isEmailValid(Ljava/lang/String;)Z
    .locals 1

    .line 16
    sget-object v0, Lcom/startapps/crossx/classes/Validator;->VALID_EMAIL_ADDRESS_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isValidCPF(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "[^0-9]+"

    const-string v1, ""

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/startapps/crossx/classes/Validator;->PESO_CPF:[I

    invoke-static {v2, v3}, Lcom/startapps/crossx/classes/Validator;->calcularDigito(Ljava/lang/String;[I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/startapps/crossx/classes/Validator;->calcularDigito(Ljava/lang/String;[I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method
