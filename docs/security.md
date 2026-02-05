# Boas práticas

Nunca salvar senha no Firestore

Validar autenticação em todas as queries

Usar HTTPS

match /users/{userId} {
allow read, write: if request.auth.uid == userId;
}