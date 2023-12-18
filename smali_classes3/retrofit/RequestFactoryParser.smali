.class final Lretrofit/RequestFactoryParser;
.super Ljava/lang/Object;
.source "RequestFactoryParser.java"


# static fields
.field private static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private contentType:Lcom/squareup/okhttp/MediaType;

.field private hasBody:Z

.field private headers:Lcom/squareup/okhttp/Headers;

.field private httpMethod:Ljava/lang/String;

.field private isFormEncoded:Z

.field private isMultipart:Z

.field private final method:Ljava/lang/reflect/Method;

.field private relativeUrl:Ljava/lang/String;

.field private relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestBuilderActions:[Lretrofit/RequestBuilderAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RequestFactoryParser;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RequestFactoryParser;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method private varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    .line 92
    iget-object v0, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " (parameter #"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    .line 88
    iget-object v0, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " (parameter #"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2, p4}, Lretrofit/Utils;->methodError(Ljava/lang/Throwable;Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method static parse(Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;Lretrofit/Retrofit;)Lretrofit/RequestFactory;
    .locals 1

    .line 58
    new-instance v0, Lretrofit/RequestFactoryParser;

    invoke-direct {v0, p0}, Lretrofit/RequestFactoryParser;-><init>(Ljava/lang/reflect/Method;)V

    .line 59
    invoke-direct {v0, p1}, Lretrofit/RequestFactoryParser;->parseMethodAnnotations(Ljava/lang/reflect/Type;)V

    .line 60
    invoke-direct {v0, p2}, Lretrofit/RequestFactoryParser;->parseParameters(Lretrofit/Retrofit;)V

    .line 61
    invoke-virtual {p2}, Lretrofit/Retrofit;->baseUrl()Lretrofit/BaseUrl;

    move-result-object p0

    invoke-direct {v0, p0}, Lretrofit/RequestFactoryParser;->toRequestFactory(Lretrofit/BaseUrl;)Lretrofit/RequestFactory;

    move-result-object p0

    return-object p0
.end method

.method private parseHeaders([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;
    .locals 7

    .line 179
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 180
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_1

    .line 186
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    .line 188
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    invoke-static {v4}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v4

    iput-object v4, p0, Lretrofit/RequestFactoryParser;->contentType:Lcom/squareup/okhttp/MediaType;

    goto :goto_1

    .line 191
    :cond_0
    invoke-virtual {v0, v6, v4}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_1
    iget-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 194
    :cond_2
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object p1

    return-object p1
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 155
    iput-object p1, p0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    .line 156
    iput-boolean p3, p0, Lretrofit/RequestFactoryParser;->hasBody:Z

    .line 158
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x3f

    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    .line 164
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ge p1, p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 166
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 167
    sget-object p3, Lretrofit/RequestFactoryParser;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 168
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    iget-object p2, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string p3, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 174
    :cond_2
    :goto_0
    iput-object p2, p0, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    .line 175
    invoke-static {p2}, Lretrofit/RequestFactoryParser;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lretrofit/RequestFactoryParser;->relativeUrlParamNames:Ljava/util/Set;

    return-void

    .line 152
    :cond_3
    iget-object p2, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string p3, "Only one HTTP method is allowed. Found: %s and %s."

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private parseMethodAnnotations(Ljava/lang/reflect/Type;)V
    .locals 8

    .line 96
    iget-object v0, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_e

    aget-object v4, v0, v3

    .line 97
    instance-of v5, v4, Lretrofit/http/DELETE;

    if-eqz v5, :cond_0

    .line 98
    check-cast v4, Lretrofit/http/DELETE;

    invoke-interface {v4}, Lretrofit/http/DELETE;->value()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DELETE"

    invoke-direct {p0, v5, v4, v2}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 99
    :cond_0
    instance-of v5, v4, Lretrofit/http/GET;

    if-eqz v5, :cond_1

    .line 100
    check-cast v4, Lretrofit/http/GET;

    invoke-interface {v4}, Lretrofit/http/GET;->value()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    invoke-direct {p0, v5, v4, v2}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 101
    :cond_1
    instance-of v5, v4, Lretrofit/http/HEAD;

    if-eqz v5, :cond_3

    .line 102
    check-cast v4, Lretrofit/http/HEAD;

    invoke-interface {v4}, Lretrofit/http/HEAD;->value()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HEAD"

    invoke-direct {p0, v5, v4, v2}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    const-class v4, Ljava/lang/Void;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    .line 104
    :cond_2
    iget-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v0, "HEAD method must use Void as response type."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 106
    :cond_3
    instance-of v5, v4, Lretrofit/http/PATCH;

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 107
    check-cast v4, Lretrofit/http/PATCH;

    invoke-interface {v4}, Lretrofit/http/PATCH;->value()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PATCH"

    invoke-direct {p0, v5, v4, v6}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 108
    :cond_4
    instance-of v5, v4, Lretrofit/http/POST;

    if-eqz v5, :cond_5

    .line 109
    check-cast v4, Lretrofit/http/POST;

    invoke-interface {v4}, Lretrofit/http/POST;->value()Ljava/lang/String;

    move-result-object v4

    const-string v5, "POST"

    invoke-direct {p0, v5, v4, v6}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 110
    :cond_5
    instance-of v5, v4, Lretrofit/http/PUT;

    if-eqz v5, :cond_6

    .line 111
    check-cast v4, Lretrofit/http/PUT;

    invoke-interface {v4}, Lretrofit/http/PUT;->value()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PUT"

    invoke-direct {p0, v5, v4, v6}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 112
    :cond_6
    instance-of v5, v4, Lretrofit/http/HTTP;

    if-eqz v5, :cond_7

    .line 113
    check-cast v4, Lretrofit/http/HTTP;

    .line 114
    invoke-interface {v4}, Lretrofit/http/HTTP;->method()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lretrofit/http/HTTP;->path()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lretrofit/http/HTTP;->hasBody()Z

    move-result v4

    invoke-direct {p0, v5, v6, v4}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 115
    :cond_7
    instance-of v5, v4, Lretrofit/http/Headers;

    if-eqz v5, :cond_9

    .line 116
    check-cast v4, Lretrofit/http/Headers;

    invoke-interface {v4}, Lretrofit/http/Headers;->value()[Ljava/lang/String;

    move-result-object v4

    .line 117
    array-length v5, v4

    if-eqz v5, :cond_8

    .line 120
    invoke-direct {p0, v4}, Lretrofit/RequestFactoryParser;->parseHeaders([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v4

    iput-object v4, p0, Lretrofit/RequestFactoryParser;->headers:Lcom/squareup/okhttp/Headers;

    goto :goto_1

    .line 118
    :cond_8
    iget-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v0, "@Headers annotation is empty."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 121
    :cond_9
    instance-of v5, v4, Lretrofit/http/Multipart;

    const-string v7, "Only one encoding annotation is allowed."

    if-eqz v5, :cond_b

    .line 122
    iget-boolean v4, p0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    if-nez v4, :cond_a

    .line 125
    iput-boolean v6, p0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    goto :goto_1

    .line 123
    :cond_a
    iget-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v7, v0}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 126
    :cond_b
    instance-of v4, v4, Lretrofit/http/FormUrlEncoded;

    if-eqz v4, :cond_d

    .line 127
    iget-boolean v4, p0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    if-nez v4, :cond_c

    .line 130
    iput-boolean v6, p0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    goto :goto_1

    .line 128
    :cond_c
    iget-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v7, v0}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_d
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 134
    :cond_e
    iget-object p1, p0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 137
    iget-boolean p1, p0, Lretrofit/RequestFactoryParser;->hasBody:Z

    if-nez p1, :cond_11

    .line 138
    iget-boolean p1, p0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    if-nez p1, :cond_10

    .line 142
    iget-boolean p1, p0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    if-nez p1, :cond_f

    goto :goto_2

    .line 143
    :cond_f
    iget-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v0, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 139
    :cond_10
    iget-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v0, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_11
    :goto_2
    return-void

    .line 135
    :cond_12
    iget-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v0, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private parseParameters(Lretrofit/Retrofit;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 198
    iget-object v2, v1, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 199
    iget-object v3, v1, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 208
    array-length v4, v3

    .line 209
    new-array v5, v4, [Lretrofit/RequestBuilderAction;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v7, v4, :cond_20

    .line 211
    aget-object v14, v2, v7

    .line 212
    aget-object v15, v3, v7

    if-eqz v15, :cond_1d

    .line 214
    array-length v6, v15

    move-object/from16 v16, v2

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v17, v3

    if-ge v2, v6, :cond_1e

    aget-object v3, v15, v2

    move/from16 v18, v4

    .line 216
    instance-of v4, v3, Lretrofit/http/Url;

    move/from16 v19, v6

    const-string v6, "@Path parameters may not be used with @Url."

    const/16 v20, 0x1

    if-eqz v4, :cond_5

    if-nez v8, :cond_4

    if-nez v12, :cond_3

    if-nez v13, :cond_2

    .line 226
    const-class v3, Ljava/lang/String;

    if-ne v14, v3, :cond_1

    .line 229
    iget-object v3, v1, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 233
    new-instance v3, Lretrofit/RequestBuilderAction$Url;

    invoke-direct {v3}, Lretrofit/RequestBuilderAction$Url;-><init>()V

    move-object v4, v3

    move/from16 v8, v20

    goto/16 :goto_2

    .line 230
    :cond_0
    iget-object v0, v1, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "@Url cannot be used with @%s URL"

    invoke-direct {v1, v7, v2, v0}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "@Url must be String type."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 227
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    const/4 v2, 0x0

    const-string v0, "A @Url parameter must not come after a @Query"

    new-array v2, v2, [Ljava/lang/Object;

    .line 224
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 221
    invoke-direct {v1, v7, v6, v0}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4
    const/4 v2, 0x0

    const-string v0, "Multiple @Url method annotations found."

    new-array v2, v2, [Ljava/lang/Object;

    .line 218
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 235
    :cond_5
    instance-of v4, v3, Lretrofit/http/Path;

    if-eqz v4, :cond_9

    if-nez v13, :cond_8

    if-nez v8, :cond_7

    .line 242
    iget-object v4, v1, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 248
    check-cast v3, Lretrofit/http/Path;

    .line 249
    invoke-interface {v3}, Lretrofit/http/Path;->value()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-direct {v1, v7, v4}, Lretrofit/RequestFactoryParser;->validatePathName(ILjava/lang/String;)V

    .line 251
    new-instance v6, Lretrofit/RequestBuilderAction$Path;

    invoke-interface {v3}, Lretrofit/http/Path;->encoded()Z

    move-result v3

    invoke-direct {v6, v4, v3}, Lretrofit/RequestBuilderAction$Path;-><init>(Ljava/lang/String;Z)V

    move-object v4, v6

    move/from16 v12, v20

    goto :goto_2

    .line 243
    :cond_6
    iget-object v0, v1, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "@Path can only be used with relative url on @%s"

    invoke-direct {v1, v7, v2, v0}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 240
    invoke-direct {v1, v7, v6, v0}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8
    const/4 v0, 0x0

    const-string v2, "A @Path parameter must not come after a @Query."

    new-array v0, v0, [Ljava/lang/Object;

    .line 237
    invoke-direct {v1, v7, v2, v0}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 253
    :cond_9
    instance-of v4, v3, Lretrofit/http/Query;

    if-eqz v4, :cond_a

    .line 254
    check-cast v3, Lretrofit/http/Query;

    .line 255
    new-instance v4, Lretrofit/RequestBuilderAction$Query;

    invoke-interface {v3}, Lretrofit/http/Query;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lretrofit/http/Query;->encoded()Z

    move-result v3

    invoke-direct {v4, v6, v3}, Lretrofit/RequestBuilderAction$Query;-><init>(Ljava/lang/String;Z)V

    move/from16 v13, v20

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 258
    :cond_a
    instance-of v4, v3, Lretrofit/http/QueryMap;

    if-eqz v4, :cond_c

    .line 259
    const-class v4, Ljava/util/Map;

    invoke-static {v14}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 262
    check-cast v3, Lretrofit/http/QueryMap;

    .line 263
    new-instance v4, Lretrofit/RequestBuilderAction$QueryMap;

    invoke-interface {v3}, Lretrofit/http/QueryMap;->encoded()Z

    move-result v3

    invoke-direct {v4, v3}, Lretrofit/RequestBuilderAction$QueryMap;-><init>(Z)V

    goto :goto_2

    :cond_b
    const-string v0, "@QueryMap parameter type must be Map."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 260
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 265
    :cond_c
    instance-of v4, v3, Lretrofit/http/Header;

    if-eqz v4, :cond_d

    .line 266
    check-cast v3, Lretrofit/http/Header;

    .line 267
    new-instance v4, Lretrofit/RequestBuilderAction$Header;

    invoke-interface {v3}, Lretrofit/http/Header;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lretrofit/RequestBuilderAction$Header;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 269
    :cond_d
    instance-of v4, v3, Lretrofit/http/Field;

    if-eqz v4, :cond_f

    .line 270
    iget-boolean v4, v1, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    if-eqz v4, :cond_e

    .line 273
    check-cast v3, Lretrofit/http/Field;

    .line 274
    new-instance v4, Lretrofit/RequestBuilderAction$Field;

    invoke-interface {v3}, Lretrofit/http/Field;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lretrofit/http/Field;->encoded()Z

    move-result v3

    invoke-direct {v4, v6, v3}, Lretrofit/RequestBuilderAction$Field;-><init>(Ljava/lang/String;Z)V

    :goto_3
    move/from16 v10, v20

    goto :goto_2

    :cond_e
    const-string v0, "@Field parameters can only be used with form encoding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 271
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 277
    :cond_f
    instance-of v4, v3, Lretrofit/http/FieldMap;

    if-eqz v4, :cond_12

    .line 278
    iget-boolean v4, v1, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    if-eqz v4, :cond_11

    .line 281
    const-class v4, Ljava/util/Map;

    invoke-static {v14}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 284
    check-cast v3, Lretrofit/http/FieldMap;

    .line 285
    new-instance v4, Lretrofit/RequestBuilderAction$FieldMap;

    invoke-interface {v3}, Lretrofit/http/FieldMap;->encoded()Z

    move-result v3

    invoke-direct {v4, v3}, Lretrofit/RequestBuilderAction$FieldMap;-><init>(Z)V

    goto :goto_3

    :cond_10
    const-string v0, "@FieldMap parameter type must be Map."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 282
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_11
    const/4 v2, 0x0

    const-string v0, "@FieldMap parameters can only be used with form encoding."

    new-array v2, v2, [Ljava/lang/Object;

    .line 279
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 288
    :cond_12
    instance-of v4, v3, Lretrofit/http/Part;

    if-eqz v4, :cond_14

    .line 289
    iget-boolean v4, v1, Lretrofit/RequestFactoryParser;->isMultipart:Z

    if-eqz v4, :cond_13

    .line 292
    check-cast v3, Lretrofit/http/Part;

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "form-data; name=\""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-interface {v3}, Lretrofit/http/Part;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Content-Transfer-Encoding"

    .line 295
    invoke-interface {v3}, Lretrofit/http/Part;->encoding()Ljava/lang/String;

    move-result-object v3

    const-string v11, "Content-Disposition"

    filled-new-array {v11, v4, v6, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-static {v3}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v3

    .line 299
    :try_start_0
    invoke-virtual {v0, v14, v15}, Lretrofit/Retrofit;->requestConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    new-instance v6, Lretrofit/RequestBuilderAction$Part;

    invoke-direct {v6, v3, v4}, Lretrofit/RequestBuilderAction$Part;-><init>(Lcom/squareup/okhttp/Headers;Lretrofit/Converter;)V

    move-object v4, v6

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "Unable to create @Part converter for %s"

    .line 301
    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v7, v0, v3}, Lretrofit/RequestFactoryParser;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_13
    const-string v0, "@Part parameters can only be used with multipart encoding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 290
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 307
    :cond_14
    instance-of v4, v3, Lretrofit/http/PartMap;

    if-eqz v4, :cond_17

    .line 308
    iget-boolean v4, v1, Lretrofit/RequestFactoryParser;->isMultipart:Z

    if-eqz v4, :cond_16

    .line 312
    const-class v4, Ljava/util/Map;

    invoke-static {v14}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 315
    check-cast v3, Lretrofit/http/PartMap;

    .line 316
    new-instance v4, Lretrofit/RequestBuilderAction$PartMap;

    invoke-interface {v3}, Lretrofit/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3, v15}, Lretrofit/RequestBuilderAction$PartMap;-><init>(Lretrofit/Retrofit;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)V

    :goto_4
    move/from16 v11, v20

    goto/16 :goto_2

    :cond_15
    const-string v0, "@PartMap parameter type must be Map."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 313
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_16
    const/4 v2, 0x0

    const-string v0, "@PartMap parameters can only be used with multipart encoding."

    new-array v2, v2, [Ljava/lang/Object;

    .line 309
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 320
    :cond_17
    instance-of v3, v3, Lretrofit/http/Body;

    if-eqz v3, :cond_1a

    .line 321
    iget-boolean v3, v1, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    if-nez v3, :cond_19

    iget-boolean v3, v1, Lretrofit/RequestFactoryParser;->isMultipart:Z

    if-nez v3, :cond_19

    if-nez v9, :cond_18

    .line 332
    :try_start_1
    invoke-virtual {v0, v14, v15}, Lretrofit/Retrofit;->requestConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    new-instance v4, Lretrofit/RequestBuilderAction$Body;

    invoke-direct {v4, v3}, Lretrofit/RequestBuilderAction$Body;-><init>(Lretrofit/Converter;)V

    move/from16 v9, v20

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    const-string v0, "Unable to create @Body converter for %s"

    .line 334
    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v7, v0, v3}, Lretrofit/RequestFactoryParser;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_18
    const-string v0, "Multiple @Body method annotations found."

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    .line 326
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_19
    const/4 v3, 0x0

    const-string v0, "@Body parameters cannot be used with form or multi-part encoding."

    new-array v2, v3, [Ljava/lang/Object;

    .line 322
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1a
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_1c

    .line 342
    aget-object v6, v5, v7

    if-nez v6, :cond_1b

    .line 345
    aput-object v4, v5, v7

    goto :goto_6

    :cond_1b
    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    new-array v2, v3, [Ljava/lang/Object;

    .line 343
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1c
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v6, v19

    goto/16 :goto_1

    :cond_1d
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :cond_1e
    move/from16 v18, v4

    .line 350
    aget-object v2, v5, v7

    if-eqz v2, :cond_1f

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_1f
    const-string v0, "No Retrofit annotation found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 351
    invoke-direct {v1, v7, v0, v2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 355
    :cond_20
    iget-object v0, v1, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_22

    if-eqz v8, :cond_21

    goto :goto_7

    .line 356
    :cond_21
    iget-object v0, v1, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    iget-object v2, v1, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Missing either @%s URL or @Url parameter."

    invoke-static {v0, v3, v2}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 358
    :cond_22
    :goto_7
    iget-boolean v0, v1, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    if-nez v0, :cond_24

    iget-boolean v2, v1, Lretrofit/RequestFactoryParser;->isMultipart:Z

    if-nez v2, :cond_24

    iget-boolean v2, v1, Lretrofit/RequestFactoryParser;->hasBody:Z

    if-nez v2, :cond_24

    if-nez v9, :cond_23

    goto :goto_8

    .line 359
    :cond_23
    iget-object v0, v1, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v2, "Non-body HTTP method cannot contain @Body."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_24
    :goto_8
    const/4 v3, 0x0

    if-eqz v0, :cond_26

    if-eqz v10, :cond_25

    goto :goto_9

    .line 362
    :cond_25
    iget-object v0, v1, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v2, "Form-encoded method must contain at least one @Field."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 364
    :cond_26
    :goto_9
    iget-boolean v0, v1, Lretrofit/RequestFactoryParser;->isMultipart:Z

    if-eqz v0, :cond_28

    if-eqz v11, :cond_27

    goto :goto_a

    .line 365
    :cond_27
    iget-object v0, v1, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v2, "Multipart method must contain at least one @Part."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 368
    :cond_28
    :goto_a
    iput-object v5, v1, Lretrofit/RequestFactoryParser;->requestBuilderActions:[Lretrofit/RequestBuilderAction;

    return-void
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    sget-object v0, Lretrofit/RequestFactoryParser;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 388
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 389
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 390
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toRequestFactory(Lretrofit/BaseUrl;)Lretrofit/RequestFactory;
    .locals 11

    .line 82
    new-instance v10, Lretrofit/RequestFactory;

    iget-object v1, p0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    iget-object v3, p0, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    iget-object v4, p0, Lretrofit/RequestFactoryParser;->headers:Lcom/squareup/okhttp/Headers;

    iget-object v5, p0, Lretrofit/RequestFactoryParser;->contentType:Lcom/squareup/okhttp/MediaType;

    iget-boolean v6, p0, Lretrofit/RequestFactoryParser;->hasBody:Z

    iget-boolean v7, p0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    iget-boolean v8, p0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    iget-object v9, p0, Lretrofit/RequestFactoryParser;->requestBuilderActions:[Lretrofit/RequestBuilderAction;

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lretrofit/RequestFactory;-><init>(Ljava/lang/String;Lretrofit/BaseUrl;Ljava/lang/String;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/MediaType;ZZZ[Lretrofit/RequestBuilderAction;)V

    return-object v10
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 1

    .line 372
    sget-object v0, Lretrofit/RequestFactoryParser;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lretrofit/RequestFactoryParser;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "URL \"%s\" does not contain \"{%s}\"."

    invoke-direct {p0, p1, v0, p2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 373
    :cond_1
    sget-object v0, Lretrofit/RequestFactoryParser;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 374
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "@Path parameter name must match %s. Found: %s"

    .line 373
    invoke-direct {p0, p1, v0, p2}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
