import java.util.List;

class FaceVertex{
 List<Face> faceList; //= new ArrayList<Face>();
 List<Vector> vertexList;// = new ArrayList<Vector>();
  
  FaceVertex(List<Face> faceList,List<Vector> vertexList){
    this.faceList = faceList;
    this.vertexList = vertexList;
  }
  
  void renderInmediate(){
     for(Face face: faceList){
        beginShape(TRIANGLE_STRIP);
        vertex(face.v1.x(),face.v1.y(),face.v1.z());
        vertex(face.v2.x(),face.v2.y(),face.v2.z());
        vertex(face.v3.x(),face.v3.y(),face.v3.z());
        endShape();
     }
     faceList = null;
     vertexList = null;
  }
  PShape renderRetained(){
    PShape shapeBoid = createShape();
    shapeBoid.beginShape();
    shapeBoid.stroke(0,255,0);
    shapeBoid.fill(255, 0, 0, 125);
    for(Face face: faceList){
        shapeBoid.vertex(face.v1.x(),face.v1.y(),face.v1.z());
        shapeBoid.vertex(face.v2.x(),face.v2.y(),face.v2.z());
        shapeBoid.vertex(face.v3.x(),face.v3.y(),face.v3.z());
     }
     shapeBoid.endShape();
     return shapeBoid;
  }
}
