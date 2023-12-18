.class public Lio/realm/internal/android/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final TIMEZONE_Z:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    .line 51
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 57
    sput-object v0, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 2

    .line 278
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 279
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    .line 282
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "\'"

    const-string v0, "Mismatching time zone indicator: "

    const-string v4, "GMT"

    const-string v5, "Invalid time zone indicator \'"

    .line 72
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    add-int/lit8 v7, v6, 0x4

    .line 75
    invoke-static {v1, v6, v7}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    const/16 v8, 0x2d

    .line 76
    invoke-static {v1, v7, v8}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v9, v7, 0x2

    .line 81
    invoke-static {v1, v7, v9}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 82
    invoke-static {v1, v9, v8}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    :cond_1
    add-int/lit8 v10, v9, 0x2

    .line 87
    invoke-static {v1, v9, v10}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    const/16 v11, 0x54

    .line 95
    invoke-static {v1, v10, v11}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_2

    .line 97
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v13, v10, :cond_2

    .line 98
    new-instance v0, Ljava/util/GregorianCalendar;

    sub-int/2addr v7, v12

    invoke-direct {v0, v6, v7, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 100
    invoke-virtual {v2, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 101
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v13, 0x2b

    const/16 v14, 0x5a

    if-eqz v11, :cond_a

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v10, 0x2

    .line 107
    invoke-static {v1, v10, v11}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v10

    const/16 v15, 0x3a

    .line 108
    invoke-static {v1, v11, v15}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v11, v11, 0x1

    :cond_3
    add-int/lit8 v12, v11, 0x2

    .line 112
    invoke-static {v1, v11, v12}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v11

    .line 113
    invoke-static {v1, v12, v15}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v15

    if-eqz v15, :cond_4

    add-int/lit8 v12, v12, 0x1

    .line 117
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v12, :cond_9

    .line 118
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v14, :cond_9

    if-eq v15, v13, :cond_9

    if-eq v15, v8, :cond_9

    add-int/lit8 v15, v12, 0x2

    .line 120
    invoke-static {v1, v12, v15}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v12

    const/16 v8, 0x3b

    if-le v12, v8, :cond_5

    const/16 v8, 0x3f

    if-ge v12, v8, :cond_5

    const/16 v12, 0x3b

    :cond_5
    const/16 v8, 0x2e

    .line 125
    invoke-static {v1, v15, v8}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v15, 0x1

    .line 127
    invoke-static {v1, v8}, Lio/realm/internal/android/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v13, v15, 0x3

    .line 128
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 129
    invoke-static {v1, v15, v13}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v18

    sub-int/2addr v13, v15

    const/4 v15, 0x1

    if-eq v13, v15, :cond_7

    const/4 v15, 0x2

    if-eq v13, v15, :cond_6

    goto :goto_0

    :cond_6
    mul-int/lit8 v18, v18, 0xa

    goto :goto_0

    :cond_7
    mul-int/lit8 v18, v18, 0x64

    :goto_0
    move/from16 v13, v18

    move/from16 v19, v10

    move v10, v8

    move/from16 v8, v19

    goto :goto_3

    :cond_8
    move v8, v10

    move v10, v15

    goto :goto_2

    :cond_9
    move v8, v10

    move v10, v12

    goto :goto_1

    :cond_a
    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x0

    .line 148
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v10, :cond_13

    .line 153
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_b

    .line 156
    sget-object v0, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    const/4 v4, 0x1

    add-int/2addr v10, v4

    goto/16 :goto_8

    :cond_b
    const/16 v14, 0x2b

    if-eq v15, v14, :cond_d

    const/16 v14, 0x2d

    if-ne v15, v14, :cond_c

    goto :goto_4

    .line 192
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_d
    :goto_4
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v10, v14

    .line 162
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_e

    .line 163
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "00"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_e
    const-string v14, "+0000"

    .line 166
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "+00:00"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_6

    .line 173
    :cond_f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 177
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v14

    .line 178
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, ":"

    move/from16 v17, v10

    const-string v10, ""

    .line 184
    invoke-virtual {v14, v15, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 185
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_5

    .line 186
    :cond_10
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " given, resolves to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_11
    move/from16 v17, v10

    :goto_5
    move-object v0, v5

    goto :goto_7

    :cond_12
    :goto_6
    move/from16 v17, v10

    .line 167
    sget-object v0, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    :goto_7
    move/from16 v10, v17

    .line 195
    :goto_8
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 196
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v0, 0x1

    .line 197
    invoke-virtual {v4, v0, v6}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v7, v0

    const/4 v0, 0x2

    .line 198
    invoke-virtual {v4, v0, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 199
    invoke-virtual {v4, v0, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 200
    invoke-virtual {v4, v0, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 201
    invoke-virtual {v4, v0, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 202
    invoke-virtual {v4, v0, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 203
    invoke-virtual {v4, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 205
    invoke-virtual {v2, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 206
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 149
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "No time zone indicator"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_9
    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_a

    .line 216
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 218
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 219
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    :cond_16
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to parse date ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 222
    invoke-virtual {v4, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 223
    throw v4
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-ltz p1, :cond_4

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    const-string v0, "Invalid number: "

    const/16 v1, 0xa

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_0

    neg-int v3, v3

    goto :goto_0

    .line 259
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 264
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_2

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v2

    move v2, v4

    goto :goto_0

    .line 266
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    neg-int p0, v3

    return p0

    .line 250
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
