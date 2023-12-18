.class public Lcom/startapps/crossx/controller/utils/CreditCardHelper;
.super Ljava/lang/Object;
.source "CreditCardHelper.java"


# static fields
.field public static final BANNER_AMEX:Ljava/lang/String; = "amex"

.field public static final BANNER_AURA:Ljava/lang/String; = "aura"

.field public static final BANNER_DINERS:Ljava/lang/String; = "diners"

.field public static final BANNER_DISCOVER:Ljava/lang/String; = "discover"

.field public static final BANNER_ELO:Ljava/lang/String; = "elo"

.field public static final BANNER_HIPERCARD:Ljava/lang/String; = "hipercard"

.field public static final BANNER_JCB:Ljava/lang/String; = "jcb"

.field public static final BANNER_MASTER:Ljava/lang/String; = "mastercard"

.field public static final BANNER_UNKNOWN:Ljava/lang/String; = "other"

.field public static final BANNER_VISA:Ljava/lang/String; = "visa"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "other"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, " "

    const-string v2, ""

    .line 36
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "^((431274)|(438935)|(451416)|(457393)|(504175)|(627780)|(636297)|(636368)|(40117)[8-9]|(45763)[1-2]|(506)(699|7[1-7][1-8])|(509)[0-9][0-9][0-9]|(65003)[1-3]|(6500)(3[5-9]|4[0-9]|5[0-1])|(6504)(0[5-9]|1[0-9]|2[0-9]|3[0-9])|(650)(4(8[5-9]|9[0-9])|5([0-2][0-9]|3[0-8]))|(6505)(4[1-9]|[5-8][0-9]|9[0-8])|(6507)(0[0-9]|1[0-8])|(65072)[0-7]|(6509)(0[1-9]|1[0-9]|20)|(6516)(5[2-9]|[6-7][0-9])|(6550)[0-1][0-9]|(6550)(2[1-9]|[3-4][0-9]|5[0-8]))"

    const/4 v2, 0x2

    .line 39
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "elo"

    return-object p0

    :cond_1
    const-string v0, "^4[0-9]{12}(?:[0-9]{3})?$"

    .line 47
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "visa"

    return-object p0

    :cond_2
    const-string v0, "^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}$"

    .line 55
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "mastercard"

    return-object p0

    :cond_3
    const-string v0, "^3[47][0-9]{13}$"

    .line 63
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "amex"

    return-object p0

    :cond_4
    const-string v0, "^3(?:0[0-5]|[68][0-9])[0-9]{11}$"

    .line 71
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "diners"

    return-object p0

    :cond_5
    const-string v0, "^65[4-9][0-9]{13}|64[4-9][0-9]{13}|6011[0-9]{12}|(622(?:12[6-9]|1[3-9][0-9]|[2-8][0-9][0-9]|9[01][0-9]|92[0-5])[0-9]{10})$"

    .line 79
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "discover"

    return-object p0

    :cond_6
    const-string v0, "^(?:2131|1800|35\\d{3})\\d{11}$"

    .line 87
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "jcb"

    return-object p0

    :cond_7
    const-string v0, "^(606282\\d{10}(\\d{3})?)|(3841\\d{15})$"

    .line 95
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "hipercard"

    return-object p0

    .line 104
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "50"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "aura"

    return-object p0

    :cond_9
    return-object v1
.end method

.method public static isExpirationValid(Ljava/lang/String;)Z
    .locals 3

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/yy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 118
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 128
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^((0[1-9])|(1[0-2]))/(("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")|([1-3][0-9]))$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 132
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :catch_0
    return v2
.end method
