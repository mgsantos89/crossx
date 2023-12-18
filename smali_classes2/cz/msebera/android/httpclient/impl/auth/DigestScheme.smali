.class public Lcz/msebera/android/httpclient/impl/auth/DigestScheme;
.super Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# static fields
.field private static final HEXADECIMAL:[C

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1


# instance fields
.field private a1:Ljava/lang/String;

.field private a2:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 83
    fill-array-data v0, :array_0

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 124
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Ljava/nio/charset/Charset;)V

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 2

    .line 473
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 475
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 476
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDigestHeader(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string/jumbo v2, "uri"

    .line 248
    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "realm"

    .line 249
    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "nonce"

    .line 250
    invoke-virtual {v1, v6}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "opaque"

    .line 251
    invoke-virtual {v1, v8}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "methodname"

    .line 252
    invoke-virtual {v1, v10}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "algorithm"

    .line 253
    invoke-virtual {v1, v11}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "MD5"

    if-nez v12, :cond_0

    move-object v12, v13

    .line 259
    :cond_0
    new-instance v14, Ljava/util/HashSet;

    const/16 v15, 0x8

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    const-string v15, "qop"

    move-object/from16 v16, v13

    .line 261
    invoke-virtual {v1, v15}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v8

    const-string v8, "auth-int"

    move-object/from16 v20, v9

    const-string v9, "auth"

    move-object/from16 v21, v11

    if-eqz v13, :cond_4

    .line 263
    new-instance v11, Ljava/util/StringTokenizer;

    move-object/from16 v22, v15

    const-string v15, ","

    invoke-direct {v11, v13, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 265
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v11

    .line 266
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v23

    goto :goto_0

    .line 268
    :cond_1
    instance-of v11, v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v11, :cond_2

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    .line 270
    :cond_2
    invoke-interface {v14, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x2

    goto :goto_1

    :cond_3
    const/4 v11, -0x1

    goto :goto_1

    :cond_4
    move-object/from16 v22, v15

    const/4 v11, 0x0

    :goto_1
    const/4 v15, -0x1

    if-eq v11, v15, :cond_1a

    const-string v13, "charset"

    .line 281
    invoke-virtual {v1, v13}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    const-string v13, "ISO-8859-1"

    :cond_5
    const-string v15, "MD5-sess"

    .line 287
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v8

    goto :goto_2

    :cond_6
    move-object/from16 v18, v8

    move-object/from16 v16, v12

    .line 293
    :goto_2
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8
    :try_end_0
    .catch Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v16

    move-object/from16 v23, v2

    invoke-interface/range {v16 .. v16}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v6

    .line 299
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v25, v4

    .line 301
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v27, v9

    move-object/from16 v26, v10

    if-eqz v4, :cond_7

    .line 302
    iget-wide v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    move-object/from16 v28, v3

    const-wide/16 v3, 0x1

    add-long/2addr v9, v3

    iput-wide v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    goto :goto_3

    :cond_7
    move-object/from16 v28, v3

    const-wide/16 v3, 0x1

    .line 304
    iput-wide v3, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    const/4 v3, 0x0

    .line 305
    iput-object v3, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 306
    iput-object v7, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    .line 308
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    new-instance v4, Ljava/util/Formatter;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v3, v9}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 310
    iget-wide v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%08x"

    invoke-virtual {v4, v10, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 311
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    iget-object v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 315
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    :cond_8
    const/4 v9, 0x0

    .line 318
    iput-object v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 319
    iput-object v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 321
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const/16 v15, 0x3a

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    .line 327
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 328
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 331
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    .line 335
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 336
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 340
    :goto_4
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    invoke-static {v6, v13}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    if-ne v11, v9, :cond_a

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v9, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move-object/from16 v15, v27

    goto/16 :goto_7

    :cond_a
    move-object/from16 v10, v26

    move-object/from16 v9, v28

    const/4 v15, 0x1

    if-ne v11, v15, :cond_f

    .line 348
    instance-of v15, v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v15, :cond_b

    .line 349
    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    .line 351
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v15

    if-nez v15, :cond_d

    move-object/from16 v15, v27

    .line 353
    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    const/16 v19, 0x2

    goto :goto_6

    .line 357
    :cond_c
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v2, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v15, v27

    .line 361
    new-instance v14, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;

    invoke-direct {v14, v8}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;-><init>(Ljava/security/MessageDigest;)V

    if-eqz v0, :cond_e

    .line 364
    :try_start_1
    invoke-interface {v0, v14}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 366
    :cond_e
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->getDigest()[B

    move-result-object v10

    invoke-static {v10}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move/from16 v19, v11

    :goto_6
    move/from16 v11, v19

    goto :goto_7

    :catch_0
    move-exception v0

    .line 368
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v3, "I/O error reading entity content"

    invoke-direct {v2, v3, v0}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f
    move-object/from16 v15, v27

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 376
    :goto_7
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    invoke-static {v0, v13}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    if-nez v11, :cond_10

    const/4 v10, 0x0

    .line 382
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 383
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v13, 0x3a

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_10
    const/4 v10, 0x0

    const/16 v13, 0x3a

    .line 386
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 387
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 388
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v14, 0x1

    if-ne v11, v14, :cond_11

    move-object/from16 v14, v18

    goto :goto_8

    :cond_11
    move-object v14, v15

    :goto_8
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 389
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_9
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 395
    new-instance v3, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v3, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->isProxy()Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "Proxy-Authorization"

    .line 397
    invoke-virtual {v3, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    const-string v6, "Authorization"

    .line 399
    invoke-virtual {v3, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_a
    const-string v6, ": Digest "

    .line 401
    invoke-virtual {v3, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 403
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0x14

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    new-instance v8, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v13, "username"

    invoke-direct {v8, v13, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v8, v25

    invoke-direct {v2, v8, v5}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v5, v24

    invoke-direct {v2, v5, v7}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v5, v23

    invoke-direct {v2, v5, v9}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v5, "response"

    invoke-direct {v2, v5, v0}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "nc"

    if-eqz v11, :cond_14

    .line 411
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const/4 v5, 0x1

    if-ne v11, v5, :cond_13

    move-object/from16 v8, v18

    goto :goto_b

    :cond_13
    move-object v8, v15

    :goto_b
    move-object/from16 v5, v22

    invoke-direct {v2, v5, v8}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v2, v0, v4}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v4, "cnonce"

    iget-object v7, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-direct {v2, v4, v7}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    move-object/from16 v5, v22

    .line 416
    :goto_c
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v4, v21

    invoke-direct {v2, v4, v12}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v20, :cond_15

    .line 418
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    move-object/from16 v8, v17

    move-object/from16 v7, v20

    invoke-direct {v2, v8, v7}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    move v2, v10

    .line 421
    :goto_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_19

    .line 422
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    if-lez v2, :cond_16

    const-string v8, ", "

    .line 424
    invoke-virtual {v3, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 426
    :cond_16
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    .line 427
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 428
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_e

    :cond_17
    move v8, v10

    goto :goto_f

    :cond_18
    :goto_e
    const/4 v8, 0x1

    .line 429
    :goto_f
    sget-object v9, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    const/4 v11, 0x1

    xor-int/2addr v8, v11

    invoke-virtual {v9, v3, v7, v8}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 431
    :cond_19
    new-instance v0, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v0

    .line 295
    :catch_1
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsuppported digest algorithm: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, v16

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1a
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "None of the qop methods is supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 232
    :catch_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static encode([B)Ljava/lang/String;
    .locals 7

    .line 454
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 455
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 457
    aget-byte v3, p0, v2

    and-int/lit8 v4, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    mul-int/lit8 v5, v2, 0x2

    .line 459
    sget-object v6, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v3, v6, v3

    aput-char v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    .line 460
    aget-char v3, v6, v4

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    return-object p1
.end method

.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    const-string p3, "Credentials"

    .line 209
    invoke-static {p1, p3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "HTTP request"

    .line 210
    invoke-static {p2, p3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "realm"

    .line 211
    invoke-virtual {p0, p3}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string p3, "nonce"

    .line 214
    invoke-virtual {p0, p3}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 218
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "methodname"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uri"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "charset"

    .line 220
    invoke-virtual {p0, p3}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getCredentialsCharset(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->createDigestHeader(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    return-object p1

    .line 215
    :cond_1
    new-instance p1, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string p2, "missing nonce in challenge"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_2
    new-instance p1, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string p2, "missing realm in challenge"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getA1()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    return-object v0
.end method

.method getA2()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    return-object v0
.end method

.method getCnonce()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    const-string v0, "stale"

    .line 149
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public processChallenge(Lcz/msebera/android/httpclient/Header;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 138
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->processChallenge(Lcz/msebera/android/httpclient/Header;)V

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIGEST [complete="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonce="

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nc="

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    .line 485
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
