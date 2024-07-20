// tailwind.config.js
module.exports = {
  content: [
    "../templates/**/*.html",
    "../../templates/**/*.html",
    "../../**/templates/**/*.html",
    "!../../**/node_modules",
    "../../**/*.js",
    "../../**/*.py",
  ],
  theme: {
    extend: {
      fontFamily: {
        rem: ["Pacifico", "cursive"],
        remmy: ["Satisfy", "cursive"],
        news: ["News Cycle", "sans-serif"],
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/aspect-ratio"),
  ],
};
