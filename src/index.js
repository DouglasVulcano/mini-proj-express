const express = require("express");
const cors = require("cors");
const app = express();
const port = 3000;

app.use(cors());

// Rota GET que retorna um array de valores
app.get("/values", (req, res) => {
  const values = [
    {
      id: 1,
      name: "Brasil",
      description: "Pais do continente americano",
    },
  ];

  res.json(values);
});

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});

