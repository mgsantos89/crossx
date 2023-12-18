.class final Lretrofit/GsonRequestBodyConverter;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

# interfaces
.implements Lretrofit/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Converter<",
        "TT;",
        "Lcom/squareup/okhttp/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 29
    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lretrofit/GsonRequestBodyConverter;->MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    const-string v0, "UTF-8"

    .line 30
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lretrofit/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lretrofit/GsonRequestBodyConverter;->gson:Lcom/google/gson/Gson;

    .line 37
    iput-object p2, p0, Lretrofit/GsonRequestBodyConverter;->type:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/squareup/okhttp/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 42
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lokio/Buffer;->outputStream()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lretrofit/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 44
    :try_start_0
    iget-object v2, p0, Lretrofit/GsonRequestBodyConverter;->gson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lretrofit/GsonRequestBodyConverter;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v2, p1, v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    sget-object p1, Lretrofit/GsonRequestBodyConverter;->MEDIA_TYPE:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Lokio/ByteString;)Lcom/squareup/okhttp/RequestBody;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lretrofit/GsonRequestBodyConverter;->convert(Ljava/lang/Object;)Lcom/squareup/okhttp/RequestBody;

    move-result-object p1

    return-object p1
.end method
