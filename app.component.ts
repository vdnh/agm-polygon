import { Component, ViewChild, OnInit } from '@angular/core';
import { MouseEvent, LatLngLiteral, LatLng, LatLngBounds } from '@agm/core';
import { AgmPolygon } from 'src/agm/core';
//import turf from '@turf/boolean-point-in-polygon';
declare const google: any;
declare var turf:any;

@Component({
  selector: 'my-app',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  @ViewChild(AgmPolygon) polygon01: any;
  polygon: any;
  managerOptions = {
    drawingControl: true,
    drawingControlOptions: {
      drawingModes: ['polygon']
    },
    polygonOptions: {
      draggable: true,
      editable: true
    },
    drawingMode: "polygon"
  };

//* 
  lat: number = 0;
  lng: number = 0;
  zoom: number = 10;
  paths: Array<LatLngLiteral> = [
    { lat: 45.59484532374626,  lng: -73.97460678613282 },
    { lat: 45.5121445248795,  lng: -73.97598007714845 },
    { lat: 45.5256157388725, lng: -73.77410629785157 },
    { lat: 45.63518985644801, lng: -73.79882553613282 },
  ]
  /*
  paths: Array<LatLngLiteral> = [
    { lat: 0,  lng: 10 },
    { lat: 0,  lng: 20 },
    { lat: 10, lng: 20 },
    { lat: 10, lng: 10 },
    { lat: 0,  lng: 10 }
  ]//*/
  // Nesting paths will create a hole where they overlap;
  nestedPaths: Array<Array<LatLngLiteral>> = [[
      { lat: 0,  lng: 10 },
      { lat: 0,  lng: 20 },
      { lat: 10, lng: 20 },
      { lat: 10, lng: 10 },
      { lat: 0,  lng: 10 }
    ], [
      { lat: 0, lng: 15 },
      { lat: 0, lng: 20 },
      { lat: 5, lng: 20 },
      { lat: 5, lng: 15 },
      { lat: 0, lng: 15 }
    ]]
//*/

  constructor() {
  }

  ngOnInit(){
    console.log("This is paths of polyon default : ") 
    this.paths.forEach((x:LatLngLiteral)=>{
      console.log('voici : ')
      console.log('lat : '+x.lat + ' lng : '+x.lng)
    })
    //this.polygon=this.paths;
  }
  options: any = {
    lat: 45.503964,
    lng: -73.567426,
    zoom: 10,
    fillColor: '#DC143C',
    draggable: true,
    editable: true,
    visible: true
  };
  onDragEnd(paths, $event){
    console.log("paths change : " + paths)
    paths.forEach((x:LatLngLiteral)=>{
      console.log('voici : ')
      console.log('lat : '+x.lat + ' lng : '+x.lng)
    })
  }
  polygonCreated($event) {

    this.paths=[];
    if (this.polygon) {
      this.polygon.setMap(null);
    }
    this.polygon = $event;
    this.addPolygonChangeEvent(this.polygon);
    google.maps.event.addListener(this.polygon, 'coordinates_changed', function (index, obj) {
      // Polygon object: yourPolygon
      console.log('coordinates_changed - c"est nous.');  
      //this.getPaths(); 
      //console.log("After this.getPaths()")
    });
    console.log('this.polygon.getPath() : '+this.polygon.getPath().length)    
    let path:Array<LatLng>=this.polygon.getPath()
    path.forEach((latLng:LatLng)=>{
      // let latLngLiteral:LatLngLiteral = new google.maps.latLng();
      // latLngLiteral.lat=latLng.lat();
      // latLngLiteral.lng=latLng.lng();      
      this.paths.push({lat:latLng.lat(), lng:latLng.lng()})
      //console.log('latLng.lat: ' +latLng.lat())
      //console.log('latLng.lng: ' +latLng.lng())
    })
    console.log("This is paths of polyon after polygon was created : ") 
    this.paths.forEach((x:LatLngLiteral)=>{
      console.log('voici : ')
      console.log('lat : '+x.lat + ' lng : '+x.lng)
    })
  }
  getBoundPolygon(){
    google.maps.Polygon.prototype.getBounds = function(){
      var bounds = new google.maps.LatLngBounds();
      this.polygon.getPath().forEach(function(element, index){
        bounds.extend(element);
      });
      return bounds;
    }
  }
  getPathsPolygonExiste(){
    console.log("get path Polygon Existe");
      this.paths.forEach((x:LatLngLiteral, i:number)=>{
        console.log('voici : '+ i++)
        console.log('lat : '+x.lat + ' lng : '+x.lng)
      })
      //return this.paths;
  }

  getPaths() {
    /*
    var pt = turf.point([-77, 44]);
    var poly = turf.polygon([[
      [-81, 41],
      [-81, 47],
      [-72, 47],
      [-72, 41],
      [-81, 41]
    ]]);//*/
 
    //console.log('turf.booleanPointInPolygon(pt, poly) : '+ turf.booleanPointInPolygon(pt, poly));

    console.log("get path");
    let pathsToArrayString:Array<string>=[];
    let pathsToString:string="";
    let pathsRebuild:Array<string>=[];
    if (this.polygon) {
      const vertices = this.polygon.getPaths().getArray()[0];
      let paths = Array<LatLngLiteral>();
      vertices.getArray().forEach(function (xy, i) {
        console.log("inside vertices : "+ xy.lat()+","+xy.lng()) 
        //pathsToString= pathsToString+xy.lat()+","+xy.lng()+",";
        pathsToArrayString.push(xy.lat())
        pathsToArrayString.push(xy.lng())
        paths.push({lat:xy.lat(), lng:xy.lng()})
      });
      pathsToString=pathsToArrayString.toString()
      console.log('pathsToString : '+pathsToString)
      console.log('pathsToArrayString : '+pathsToArrayString)
      console.log('pathsToArrayString.toString() : '+pathsToArrayString.toString())
      // Rebuild paths
      pathsRebuild = pathsToString.split(",")
      console.log("pathsRebuild : "+pathsRebuild)
      let testPaths:Array<LatLngLiteral>= []; // rebuild from array of string
      for(var i=0; i<=pathsRebuild.length-2; i=i+2){
        //let j=i+1;
        testPaths.push({lat:Number(pathsRebuild[i]), lng:Number(pathsRebuild[i+1])})
      }
      console.log("testPaths.toString() : ")
      testPaths.forEach((y:LatLngLiteral)=>{        
        console.log('lat : '+y.lat + ' lng : '+y.lng)
      })
      
      //
      /* paths.forEach((y:LatLngLiteral)=>{
        console.log('From getpaths :')
        console.log('lat : '+y.lat + ' lng : '+y.lng)
      })
      console.log('Paths has got : ')
      paths.forEach((x:LatLngLiteral)=>{
        console.log('voici : ')
        console.log('lat : '+x.lat + ' lng : '+x.lng)
      }) */
      
      this.paths=paths;
      console.log("This is paths of polyon after polygon was moved : ") 
      this.paths.forEach((x:LatLngLiteral, i:number)=>{
        console.log('voici : '+ i++)
        console.log('lat : '+x.lat + ' lng : '+x.lng)
      })
      // for test
      var bounds = this.getBoundPolygon();
      //*/
      return paths;
    }
    return [];
  }

  addPolygonChangeEvent(polygon) {
    var me = polygon,
      isBeingDragged = false,
      triggerCoordinatesChanged = function () {
        // Broadcast normalized event
        google.maps.event.trigger(me, 'coordinates_changed');
      };

    // If  the overlay is being dragged, set_at gets called repeatedly,
    // so either we can debounce that or igore while dragging,
    // ignoring is more efficient
    google.maps.event.addListener(me, 'dragstart', function () {
      isBeingDragged = true;
    });

    // If the overlay is dragged
    google.maps.event.addListener(me, 'dragend', function () {
      triggerCoordinatesChanged();
      isBeingDragged = false;
    });

    // Or vertices are added to any of the possible paths, or deleted
    var paths = me.getPaths();
    /* paths.forEach((latLng:LatLng)=>{
      console.log('latLng.lat before : ' +latLng.lat())
      console.log('latLng.lng before : ' +latLng.lng())
    }) */
    paths.forEach(function (path, i) {      
      google.maps.event.addListener(path, "insert_at", function () {
        triggerCoordinatesChanged();
      });
      google.maps.event.addListener(path, "set_at", function () {
        if (!isBeingDragged) {
          triggerCoordinatesChanged();
        }
      });
      google.maps.event.addListener(path, "remove_at", function () {
        triggerCoordinatesChanged();
      });
    });
    /* paths = me.getPaths();
    paths.forEach((latLng:LatLng)=>{
      console.log('latLng.lat after : ' +latLng.lat())
      console.log('latLng.lng after : ' +latLng.lng())
    }) */
    console.log('this.polygon.getPath() : '+this.polygon.getPath().length)
    let path:Array<LatLng>=this.polygon.getPath()
    path.forEach((latLng:LatLng)=>{
      console.log('latLng.lat: ' +latLng.lat())
      console.log('latLng.lng: ' +latLng.lng())
    })
  };
//*  add the marker and circle for test
  clickedMarker(label: string, index: number) {
    console.log(`clicked the marker: ${label || index}`)
  }
  
  mapClicked($event: MouseEvent) {
    this.markers.push({
      lat: $event.coords.lat,
      lng: $event.coords.lng,
      draggable: true
    });
  }
  
  markerDragEnd(m: marker, $event: MouseEvent) {
    console.log('dragEnd', m, $event);
  }
  
  markers: marker[] = [
	  {
		  lat: 51.673858,
		  lng: 7.815982,
		  label: '#01',
		  draggable: true
	  },
	  {
		  lat: 51.373858,
		  lng: 7.215982,
		  label: '#02',
		  draggable: true
	  },
	  {
		  lat: 51.723858,
		  lng: 7.895982,
		  label: '#03',
		  draggable: true
	  }
  ]
  // end of add the marker and circle for test */
}

// just an interface for type safety.
interface marker {
	lat: number;
	lng: number;
	label?: string;
	draggable: boolean;
}
