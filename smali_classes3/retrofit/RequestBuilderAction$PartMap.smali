.class final Lretrofit/RequestBuilderAction$PartMap;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PartMap"
.end annotation


# instance fields
.field private final annotations:[Ljava/lang/annotation/Annotation;

.field private final retrofit:Lretrofit/Retrofit;

.field private final transferEncoding:Ljava/lang/String;


# direct methods
.method constructor <init>(Lretrofit/Retrofit;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    .line 222
    iput-object p1, p0, Lretrofit/RequestBuilderAction$PartMap;->retrofit:Lretrofit/Retrofit;

    .line 223
    iput-object p2, p0, Lretrofit/RequestBuilderAction$PartMap;->transferEncoding:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lretrofit/RequestBuilderAction$PartMap;->annotations:[Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 230
    :cond_0
    check-cast p2, Ljava/util/Map;

    .line 231
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "form-data; name=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding"

    iget-object v3, p0, Lretrofit/RequestBuilderAction$PartMap;->transferEncoding:Ljava/lang/String;

    const-string v4, "Content-Disposition"

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v1

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 247
    iget-object v3, p0, Lretrofit/RequestBuilderAction$PartMap;->retrofit:Lretrofit/Retrofit;

    iget-object v4, p0, Lretrofit/RequestBuilderAction$PartMap;->annotations:[Ljava/lang/annotation/Annotation;

    .line 248
    invoke-virtual {v3, v2, v4}, Lretrofit/Retrofit;->requestConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object v2

    .line 251
    :try_start_0
    invoke-interface {v2, v0}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    invoke-virtual {p1, v1, v2}, Lretrofit/RequestBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)V

    goto :goto_0

    .line 253
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unable to convert "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " to RequestBody"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Part map contained null key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
