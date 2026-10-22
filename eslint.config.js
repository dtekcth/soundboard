const js = require("@eslint/js");
const globals = require("globals");
const vue = require("eslint-plugin-vue");

module.exports = [
  {
    ignores: ["dist/**"],
  },
  js.configs.recommended,
  ...vue.configs["flat/essential"],
  {
    languageOptions: {
      globals: {
        ...globals.browser,
        ...globals.node,
      },
      parserOptions: {
        ecmaVersion: "latest",
        sourceType: "module",
      },
    },
  },
];
