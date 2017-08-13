function validateEmail(email) {
  return email.match(/@/) ?
    email :
    new Error(`無効なメールアドレスです: ${email}`);
}

const email = null;

try {
  const validatedEmail = validateEmail(email);
  console.log(validatedEmail);
  if (validatedEmail instanceof Error) {
    console.error(validatedEmail.message);
  } else {
    console.log(`正しい形式のアドレスです: ${validatedEmail}`);
  }
} catch(err) {
  console.error(`エラー: ${err.message}`);
} finally {
  console.log('処理を終了します。');
}
