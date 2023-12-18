.class public interface abstract Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;
.super Ljava/lang/Object;
.source "PlaceholderUtils.java"

# interfaces
.implements Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/controller/utils/PlaceholderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurablePlaceholder"
.end annotation


# virtual methods
.method public abstract clearConfiguration()V
.end method

.method public abstract configure(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract configure(Ljava/lang/String;)V
.end method

.method public abstract configureImageView(I)V
.end method

.method public abstract configureMessage(Ljava/lang/String;)V
.end method
