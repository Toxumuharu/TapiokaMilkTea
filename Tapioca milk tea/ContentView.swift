import SwiftUI

struct ContentView : View {
    
    @State var showDetails = false
    
    var body: some View {
        VStack{
            Button(action:{
                self.showDetails.toggle()
            }){
                Text("show details")
            }
            if showDetails{
                Text("details on the Web!")
                    .font(.largeTitle)
                    .lineLimit(nil)
            }
        }
        
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
