import express from 'express';
import { PrismaClient, Prisma } from "@prisma/client";

const prisma = new PrismaClient();


const portDefault = 3000;

const app = express();

const PORT = process.env.PORT || portDefault;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
