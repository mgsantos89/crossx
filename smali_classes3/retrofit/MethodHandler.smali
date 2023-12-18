.class final Lretrofit/MethodHandler;
.super Ljava/lang/Object;
.source "MethodHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final callAdapter:Lretrofit/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/CallAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final requestFactory:Lretrofit/RequestFactory;

.field private final responseConverter:Lretrofit/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Converter<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final retrofit:Lretrofit/Retrofit;


# direct methods
.method private constructor <init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/CallAdapter;Lretrofit/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Retrofit;",
            "Lretrofit/RequestFactory;",
            "Lretrofit/CallAdapter<",
            "TT;>;",
            "Lretrofit/Converter<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lretrofit/MethodHandler;->retrofit:Lretrofit/Retrofit;

    .line 69
    iput-object p2, p0, Lretrofit/MethodHandler;->requestFactory:Lretrofit/RequestFactory;

    .line 70
    iput-object p3, p0, Lretrofit/MethodHandler;->callAdapter:Lretrofit/CallAdapter;

    .line 71
    iput-object p4, p0, Lretrofit/MethodHandler;->responseConverter:Lretrofit/Converter;

    return-void
.end method

.method static create(Lretrofit/Retrofit;Ljava/lang/reflect/Method;)Lretrofit/MethodHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Retrofit;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit/MethodHandler<",
            "*>;"
        }
    .end annotation

    .line 26
    invoke-static {p1, p0}, Lretrofit/MethodHandler;->createCallAdapter(Ljava/lang/reflect/Method;Lretrofit/Retrofit;)Lretrofit/CallAdapter;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Lretrofit/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 29
    invoke-static {p1, p0, v1}, Lretrofit/MethodHandler;->createResponseConverter(Ljava/lang/reflect/Method;Lretrofit/Retrofit;Ljava/lang/reflect/Type;)Lretrofit/Converter;

    move-result-object v2

    .line 30
    invoke-static {p1, v1, p0}, Lretrofit/RequestFactoryParser;->parse(Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;Lretrofit/Retrofit;)Lretrofit/RequestFactory;

    move-result-object p1

    .line 31
    new-instance v1, Lretrofit/MethodHandler;

    invoke-direct {v1, p0, p1, v0, v2}, Lretrofit/MethodHandler;-><init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/CallAdapter;Lretrofit/Converter;)V

    return-object v1
.end method

.method private static createCallAdapter(Ljava/lang/reflect/Method;Lretrofit/Retrofit;)Lretrofit/CallAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/Retrofit;",
            ")",
            "Lretrofit/CallAdapter<",
            "*>;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lretrofit/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 45
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lretrofit/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/CallAdapter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v1, "Unable to create call adapter for %s"

    .line 47
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p0, v1, v0}, Lretrofit/Utils;->methodError(Ljava/lang/Throwable;Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Service methods cannot return void."

    .line 41
    invoke-static {p0, v0, p1}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const-string p1, "Method return type must not include a type variable or wildcard: %s"

    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static createResponseConverter(Ljava/lang/reflect/Method;Lretrofit/Retrofit;Ljava/lang/reflect/Type;)Lretrofit/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/Retrofit;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lretrofit/Converter<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 55
    :try_start_0
    invoke-virtual {p1, p2, v0}, Lretrofit/Retrofit;->responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "Unable to create converter for %s"

    .line 57
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, v0, p2}, Lretrofit/Utils;->methodError(Ljava/lang/Throwable;Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 75
    iget-object v0, p0, Lretrofit/MethodHandler;->callAdapter:Lretrofit/CallAdapter;

    new-instance v1, Lretrofit/OkHttpCall;

    iget-object v2, p0, Lretrofit/MethodHandler;->retrofit:Lretrofit/Retrofit;

    iget-object v3, p0, Lretrofit/MethodHandler;->requestFactory:Lretrofit/RequestFactory;

    iget-object v4, p0, Lretrofit/MethodHandler;->responseConverter:Lretrofit/Converter;

    invoke-direct {v1, v2, v3, v4, p1}, Lretrofit/OkHttpCall;-><init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/Converter;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lretrofit/CallAdapter;->adapt(Lretrofit/Call;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
