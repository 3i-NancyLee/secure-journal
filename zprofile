secure_journal_path=<ADD_YOUR_JOURNAL_PATH>
encrypt() {
  sh $secure_journal_path/encrypt.sh $1
}
decrypt() {
  sh $secure_journal_path/decrypt.sh $1
}
