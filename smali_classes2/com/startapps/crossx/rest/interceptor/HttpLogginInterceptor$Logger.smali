.class public interface abstract Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;
.super Ljava/lang/Object;
.source "HttpLogginInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger$1;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger$1;-><init>()V

    sput-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;->DEFAULT:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
