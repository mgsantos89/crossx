.class public final Lcom/squareup/okhttp/MultipartBuilder;
.super Ljava/lang/Object;
.source "MultipartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lcom/squareup/okhttp/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lcom/squareup/okhttp/MediaType;

.field public static final FORM:Lcom/squareup/okhttp/MediaType;

.field public static final MIXED:Lcom/squareup/okhttp/MediaType;

.field public static final PARALLEL:Lcom/squareup/okhttp/MediaType;


# instance fields
.field private final boundary:Lokio/ByteString;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/squareup/okhttp/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    .line 38
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->MIXED:Lcom/squareup/okhttp/MediaType;

    const-string v0, "multipart/alternative"

    .line 45
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->ALTERNATIVE:Lcom/squareup/okhttp/MediaType;

    const-string v0, "multipart/digest"

    .line 53
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->DIGEST:Lcom/squareup/okhttp/MediaType;

    const-string v0, "multipart/parallel"

    .line 60
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->PARALLEL:Lcom/squareup/okhttp/MediaType;

    const-string v0, "multipart/form-data"

    .line 68
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 70
    fill-array-data v1, :array_0

    sput-object v1, Lcom/squareup/okhttp/MultipartBuilder;->COLONSPACE:[B

    new-array v1, v0, [B

    .line 71
    fill-array-data v1, :array_1

    sput-object v1, Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B

    new-array v0, v0, [B

    .line 72
    fill-array-data v0, :array_2

    sput-object v0, Lcom/squareup/okhttp/MultipartBuilder;->DASHDASH:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->MIXED:Lcom/squareup/okhttp/MediaType;

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->type:Lcom/squareup/okhttp/MediaType;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    .line 92
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/MultipartBuilder;->boundary:Lokio/ByteString;

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 31
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->DASHDASH:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 31
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->CRLF:[B

    return-object v0
.end method

.method static synthetic access$200()[B
    .locals 1

    .line 31
    sget-object v0, Lcom/squareup/okhttp/MultipartBuilder;->COLONSPACE:[B

    return-object v0
.end method

.method private static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 147
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_0

    .line 159
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "%22"

    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "%0D"

    .line 153
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "%0A"

    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/MultipartBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-static {v0, p2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;
    .locals 2

    if-eqz p1, :cond_1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-static {v0, p1}, Lcom/squareup/okhttp/MultipartBuilder;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, "; filename="

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {v0, p2}, Lcom/squareup/okhttp/MultipartBuilder;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "Content-Disposition"

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    move-result-object p1

    return-object p1

    .line 175
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;
    .locals 1

    if-eqz p2, :cond_4

    if-eqz p1, :cond_1

    const-string v0, "Content-Type"

    .line 121
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    const-string v0, "Content-Length"

    .line 124
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p0, Lcom/squareup/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 119
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "body == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPart(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/squareup/okhttp/RequestBody;
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;

    iget-object v1, p0, Lcom/squareup/okhttp/MultipartBuilder;->type:Lcom/squareup/okhttp/MediaType;

    iget-object v2, p0, Lcom/squareup/okhttp/MultipartBuilder;->boundary:Lokio/ByteString;

    iget-object v3, p0, Lcom/squareup/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    iget-object v4, p0, Lcom/squareup/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;-><init>(Lcom/squareup/okhttp/MediaType;Lokio/ByteString;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;
    .locals 3

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/squareup/okhttp/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lcom/squareup/okhttp/MultipartBuilder;->type:Lcom/squareup/okhttp/MediaType;

    return-object p0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "multipart != "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
