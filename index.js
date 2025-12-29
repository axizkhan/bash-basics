import express from "express";

let uid = 0;

const app = express();

app.use(express.json());
const PORT = 5050;

class Anime {
  animes = {};
  length = 0;

  getAllAnime() {
    return this.length && this.animes;
  }

  getAnime(id) {
    const Anime = this.animes[`${id}`];
    return Anime && Anime;
  }

  putAnime(body, id) {
    const { name = "", mangaWriter = "", studio = "", rating = 0 } = body || {};
    let newAnime = {
      name: name,
      mangaWriter: mangaWriter,
      studio: studio,
      rating: rating,
    };
    const Isanime = this.animes[`${id}`];
    const result = Isanime && (this.animes[`${id}`] = newAnime) && true;
    return result;
  }

  postAnime(body) {
    const { name = "", mangaWriter = "", studio = "", rating = 0 } = body || {};

    let newAnime = {
      name: name,
      mangaWriter: mangaWriter,
      studio: studio,
      rating: rating,
    };
    this.animes[`${uid}`] = newAnime;
    uid++;
    this.length++;
    return true;
  }

  deleteAnime(id) {
    const anime = this.animes[`${id}`];
    const result = anime && delete this.animes[`${id}`] && true;
    this.length--;
    return result;
  }

  patchAnime(body, id) {
    let anime = this.animes[`${id}`];

    if (anime) {
      for (let key in body) {
        anime[key] = body[key];
      }
      return true;
    }

    return false;
  }
}

const anime = new Anime();

app.get("/", (req, res) => {
  const allAnime = anime.getAllAnime();

  if (allAnime) {
    return res.status(200).json({
      data: allAnime,
      message: "Successfull",
      success: true,
    });
  }
  return res.status(200).json({
    data: [],
    message: "Request successfull but no data",
    success: true,
  });
});

app.get("/:id", (req, res) => {
  const { id } = req.params;
  const Anime = anime.getAnime(id);
  if (Anime) {
    return res.status(200).json({
      data: Anime,
      message: "Data found",
      success: true,
    });
  }
  return res.status(404).json({ error: "Data not found", success: false });
});

app.post("/", (req, res) => {
  const result = anime.postAnime(req.body);

  if (result) {
    return res.status(201).send({
      message: "data created successfully",
      data: result,
      success: true,
    });
  }
  return res.status(404).send({ error: "Data not found", success: false });
});

app.put("/:id", (req, res) => {
  const { id } = req.params;
  const result = anime.putAnime(req.body, id);
  if (result) {
    return res.status(204).send({
      message: "Data updated successfully",
      success: false,
    });
  }
  return res.status(404).json({ error: "Data not found", success: false });
});

app.patch("/:id", (req, res) => {
  const { id } = req.params;
  const result = anime.patchAnime(req.body, id);
  if (result) {
    return res.status.json({
      message: "Data updated successfully",
      success: true,
    });
  }
  return res.status(404).json({ error: "Data not found", success: false });
});

app.delete("/:id", (req, res) => {
  const { id } = req.params;
  const result = anime.deleteAnime(id);
  if (result) {
    return res
      .status(204)
      .json({ message: "Data deleted successfully", success: true });
  }
  return res.status(404).json({ error: "Data not found", success: false });
});

app.listen(PORT, () => {
  console.log(`Server is listening ${PORT}`);
});

