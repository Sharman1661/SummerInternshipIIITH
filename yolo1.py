from ultralytics import YOLO

model = YOLO("yolo26n.pt")

results = model("https://upload.wikimedia.org/wikipedia/commons/a/a4/The_Beatles_Abbey_Road_album_cover.jpg")

results[0].show()