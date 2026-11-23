import Foundation
let ball = OvalShape(width: 40, height: 40)

var barriers: [Shape] = []

let funnelPoints = [
    Point(x: 0, y: 50),
    Point(x: 80, y: 50),
    Point(x: 60, y: 0),
    Point(x: 20, y: 0)
]

let funnel = PolygonShape(points: funnelPoints)

var targets: [Shape] = []


fileprivate func setupBall() {
    ball.position = Point(x: 250, y: 400)
    scene.add(ball)
    ball.hasPhysics = true
    ball.fillColor = .blue
    ball.onCollision = ballCollided(with:)
    ball.isDraggable = false
    scene.trackShape(ball)
    ball.onExitedScene = ballExitedScene
    ball.onTapped = resetGame
    ball.bounciness = 0.6
}


fileprivate func addBarrier(at position:
   Point, width: Double, height: Double,
   angle: Double) {
    let barrierPoints = [
        Point(x: 0, y: 0),
        Point(x: 0, y: height),
        Point(x: width, y: height),
        Point(x: width, y: 0)
    ]
    let barrier = PolygonShape(points:
       barrierPoints)
    barriers.append(barrier)

    barrier.hasPhysics = true
    scene.add(barrier)
    barrier.isImmobile = true
    barrier.fillColor = .cyan
    barrier.position = position
    barrier.angle = angle
}


fileprivate func setupFunnel() {
    funnel.position = Point(x: 200,
        y: scene.height - 25)
    scene.add(funnel)
    funnel.onTapped = dropBall
    funnel.fillColor = .lightGray
    funnel.isDraggable = false
}


func addTarget(at position: Point) {
    let targetPoints = [
        Point(x: 10, y: 0),
        Point(x: 0, y: 10),
        Point(x: 10, y: 20),
        Point(x: 20, y: 10)
    ]

    let target = PolygonShape(points:
       targetPoints)

    targets.append(target)
    target.position = position
    target.hasPhysics = true
    target.isImmobile = true
    target.isImpermeable = false
    target.fillColor = .yellow
    scene.add(target)
    target.name = "target"
    target.isDraggable = false
}


func setup() {
    // Add a ball to the scene.
    setupBall()
    
    // Adds barriers to the scene.
    addBarrier(at: Point(x: 200, y: 150), width: 80, height: 25, angle: 0.4)
    addBarrier(at: Point(x: 80, y: 300), width: 100, height: 30, angle: -0.7)
    addBarrier(at: Point(x: 310, y: 494), width: 40, height: 15, angle: 0.3)
    
    // Add a funnel to the scene.
    setupFunnel()
    
    // Adds targets to the scene.
    addTarget(at: Point(x: 104, y: 548))
    addTarget(at: Point(x: 101, y: 115))
    addTarget(at: Point(x: 237, y: 200))
    addTarget(at: Point(x: 15, y: 400))
    
    // Reset game
    resetGame()
}


// Drops the ball by moving it to the funnel's position
func dropBall() {
    ball.position = funnel.position
    ball.stopAllMotion()

    for barrier in barriers {
        barrier.isDraggable = false
    }
    
    for target in targets {
        target.fillColor = .yellow
    }
}


// Handles collisions between the ball and the targets.
func ballCollided(with otherShape: Shape) {
    if otherShape.name != "target" { return }

    otherShape.fillColor = .green
}


// Creates an empty function so nothing happens after dialogue is dismissed
func alertDismissed() {
}


func ballExitedScene() {
    for barrier in barriers {
        barrier.isDraggable = true
    }
    var hitTargets = 0
    for target in targets {
        if target.fillColor == .green {
            hitTargets += 1
        }
    }
    if hitTargets == targets.count {
        scene.presentAlert(text: "You won!",
                           completion: alertDismissed)
    }
}


// Resets the game by moving the ball below the scene,
// which will unlock the barriers.
func resetGame() {
    ball.position = Point(x: 0, y: -80)
}
