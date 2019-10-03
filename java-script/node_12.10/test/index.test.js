let app = require ("../src/index.js");

test('says Hello World', () => {
  expect(app.helloWorld()).toBe("Hello World");
});
