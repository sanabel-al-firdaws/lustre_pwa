import gleam/int
import lustre
import lustre/element
import lustre/element/html
import lustre/event

pub fn main() {
  let app = lustre.simple(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}

pub type Model =
  Int

fn init(_flags) -> Model {
  0
}

pub type Msg {
  Increment
  Decrement
}

pub fn update(model: Model, msg: Msg) -> Model {
  case msg {
    Increment -> model + 1
    Decrement -> model - 1
  }
}

pub fn view(model: Model) -> element.Element(Msg) {
  let count = int.to_string(model)

  html.div([], [
    html.button([event.on_click(Increment)], [element.text("+")]),
    element.text(count),
    html.button([event.on_click(Decrement)], [element.text("-")]),
  ])
}
