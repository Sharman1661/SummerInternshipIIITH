from ultralytics import YOLO

model = YOLO('yolo26n-seg.pt').to('mps') 

results = model.predict(
    source='RoadVid1.webm', 
    save=True, 
    conf=0.25,
    project='output',
    name='video_inference_seg'
)