.class public Lcom/startapps/crossx/controller/utils/DateUtility;
.super Ljava/lang/Object;
.source "DateUtility.java"


# static fields
.field public static final MASK_TYPE_DATE:Ljava/lang/String; = "dd"

.field public static final MASK_TYPE_DATE_WEEK:Ljava/lang/String; = "EEE"

.field public static final MASK_TYPE_EIGHT:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final MASK_TYPE_EXPIRATION_CARD:Ljava/lang/String; = "MM/yy"

.field public static final MASK_TYPE_FIVE:Ljava/lang/String; = "HH:mm"

.field public static final MASK_TYPE_FOUR:Ljava/lang/String; = "dd/MM/yyyy HH:mm:ss"

.field public static final MASK_TYPE_HOUR:Ljava/lang/String; = "HH"

.field public static final MASK_TYPE_MONTH:Ljava/lang/String; = "MMM"

.field public static final MASK_TYPE_MONTH_YEAR:Ljava/lang/String; = "MMMM/yyyy"

.field public static final MASK_TYPE_MONTH_YEAR_TWO:Ljava/lang/String; = "MMM yy"

.field public static final MASK_TYPE_ONE:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final MASK_TYPE_SEVEN:Ljava/lang/String; = "dd/MM/yyyy \u00e0s HH:mm"

.field public static final MASK_TYPE_SIX:Ljava/lang/String; = "MM/dd/yyyy"

.field public static final MASK_TYPE_THREE:Ljava/lang/String; = "dd/MM/yyyy"

.field public static final MASK_TYPE_TWO:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final MASK_TYPE_YEAR:Ljava/lang/String; = "yyyy"

.field public static final MASK_TYPE_YEAR_MONTH:Ljava/lang/String; = "yyyy-MM"

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_WEEK:J = 0x240c8400L

.field public static final TIMEZONE_GREENWICH:Ljava/lang/String; = "GMT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alterTimeZone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " GMT"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 46
    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p1}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkDueDateExpiration(Ljava/lang/String;)Z
    .locals 7

    .line 283
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 284
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x5

    .line 285
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 286
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v6, 0x1

    if-lt v4, v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v6

    if-lt v4, p0, :cond_0

    return v6

    .line 288
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v6

    if-lt v0, p0, :cond_1

    return v6

    :cond_1
    return v1
.end method

.method public static checkDueDateToday(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 273
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x5

    .line 274
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x6

    const/16 v6, 0xa

    .line 275
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p0, v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-ne p0, v3, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static checkDueDateTomorrow(Ljava/lang/String;)Z
    .locals 10

    .line 296
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 299
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x5

    .line 300
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x6

    const/16 v9, 0xa

    .line 301
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 303
    invoke-virtual {v1, p0, v7, v4}, Ljava/util/Calendar;->set(III)V

    .line 305
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/DateUtility;->getDateFormated(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 307
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 308
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 309
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 311
    invoke-virtual {v0, p0, v4, v3}, Ljava/util/Calendar;->set(III)V

    .line 313
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 314
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 317
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x5265c00

    .line 319
    div-long/2addr v0, v3

    const-wide/16 v3, 0x1

    cmp-long p0, v0, v3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public static compare(Ljava/util/Date;Ljava/util/Date;)I
    .locals 6

    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 211
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xe

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 213
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 214
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xb

    .line 215
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 216
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 217
    invoke-virtual {v1, p0, v2}, Ljava/util/Calendar;->set(II)V

    .line 218
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 219
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 220
    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 221
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static convertMinInString(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    const-string v1, ":00"

    if-gez v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static dateFromFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 260
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dateFromFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 267
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 268
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static diferenceDays(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 2

    .line 199
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 201
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 203
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x5265c00

    .line 205
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static expirationInDays(Ljava/lang/String;)J
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 342
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x5

    .line 343
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x6

    const/16 v5, 0xa

    .line 344
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 346
    invoke-virtual {v4, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x1

    add-int/2addr v2, v0

    .line 347
    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 348
    invoke-virtual {v4, v0, p0}, Ljava/util/Calendar;->set(II)V

    .line 349
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 350
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 351
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    .line 354
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 247
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x7

    .line 248
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0xa

    .line 249
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 52
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAge(Ljava/util/Date;)Ljava/lang/Integer;
    .locals 5

    .line 173
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 174
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {v1, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    :cond_0
    const/4 p0, 0x1

    .line 178
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 179
    invoke-virtual {v1, p0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p0

    .line 181
    new-instance v3, Ljava/lang/Integer;

    sub-int/2addr v2, p0

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x2

    .line 183
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    :goto_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_2

    const/4 v2, 0x5

    .line 186
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormated(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 240
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/DateUtility;->getMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/DateUtility;->getDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " de "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0xa

    .line 225
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDuration(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0xea60

    cmp-long v2, v0, p0

    const-string v3, "1 minuto"

    if-gtz v2, :cond_1

    return-object v3

    :cond_1
    const-wide/32 v4, 0x36ee80

    cmp-long v2, v0, v4

    const-wide/16 v6, 0x1

    if-gez v2, :cond_3

    .line 133
    div-long/2addr v0, p0

    cmp-long p0, v0, v6

    if-nez p0, :cond_2

    return-object v3

    .line 137
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " minutos"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/32 p0, 0x5265c00

    cmp-long v2, v0, p0

    if-gez v2, :cond_5

    .line 140
    div-long/2addr v0, v4

    cmp-long p0, v0, v6

    if-nez p0, :cond_4

    const-string p0, "1 hora"

    return-object p0

    .line 144
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " horas"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 147
    :cond_5
    div-long/2addr v0, p0

    cmp-long p0, v0, v6

    if-nez p0, :cond_6

    const-string p0, "1 dia"

    return-object p0

    .line 151
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " dias"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static getDurationInMin(Ljava/util/Date;Ljava/util/Date;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v2, p0

    const-wide/32 p0, 0xea60

    cmp-long v4, v2, p0

    if-gtz v4, :cond_1

    return-wide v0

    .line 167
    :cond_1
    div-long/2addr v2, p0

    return-wide v2

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static getMonth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x7

    .line 234
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 235
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    aget-object p0, v0, p0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSortMonth(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 229
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/DateUtility;->getMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 230
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringForCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 68
    :catch_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0

    .line 66
    :catch_1
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0
.end method

.method public static subtractTime(Ljava/util/Date;Ljava/util/Calendar;)J
    .locals 3

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xc

    .line 109
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    .line 110
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 112
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 113
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, p1

    sub-int/2addr p0, v1

    int-to-long p0, p0

    return-wide p0
.end method
