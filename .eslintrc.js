module.exports = {
  parser: 'babel-eslint',
  plugins: ['prettier'],
  extends: ['airbnb-base', 'prettier'],
  rules: {
    'prettier/prettier': ['error', { trailingComma: 'es5', singleQuote: true }],
    'no-console': 'off',
  },
};
