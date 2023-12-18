.class final Lretrofit/RequestBuilderAction$Part;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit/RequestBuilderAction;"
    }
.end annotation


# instance fields
.field private final converter:Lretrofit/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Converter<",
            "TT;",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Lcom/squareup/okhttp/Headers;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Headers;Lretrofit/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Headers;",
            "Lretrofit/Converter<",
            "TT;",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    .line 198
    iput-object p1, p0, Lretrofit/RequestBuilderAction$Part;->headers:Lcom/squareup/okhttp/Headers;

    .line 199
    iput-object p2, p0, Lretrofit/RequestBuilderAction$Part;->converter:Lretrofit/Converter;

    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 208
    :cond_0
    :try_start_0
    iget-object v0, p0, Lretrofit/RequestBuilderAction$Part;->converter:Lretrofit/Converter;

    invoke-interface {v0, p2}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    iget-object p2, p0, Lretrofit/RequestBuilderAction$Part;->headers:Lcom/squareup/okhttp/Headers;

    invoke-virtual {p1, p2, v0}, Lretrofit/RequestBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)V

    return-void

    .line 210
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to convert "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " to RequestBody"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
