const express = require("express");
const bodyParser = require("body-parser");
const connDB = require("./config/database");
const app = express();
const PORT = process.env.PORT || 3000;
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  return res.send("api alceoone");
});

// Start Api Transaksi
// create data / insert data
app.post("/api/product", (req, res) => {
  const data = { ...req.body };
  const querySql = "INSERT INTO tbl_product SET ?  ";
  connDB.query(querySql, data, (err, rows, field) => {
    if (err) {
      return res.status(500).json({ message: "Gagal insert data!", error: err });
    }
    res.status(201).json({ success: true, message: "Berhasil insert data!" });
  });
});

// read data / get data
app.get("/api/product", (req, res) => {
  const querySql = "SELECT * FROM tbl_product";

  connDB.query(querySql, (err, rows, field) => {
    if (err) {
      return res.status(500).json({ message: "Ada kesalahan", error: err });
    }
    res.status(200).json({ success: true, data: rows });
  });
});

// update data
app.put("/api/product/:id", (req, res) => {
  const data = { ...req.body };
  const querySearch = "SELECT * FROM tbl_product WHERE id = ?";
  const queryUpdate = "UPDATE tbl_product SET ? WHERE id = ?";

  connDB.query(querySearch, req.params.id, (err, rows, field) => {
    if (err) {
      return res.status(500).json({ message: "Ada kesalahan", error: err });
    }
    if (rows.length) {
      connDB.query(queryUpdate, [data, req.params.id], (err, rows, field) => {
        if (err) {
          return res.status(500).json({ message: "Ada kesalahan", error: err });
        }
        res.status(200).json({ success: true, message: "Berhasil update data!" });
      });
    } else {
      return res.status(404).json({ message: "Data tidak ditemukan!", success: false });
    }
  });
});

// Dellet Data
app.delete("/api/product/:id", (req, res) => {
  const querySearch = "SELECT * FROM tbl_product WHERE id = ?";
  const queryDelete = "DELETE FROM tbl_product WHERE id = ?";

  connDB.query(querySearch, req.params.id, (err, rows, field) => {
    if (err) {
      return res.status(500).json({ message: "Ada kesalahan", error: err });
    }

    if (rows.length) {
      connDB.query(queryDelete, req.params.id, (err, rows, field) => {
        if (err) {
          return res.status(500).json({ message: "Ada kesalahan", error: err });
        }
        res.status(200).json({ success: true, message: "Berhasil hapus data!" });
      });
    } else {
      return res.status(404).json({ message: "Data tidak ditemukan!", success: false });
    }
  });
});
// End API Product

// Start Api Transaksi
// create data / insert data
app.post("/api/transaksi", (req, res) => {
  const data = { ...req.body };
  const querySql = "INSERT INTO tbl_transaksi SET ?  ";
  connDB.query(querySql, data, (err, rows, field) => {
    if (err) {
      return res.status(500).json({ message: "Gagal insert data!", error: err });
    }
    res.status(201).json({ success: true, message: "Berhasil insert data!" });
  });
});
// read data / get data
app.get("/api/transaksi", (req, res) => {
  const querySql = "SELECT * FROM tbl_transaksi";

  connDB.query(querySql, (err, rows, field) => {
    if (err) {
      return res.status(500).json({ message: "Ada kesalahan", error: err });
    }
    res.status(200).json({ success: true, data: rows });
  });
});

// End API Transaksi

app.listen(PORT, () => console.log(`Server running at port: ${PORT}`));
