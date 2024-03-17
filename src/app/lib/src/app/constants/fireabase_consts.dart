abstract class FirebaseConsts {
  static const rootCollection = "io.github.nguyenhoangvannha.apps.nguyenhoangvannha";
}

enum FireBaseDocuments{
  public("public"),
  techStacks("techStacks");

  final String id;

  const FireBaseDocuments(this.id);
}