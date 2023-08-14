# Firebaseとは
Firebase とは Google 社が提供するモバイルアプリを中心としたアプリケーションのバックエンド・インフラとして使えるサービス群です。
バックエンド・インフラをサービスとして提供し、開発なしでアプリケーションに組み込むことができます。


## サインイン処理
Authentication を使ったサインイン処理は非常にシンプルです。firebase_authパッケージが用意している FirebaseAuth.instance を取得し、クラスに定義された signInWithEmailAndPassword という関数に E メールとパスワードを渡すだけです。

成功すれば UserCredential というユーザー情報を保持したクラスが返されます。失敗すれば FirebaseAuthException というクラスが返されます。

## サインアップ処理
サインアップ処理もサインイン処理同様に非常にシンプルです。FirebaseAuth.instanceを取得し、クラスに定義された createUserWithEmailAndPassword という関数に E メールとパスワードを渡すだけです。

サインイン同様に成功すればUserCredentialクラス、失敗すればFirebaseAuthExceptionクラスが返されます。

## 認証状態を監視する
認証状態の監視は前述の通り、FirebaseAuth.instanceが持つ、 authStateChanges() という関数が返すストリームを使って行います。

購読処理の中ではUserオブジェクトが流れてきた場合、isSignedInをtrueに、nullの場合、falseにすることで認証状態をMapScreenに伝えています。

## iOSでは画像フォルダのアクセスには許可が必要
ios/Runner/info.plistに記述