.class final Lretrofit/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# instance fields
.field private final baseUrl:Lretrofit/BaseUrl;

.field private final contentType:Lcom/squareup/okhttp/MediaType;

.field private final hasBody:Z

.field private final headers:Lcom/squareup/okhttp/Headers;

.field private final isFormEncoded:Z

.field private final isMultipart:Z

.field private final method:Ljava/lang/String;

.field private final relativeUrl:Ljava/lang/String;

.field private final requestBuilderActions:[Lretrofit/RequestBuilderAction;


# direct methods
.method constructor <init>(Ljava/lang/String;Lretrofit/BaseUrl;Ljava/lang/String;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/MediaType;ZZZ[Lretrofit/RequestBuilderAction;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lretrofit/RequestFactory;->method:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lretrofit/RequestFactory;->baseUrl:Lretrofit/BaseUrl;

    .line 38
    iput-object p3, p0, Lretrofit/RequestFactory;->relativeUrl:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lretrofit/RequestFactory;->headers:Lcom/squareup/okhttp/Headers;

    .line 40
    iput-object p5, p0, Lretrofit/RequestFactory;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 41
    iput-boolean p6, p0, Lretrofit/RequestFactory;->hasBody:Z

    .line 42
    iput-boolean p7, p0, Lretrofit/RequestFactory;->isFormEncoded:Z

    .line 43
    iput-boolean p8, p0, Lretrofit/RequestFactory;->isMultipart:Z

    .line 44
    iput-object p9, p0, Lretrofit/RequestFactory;->requestBuilderActions:[Lretrofit/RequestBuilderAction;

    return-void
.end method


# virtual methods
.method varargs create([Ljava/lang/Object;)Lcom/squareup/okhttp/Request;
    .locals 10

    .line 48
    new-instance v9, Lretrofit/RequestBuilder;

    iget-object v1, p0, Lretrofit/RequestFactory;->method:Ljava/lang/String;

    iget-object v0, p0, Lretrofit/RequestFactory;->baseUrl:Lretrofit/BaseUrl;

    .line 49
    invoke-interface {v0}, Lretrofit/BaseUrl;->url()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v2

    iget-object v3, p0, Lretrofit/RequestFactory;->relativeUrl:Ljava/lang/String;

    iget-object v4, p0, Lretrofit/RequestFactory;->headers:Lcom/squareup/okhttp/Headers;

    iget-object v5, p0, Lretrofit/RequestFactory;->contentType:Lcom/squareup/okhttp/MediaType;

    iget-boolean v6, p0, Lretrofit/RequestFactory;->hasBody:Z

    iget-boolean v7, p0, Lretrofit/RequestFactory;->isFormEncoded:Z

    iget-boolean v8, p0, Lretrofit/RequestFactory;->isMultipart:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lretrofit/RequestBuilder;-><init>(Ljava/lang/String;Lcom/squareup/okhttp/HttpUrl;Ljava/lang/String;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/MediaType;ZZZ)V

    if-eqz p1, :cond_1

    .line 53
    iget-object v0, p0, Lretrofit/RequestFactory;->requestBuilderActions:[Lretrofit/RequestBuilderAction;

    .line 54
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 61
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 62
    aget-object v3, v0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v9, v4}, Lretrofit/RequestBuilderAction;->perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Argument count ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") doesn\'t match action count ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    invoke-virtual {v9}, Lretrofit/RequestBuilder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p1

    return-object p1
.end method
