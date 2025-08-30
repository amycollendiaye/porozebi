import express from 'express'
const portDefault = 3000

const app = express();

const PORT = process.env.PORT || portDefault;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
