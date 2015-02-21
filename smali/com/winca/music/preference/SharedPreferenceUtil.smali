.class public Lcom/winca/music/preference/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# static fields
.field private static final SHARE_PRE_NAME:Ljava/lang/String; = "com.winca.Music"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "contxt"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mContext:Landroid/content/Context;

    .line 9
    iput-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 10
    iput-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 16
    iput-object p1, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mContext:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mContext:Landroid/content/Context;

    const-string v1, "com.winca.Music"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 18
    iget-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 19
    return-void
.end method


# virtual methods
.method protected GetInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected GetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected PutInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "id"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method protected PutString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method protected getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "key"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/winca/music/preference/SharedPreferenceUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method
